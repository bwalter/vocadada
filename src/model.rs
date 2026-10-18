use crate::i18n::tr;
use serde::{Deserialize, Serialize};
#[cfg(not(target_arch = "wasm32"))]
use std::{fs, io::ErrorKind, path::PathBuf};

#[derive(Clone, Default, Serialize, Deserialize)]
pub struct Entry {
    pub word1: String,
    pub word2: String,
    /// Optional example sentence; not asked in the test, only shown with the answer.
    #[serde(default, skip_serializing_if = "String::is_empty")]
    pub example: String,
}

impl Entry {
    pub fn is_complete(&self) -> bool {
        !self.word1.trim().is_empty() && !self.word2.trim().is_empty()
    }

    pub fn is_blank(&self) -> bool {
        self.word1.trim().is_empty() && self.word2.trim().is_empty()
    }
}

#[derive(Clone, Serialize, Deserialize)]
pub struct Project {
    pub name: String,
    pub lang1: String,
    pub lang2: String,
    #[serde(default)]
    pub entries: Vec<Entry>,
}

impl Project {
    pub fn new(name: String) -> Self {
        Self {
            name,
            lang1: tr!("default-language-1"),
            lang2: tr!("default-language-2"),
            entries: Vec::new(),
        }
    }
}

#[derive(Default, Serialize, Deserialize)]
pub struct Library {
    pub projects: Vec<Project>,
    /// UI language code chosen by the user; `None` follows the system language.
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub language: Option<String>,
}

#[cfg(not(target_arch = "wasm32"))]
impl Library {
    fn path() -> Option<PathBuf> {
        dirs::data_dir().map(|d| d.join("vocadada").join("projects.json"))
    }

    pub fn load() -> Result<Self, String> {
        let Some(path) = Self::path() else {
            return Ok(Self::default());
        };
        let text = match fs::read_to_string(&path) {
            Ok(text) => text,
            Err(e) if e.kind() == ErrorKind::NotFound => return Ok(Self::default()),
            Err(e) => {
                return Err(tr!("error-read", path = path.display().to_string(), error = e.to_string()))
            }
        };
        serde_json::from_str(&text).map_err(|e| {
            // Keep the unreadable file so the next save doesn't overwrite the user's data.
            let backup = path.with_extension("broken.json");
            let _ = fs::rename(&path, &backup);
            tr!("error-broken-file", error = e.to_string(), path = backup.display().to_string())
        })
    }

    pub fn save(&self) -> Result<(), String> {
        let path = Self::path().ok_or_else(|| tr!("error-no-data-folder"))?;
        if let Some(dir) = path.parent() {
            fs::create_dir_all(dir).map_err(|e| e.to_string())?;
        }
        let json = serde_json::to_string_pretty(self).map_err(|e| e.to_string())?;
        let tmp = path.with_extension("json.tmp");
        fs::write(&tmp, json).map_err(|e| e.to_string())?;
        fs::rename(&tmp, &path).map_err(|e| e.to_string())
    }
}

#[cfg(target_arch = "wasm32")]
impl Library {
    const KEY: &'static str = "vocadada.projects";
    const BACKUP_KEY: &'static str = "vocadada.projects.broken";

    fn storage() -> Result<web_sys::Storage, String> {
        web_sys::window()
            .and_then(|w| w.local_storage().ok().flatten())
            .ok_or_else(|| tr!("error-storage-unavailable"))
    }

    pub fn load() -> Result<Self, String> {
        let storage = Self::storage()?;
        let Some(text) = storage.get_item(Self::KEY).ok().flatten() else {
            return Ok(Self::default());
        };
        serde_json::from_str(&text).map_err(|e| {
            let _ = storage.set_item(Self::BACKUP_KEY, &text);
            tr!("error-broken-storage", error = e.to_string())
        })
    }

    pub fn save(&self) -> Result<(), String> {
        let json = serde_json::to_string(self).map_err(|e| e.to_string())?;
        Self::storage()?
            .set_item(Self::KEY, &json)
            .map_err(|_| tr!("error-storage-full"))
    }
}
