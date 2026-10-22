//! Fallback fonts for characters missing from egui's built-in fonts (e.g. IPA, Chinese, symbols).

use eframe::egui::{Context, FontData, FontDefinitions, FontFamily};
use std::sync::Arc;

#[cfg(not(target_arch = "wasm32"))]
const SYSTEM_FONTS: &[&str] = &[
    // macOS
    "/System/Library/Fonts/Supplemental/Arial Unicode.ttf",
    "/System/Library/Fonts/Apple Symbols.ttf",
    // Windows
    "C:\\Windows\\Fonts\\segoeui.ttf",
    "C:\\Windows\\Fonts\\seguisym.ttf",
    "C:\\Windows\\Fonts\\msyh.ttc",
    "C:\\Windows\\Fonts\\YuGothR.ttc",
    "C:\\Windows\\Fonts\\malgun.ttf",
    // Linux
    "/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf",
    "/usr/share/fonts/opentype/noto/NotoSansCJK-Regular.ttc",
    "/usr/share/fonts/noto-cjk/NotoSansCJK-Regular.ttc",
];

/// Served next to index.html (copied from web/fonts) and loaded after startup to keep the first load fast.
/// The `-ui` fonts only have the characters of the app's own Chinese, Japanese and Korean texts
/// (see make-ui-fonts.sh).
#[cfg(target_arch = "wasm32")]
const WEB_FONTS: &[&str] = &[
    "fonts/DejaVuSans.ttf",
    "fonts/NotoSansSC-ui.otf",
    "fonts/NotoSansJP-ui.otf",
    "fonts/NotoSansKR-ui.otf",
];

/// Full fonts (several MB each), downloaded from a public CDN only when some words need them.
#[cfg(target_arch = "wasm32")]
const CHINESE: &str = "https://cdn.jsdelivr.net/gh/notofonts/noto-cjk@Sans2.004/Sans/SubsetOTF/SC/NotoSansSC-Regular.otf";
#[cfg(target_arch = "wasm32")]
const JAPANESE: &str = "https://cdn.jsdelivr.net/gh/notofonts/noto-cjk@Sans2.004/Sans/SubsetOTF/JP/NotoSansJP-Regular.otf";
#[cfg(target_arch = "wasm32")]
const KOREAN: &str = "https://cdn.jsdelivr.net/gh/notofonts/noto-cjk@Sans2.004/Sans/SubsetOTF/KR/NotoSansKR-Regular.otf";

/// The full font a text needs, if any. Chinese characters alone could be Chinese or Japanese; kana mean
/// Japanese and Hangul means Korean (those fonts also have the Chinese characters used in these languages).
#[cfg(target_arch = "wasm32")]
fn font_for(text: &str) -> Option<&'static str> {
    let has = |range: &[std::ops::RangeInclusive<u32>]| text.chars().any(|c| range.iter().any(|r| r.contains(&(c as u32))));
    if has(&[0x1100..=0x11FF, 0x3130..=0x318F, 0xAC00..=0xD7AF]) {
        Some(KOREAN)
    } else if has(&[0x3040..=0x30FF, 0x31F0..=0x31FF, 0xFF66..=0xFF9F]) {
        Some(JAPANESE)
    } else if has(&[0x3400..=0x4DBF, 0x4E00..=0x9FFF, 0xF900..=0xFAFF, 0x20000..=0x2FFFF]) {
        Some(if crate::i18n::current() == crate::i18n::Language::Japanese { JAPANESE } else { CHINESE })
    } else {
        None
    }
}

#[cfg(not(target_arch = "wasm32"))]
pub fn install(ctx: &Context) {
    let fonts = SYSTEM_FONTS
        .iter()
        .filter_map(|path| std::fs::read(path).ok().map(|bytes| (path.to_string(), Arc::new(FontData::from_owned(bytes)))))
        .collect();
    set(ctx, fonts);
}

/// The system fonts already cover all scripts.
#[cfg(not(target_arch = "wasm32"))]
pub fn ensure_for<'a>(_ctx: &Context, _texts: impl IntoIterator<Item = &'a str>) {}

#[cfg(target_arch = "wasm32")]
thread_local! {
    static LOADED: std::cell::RefCell<Vec<(String, Arc<FontData>)>> = Default::default();
    static REQUESTED: std::cell::RefCell<Vec<&'static str>> = Default::default();
}

#[cfg(target_arch = "wasm32")]
pub fn install(ctx: &Context) {
    for url in WEB_FONTS {
        load(ctx, url);
    }
}

/// Starts downloading the fonts that `texts` need but that aren't there yet.
#[cfg(target_arch = "wasm32")]
pub fn ensure_for<'a>(ctx: &Context, texts: impl IntoIterator<Item = &'a str>) {
    let mut needed: Vec<&'static str> = Vec::new();
    for url in texts.into_iter().filter_map(font_for) {
        if !needed.contains(&url) && !REQUESTED.with_borrow(|r| r.contains(&url)) {
            needed.push(url);
        }
    }
    for url in needed {
        load(ctx, url);
    }
}

#[cfg(target_arch = "wasm32")]
fn load(ctx: &Context, url: &'static str) {
    REQUESTED.with_borrow_mut(|r| r.push(url));
    let ctx = ctx.clone();
    wasm_bindgen_futures::spawn_local(async move {
        if let Some(bytes) = fetch(url).await {
            let data = Arc::new(FontData::from_owned(bytes));
            LOADED.with_borrow_mut(|fonts| fonts.push((url.to_string(), data)));
            // Downloads finish in any order; keep the order they were requested in.
            let fonts = LOADED.with_borrow(|fonts| {
                let order = REQUESTED.with_borrow(|r| r.clone());
                let mut fonts = fonts.clone();
                fonts.sort_by_key(|(name, _)| order.iter().position(|u| u == name));
                fonts
            });
            set(&ctx, fonts);
            ctx.request_repaint();
        }
    });
}

#[cfg(target_arch = "wasm32")]
async fn fetch(url: &str) -> Option<Vec<u8>> {
    use eframe::wasm_bindgen::JsCast as _;
    use wasm_bindgen_futures::JsFuture;

    let window = web_sys::window()?;
    let response: web_sys::Response = JsFuture::from(window.fetch_with_str(url)).await.ok()?.dyn_into().ok()?;
    if !response.ok() {
        return None;
    }
    let buffer = JsFuture::from(response.array_buffer().ok()?).await.ok()?;
    Some(js_sys::Uint8Array::new(&buffer).to_vec())
}

/// Adds `fonts` after egui's default fonts, so they are only used for characters those lack.
fn set(ctx: &Context, fonts: Vec<(String, Arc<FontData>)>) {
    if fonts.is_empty() {
        return;
    }
    let mut definitions = FontDefinitions::default();
    for (name, data) in fonts {
        definitions.font_data.insert(name.clone(), data);
        for family in [FontFamily::Proportional, FontFamily::Monospace] {
            definitions.families.entry(family).or_default().push(name.clone());
        }
    }
    ctx.set_fonts(definitions);
}
