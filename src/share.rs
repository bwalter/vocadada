//! Compact text code for sharing a project via messengers.
//!
//! Payload: one format byte, then the project as lines (`name`, `lang1`, `lang2`, then
//! `word1\tword2` or `word1\tword2\texample` per entry; line breaks in examples become `\r`), either raw or
//! raw-deflated, whichever is shorter. Encoded as URL-safe base64 without padding.

use base64::{engine::general_purpose::URL_SAFE_NO_PAD, Engine as _};

use crate::i18n::tr;
use crate::model::{Entry, Project};

const RAW: u8 = 0;
const DEFLATE: u8 = 1;
const MAX_SIZE: usize = 1 << 20;

fn clean(text: &str) -> String {
    text.trim().replace(['\n', '\r', '\t'], " ")
}

pub fn encode(project: &Project) -> String {
    let mut text = [&project.name, &project.lang1, &project.lang2].map(|s| clean(s)).join("\n");
    for entry in project.entries.iter().filter(|e| !e.is_blank()) {
        text.push('\n');
        text.push_str(&clean(&entry.word1));
        text.push('\t');
        text.push_str(&clean(&entry.word2));
        let example = entry.example.trim().replace("\r\n", "\n").replace(['\r', '\t'], " ").replace('\n', "\r");
        if !example.is_empty() {
            text.push('\t');
            text.push_str(&example);
        }
    }
    let raw = text.into_bytes();
    let deflated = miniz_oxide::deflate::compress_to_vec(&raw, 10);
    let (format, body) = if deflated.len() < raw.len() { (DEFLATE, deflated) } else { (RAW, raw) };
    let mut payload = vec![format];
    payload.extend(body);
    URL_SAFE_NO_PAD.encode(payload)
}

pub fn decode(code: &str) -> Result<Project, String> {
    let invalid = || tr!("import-invalid");
    // Messengers may wrap lines or add spaces; also accept the standard base64 alphabet.
    let code: String = code
        .chars()
        .filter_map(|c| match c {
            '+' => Some('-'),
            '/' => Some('_'),
            c if c.is_ascii_alphanumeric() || c == '-' || c == '_' => Some(c),
            _ => None,
        })
        .collect();
    let payload = URL_SAFE_NO_PAD.decode(code).map_err(|_| invalid())?;
    let (&format, body) = payload.split_first().ok_or_else(invalid)?;
    let raw = match format {
        RAW => body.to_vec(),
        DEFLATE => miniz_oxide::inflate::decompress_to_vec_with_limit(body, MAX_SIZE).map_err(|_| invalid())?,
        _ => return Err(invalid()),
    };
    let text = String::from_utf8(raw).map_err(|_| invalid())?;
    let mut lines = text.split('\n');
    let (Some(name), Some(lang1), Some(lang2)) = (lines.next(), lines.next(), lines.next()) else {
        return Err(invalid());
    };
    let entries = lines
        .map(|line| {
            let mut fields = line.splitn(3, '\t');
            let (Some(word1), Some(word2)) = (fields.next(), fields.next()) else {
                return Err(invalid());
            };
            let example = fields.next().unwrap_or_default().replace('\r', "\n");
            Ok(Entry { word1: word1.to_string(), word2: word2.to_string(), example })
        })
        .collect::<Result<_, String>>()?;
    Ok(Project { name: name.to_string(), lang1: lang1.to_string(), lang2: lang2.to_string(), entries })
}

/// Reads the text of a QR code in an RGBA picture (`w` x `h` pixels), if there is one.
pub fn read_qr(rgba: &[u8], w: usize, h: usize) -> Option<String> {
    let grey: Vec<u8> = rgba
        .chunks_exact(4)
        .map(|p| {
            let luma = (p[0] as u32 * 77 + p[1] as u32 * 150 + p[2] as u32 * 29) >> 8;
            // Transparent parts count as white background.
            ((luma * p[3] as u32 + 255 * (255 - p[3] as u32)) / 255) as u8
        })
        .collect();
    let mut image = rqrr::PreparedImage::prepare_from_greyscale(w, h, |x, y| grey[y * w + x]);
    image.detect_grids().into_iter().find_map(|grid| grid.decode().ok().map(|(_, text)| text))
}

#[cfg(test)]
mod tests {
    use super::*;

    fn project(n: usize) -> Project {
        Project {
            name: "Tiere".into(),
            lang1: "Deutsch".into(),
            lang2: "Français".into(),
            entries: (0..n)
                .map(|i| Entry {
                    word1: format!("Hund {i}"),
                    word2: format!("le chien {i}"),
                    example: if i % 2 == 0 { format!("Le chien {i} aboie.\nIl a faim.") } else { String::new() },
                })
                .collect(),
        }
    }

    #[test]
    fn round_trip() {
        for n in [0, 1, 50] {
            let original = project(n);
            let code = encode(&original);
            let decoded = decode(&code).unwrap();
            assert_eq!(decoded.name, original.name);
            assert_eq!(decoded.lang1, original.lang1);
            assert_eq!(decoded.lang2, original.lang2);
            assert_eq!(decoded.entries.len(), n);
            for (a, b) in decoded.entries.iter().zip(&original.entries) {
                assert_eq!((&a.word1, &a.word2, &a.example), (&b.word1, &b.word2, &b.example));
            }
        }
    }

    #[test]
    fn tolerates_messenger_formatting() {
        let code = encode(&project(20));
        let (a, b) = code.split_at(code.len() / 2);
        assert_eq!(decode(&format!("  {a}\n{b} ")).unwrap().entries.len(), 20);
    }

    #[test]
    fn survives_qr_picture() {
        let code = encode(&project(30));
        let image = crate::theme::qr_image(&code).unwrap();
        let rgba: Vec<u8> = image.pixels.iter().flat_map(|c| c.to_array()).collect();
        let scanned = read_qr(&rgba, image.width(), image.height()).unwrap();
        assert_eq!(decode(&scanned).unwrap().entries.len(), 30);
    }

    #[test]
    fn rejects_garbage() {
        assert!(decode("").is_err());
        assert!(decode("hello world").is_err());
    }
}
