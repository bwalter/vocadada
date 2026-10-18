use i18n_embed::fluent::{fluent_language_loader, FluentLanguageLoader};
use i18n_embed::unic_langid::LanguageIdentifier;
use i18n_embed::LanguageLoader;
use rust_embed::RustEmbed;
use std::sync::LazyLock;

#[derive(RustEmbed)]
#[folder = "i18n/"]
struct Localizations;

pub static LOADER: LazyLock<FluentLanguageLoader> = LazyLock::new(|| {
    let loader = fluent_language_loader!();
    loader
        .load_fallback_language(&Localizations)
        .expect("English translations are embedded");
    disable_isolation(&loader);
    loader
});

/// egui's fonts can't draw the Unicode isolation marks Fluent puts around arguments.
/// Has to be repeated after each load, as it applies to the currently loaded bundles only.
fn disable_isolation(loader: &FluentLanguageLoader) {
    loader.set_use_isolating(false);
}

/// Translated message. The id and argument names are checked against `i18n/en` at compile time.
macro_rules! tr {
    ($id:literal) => {
        i18n_embed_fl::fl!($crate::i18n::LOADER, $id)
    };
    ($id:literal, $($args:expr),+ $(,)?) => {
        i18n_embed_fl::fl!($crate::i18n::LOADER, $id, $($args),+)
    };
}
pub(crate) use tr;

#[derive(Clone, Copy, PartialEq, Eq, Debug)]
pub enum Language {
    English,
    German,
    French,
}

impl Language {
    pub const ALL: [Self; 3] = [Self::English, Self::German, Self::French];

    pub fn code(self) -> &'static str {
        match self {
            Self::English => "en",
            Self::German => "de",
            Self::French => "fr",
        }
    }

    /// The name in the language itself, so everyone can find their own.
    pub fn native_name(self) -> &'static str {
        match self {
            Self::English => "English",
            Self::German => "Deutsch",
            Self::French => "Français",
        }
    }

    pub fn from_code(code: &str) -> Option<Self> {
        Self::ALL.into_iter().find(|l| l.code() == code)
    }
}

pub fn current() -> Language {
    Language::from_code(LOADER.current_language().language.as_str()).unwrap_or(Language::English)
}

pub fn set(language: Language) {
    let id: LanguageIdentifier = language.code().parse().expect("valid language code");
    // English stays loaded as the fallback for any missing message.
    LOADER
        .load_languages(&Localizations, &[id])
        .expect("translations are embedded");
    disable_isolation(&LOADER);
}

/// Uses the first system/browser language that has a translation, else English.
pub fn set_from_system() {
    #[cfg(not(target_arch = "wasm32"))]
    let requested = i18n_embed::DesktopLanguageRequester::requested_languages();
    #[cfg(target_arch = "wasm32")]
    let requested = i18n_embed::WebLanguageRequester::requested_languages();
    let language = requested
        .iter()
        .find_map(|id| Language::from_code(id.language.as_str()))
        .unwrap_or(Language::English);
    set(language);
}

#[cfg(test)]
mod tests {
    use super::*;
    use fluent_syntax::{ast, parser};
    use std::collections::BTreeSet;

    fn message_ids(code: &str) -> BTreeSet<String> {
        let file = Localizations::get(&format!("{code}/vocadada.ftl")).expect("translation file exists");
        let text = std::str::from_utf8(&file.data).expect("valid UTF-8");
        let resource = parser::parse(text).unwrap_or_else(|(_, errors)| panic!("{code}: {errors:?}"));
        resource
            .body
            .iter()
            .filter_map(|entry| match entry {
                ast::Entry::Message(m) => Some(m.id.name.to_string()),
                _ => None,
            })
            .collect()
    }

    #[test]
    fn every_language_has_exactly_the_english_messages() {
        let english = message_ids("en");
        for language in Language::ALL {
            let ids = message_ids(language.code());
            let missing: Vec<_> = english.difference(&ids).collect();
            let unknown: Vec<_> = ids.difference(&english).collect();
            assert!(
                missing.is_empty() && unknown.is_empty(),
                "{}: missing {missing:?}, unknown {unknown:?}",
                language.code()
            );
        }
    }

    #[test]
    fn plurals_and_arguments() {
        set(Language::German);
        assert_eq!(tr!("mistakes-count", count = 0), "Gar keine Fehler!");
        assert_eq!(tr!("word-count", count = 1), "1 Wort");
        assert_eq!(tr!("word-count", count = 3), "3 Wörter");
        set(Language::English);
        assert_eq!(tr!("delete-body", name = "Zoo"), "\"Zoo\" and all its words will be gone forever.");
    }
}
