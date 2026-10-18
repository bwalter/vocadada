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
#[cfg(target_arch = "wasm32")]
const WEB_FONTS: &[&str] = &["fonts/DejaVuSans.ttf"];

#[cfg(not(target_arch = "wasm32"))]
pub fn install(ctx: &Context) {
    let fonts = SYSTEM_FONTS
        .iter()
        .filter_map(|path| std::fs::read(path).ok().map(|bytes| (path.to_string(), bytes)))
        .collect();
    set(ctx, fonts);
}

#[cfg(target_arch = "wasm32")]
pub fn install(ctx: &Context) {
    let ctx = ctx.clone();
    wasm_bindgen_futures::spawn_local(async move {
        let mut fonts = Vec::new();
        for url in WEB_FONTS {
            if let Some(bytes) = fetch(url).await {
                fonts.push((url.to_string(), bytes));
            }
        }
        set(&ctx, fonts);
        ctx.request_repaint();
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
fn set(ctx: &Context, fonts: Vec<(String, Vec<u8>)>) {
    if fonts.is_empty() {
        return;
    }
    let mut definitions = FontDefinitions::default();
    for (name, bytes) in fonts {
        definitions.font_data.insert(name.clone(), Arc::new(FontData::from_owned(bytes)));
        for family in [FontFamily::Proportional, FontFamily::Monospace] {
            definitions.families.entry(family).or_default().push(name.clone());
        }
    }
    ctx.set_fonts(definitions);
}
