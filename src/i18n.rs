use i18n_embed::fluent::{fluent_language_loader, FluentLanguageLoader};
use i18n_embed::unic_langid::LanguageIdentifier;
use i18n_embed::LanguageLoader;
use rust_embed::RustEmbed;
use std::sync::LazyLock;

#[derive(RustEmbed)]
#[folder = "i18n/generated/"]
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

/// Translated message (texts are in `i18n/vocadada.ftl`). The id and argument names are checked at compile time.
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
    Bavarian,
    French,
    Spanish,
    Portuguese,
    Italian,
    Dutch,
    Danish,
    Norwegian,
    Swedish,
    Finnish,
    Icelandic,
    Polish,
    Czech,
    Slovak,
    Hungarian,
    Croatian,
    Romanian,
    Albanian,
    Greek,
    Russian,
    Ukrainian,
    Latin,
    AncientGreek,
}

impl Language {
    pub const ALL: [Self; 25] = [
        Self::English,
        Self::German,
        Self::Bavarian,
        Self::French,
        Self::Spanish,
        Self::Portuguese,
        Self::Italian,
        Self::Dutch,
        Self::Danish,
        Self::Norwegian,
        Self::Swedish,
        Self::Finnish,
        Self::Icelandic,
        Self::Polish,
        Self::Czech,
        Self::Slovak,
        Self::Hungarian,
        Self::Croatian,
        Self::Romanian,
        Self::Albanian,
        Self::Greek,
        Self::Russian,
        Self::Ukrainian,
        Self::Latin,
        Self::AncientGreek,
    ];

    pub fn code(self) -> &'static str {
        match self {
            Self::English => "en",
            Self::German => "de",
            Self::Bavarian => "bar",
            Self::French => "fr",
            Self::Spanish => "es",
            Self::Portuguese => "pt",
            Self::Italian => "it",
            Self::Dutch => "nl",
            Self::Danish => "da",
            Self::Norwegian => "nb",
            Self::Swedish => "sv",
            Self::Finnish => "fi",
            Self::Icelandic => "is",
            Self::Polish => "pl",
            Self::Czech => "cs",
            Self::Slovak => "sk",
            Self::Hungarian => "hu",
            Self::Croatian => "hr",
            Self::Romanian => "ro",
            Self::Albanian => "sq",
            Self::Greek => "el",
            Self::Russian => "ru",
            Self::Ukrainian => "uk",
            Self::Latin => "la",
            Self::AncientGreek => "grc",
        }
    }

    /// The name in the language itself, so everyone can find their own.
    pub fn native_name(self) -> &'static str {
        match self {
            Self::English => "English",
            Self::German => "Deutsch",
            Self::Bavarian => "Boarisch",
            Self::French => "Français",
            Self::Spanish => "Español",
            Self::Portuguese => "Português",
            Self::Italian => "Italiano",
            Self::Dutch => "Nederlands",
            Self::Danish => "Dansk",
            Self::Norwegian => "Norsk",
            Self::Swedish => "Svenska",
            Self::Finnish => "Suomi",
            Self::Icelandic => "Íslenska",
            Self::Polish => "Polski",
            Self::Czech => "Čeština",
            Self::Slovak => "Slovenčina",
            Self::Hungarian => "Magyar",
            Self::Croatian => "Hrvatski",
            Self::Romanian => "Română",
            Self::Albanian => "Shqip",
            Self::Greek => "Ελληνικά",
            Self::Russian => "Русский",
            Self::Ukrainian => "Українська",
            Self::Latin => "Latina",
            Self::AncientGreek => "Ἑλληνικὴ ἀρχαία",
        }
    }

    pub fn from_code(code: &str) -> Option<Self> {
        // Systems report Norwegian as "no", "nb" or "nn"; there is one (Bokmål) translation.
        let code = if matches!(code, "no" | "nn") { "nb" } else { code };
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
        set(Language::Latin);
        assert_eq!(tr!("word-count", count = 1), "1 verbum");
        assert_eq!(tr!("word-count", count = 2), "2 verba");
        set(Language::Icelandic);
        assert_eq!(tr!("mistakes-count", count = 21), "21 villa");
        assert_eq!(tr!("mistakes-count", count = 11), "11 villur");
        set(Language::Bavarian);
        assert_eq!(tr!("word-count", count = 3), "3 Wörter");
        set(Language::Spanish);
        assert_eq!(tr!("word-count", count = 1), "1 palabra");
        set(Language::Russian);
        assert_eq!(tr!("word-count", count = 21), "21 слово");
        assert_eq!(tr!("word-count", count = 3), "3 слова");
        assert_eq!(tr!("word-count", count = 5), "5 слов");
        set(Language::Czech);
        assert_eq!(tr!("mistakes-count", count = 4), "4 chyby");
        assert_eq!(tr!("mistakes-count", count = 5), "5 chyb");
        set(Language::Polish);
        assert_eq!(tr!("word-count", count = 22), "22 słowa");
        assert_eq!(tr!("word-count", count = 12), "12 słów");
        set(Language::Romanian);
        assert_eq!(tr!("word-count", count = 3), "3 cuvinte");
        assert_eq!(tr!("word-count", count = 20), "20 de cuvinte");
        set(Language::AncientGreek);
        assert_eq!(tr!("word-count", count = 2), "2 λέξεις");
        set(Language::English);
        assert_eq!(tr!("delete-body", name = "Zoo"), "\"Zoo\" and all its words will be gone forever.");
    }
}
