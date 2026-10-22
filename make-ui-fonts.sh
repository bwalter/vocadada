#!/bin/sh
# Makes the small Chinese/Japanese/Korean fonts the web app loads at start: only the characters of its own texts.
# The full fonts are only downloaded (from a CDN) when a project contains such words (see src/fonts.rs).
# Run this after changing the zh, ja or ko translations; `cargo test` reports characters that are missing.
# Needs fontTools: python3 -m venv /tmp/fontvenv && /tmp/fontvenv/bin/pip install fonttools
set -e
cd "$(dirname "$0")"
cargo build -q # updates i18n/generated
PYFTSUBSET=${PYFTSUBSET:-/tmp/fontvenv/bin/pyftsubset}
CDN=https://cdn.jsdelivr.net/gh/notofonts/noto-cjk@Sans2.004/Sans/SubsetOTF
subset() { # language, script folder, extra text
    font=NotoSans$2
    [ -f "/tmp/$font-Regular.otf" ] || curl -sSfL -o "/tmp/$font-Regular.otf" "$CDN/$2/$font-Regular.otf"
    printf '%s' "$3" | cat "i18n/generated/$1/vocadada.ftl" - > "/tmp/vocadada-$1.txt"
    "$PYFTSUBSET" "/tmp/$font-Regular.otf" --text-file="/tmp/vocadada-$1.txt" --output-file="web/fonts/$font-ui.otf"
}
subset zh SC "简体中文"
subset ja JP "日本語"
subset ko KR "한국어"
ls -l web/fonts/*-ui.otf
