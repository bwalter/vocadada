## Side panel

app-tagline = Wörter lernen mit Spaß!
language = Sprache
my-projects = 📚 Meine Projekte
no-projects = Noch keine Projekte.
word-count =
    { $count ->
        [one] { $count } Wort
       *[other] { $count } Wörter
    }
new-project = ➕ Neues Projekt
new-project-name-label = Name des neuen Projekts:
new-project-name-hint = z. B. Tiere
create = ✔ Erstellen
cancel = Abbrechen
rename = ✏ Umbenennen
delete = 🗑 Löschen

## Delete dialog

delete-title = Projekt löschen?
delete-body = „{ $name }“ und alle seine Wörter sind dann für immer weg.
delete-confirm = 🗑 Ja, löschen
delete-keep = Nein, behalten

## Share and import

share = 📤 Teilen
import = 📥 Importieren
share-title = „{ $name }“ teilen
share-body = Kopiere das Projekt als Text oder als QR-Bild und schicke es z. B. per WhatsApp oder Signal. Die andere Person fügt den Text ein oder scannt den QR-Code unter 📥 Importieren.
qr-too-big = Dieses Projekt ist zu groß für einen QR-Code. Nimm den Code unten.
scan-qr = 📷 QR-Code scannen
scan-stop = ✖ Kamera aus
camera-error = Die Kamera konnte nicht gestartet werden. Bitte erlaube den Kamerazugriff.
copy-text = 📋 Als Text kopieren
copy-qr = 📋 Als QR-Bild kopieren
copied = ✔ Kopiert!
close = Schließen
import-title = Projekt importieren
import-body = Füge den Code ein, den du bekommen hast:
import-hint = Code hier einfügen
paste = 📋 Einfügen
paste-text-or-qr = 📋 Text oder QR-Bild einfügen
paste-empty = Es gibt nichts zum Einfügen.
qr-not-found = Im kopierten Bild wurde kein QR-Code gefunden.
import-preview =
    { $count ->
        [one] „{ $name }“ mit { $count } Wort
       *[other] „{ $name }“ mit { $count } Wörtern
    }
import-invalid = Dieser Code stimmt nicht. Hast du alles kopiert?

## Welcome screen

welcome-title = Willkommen bei Vocadada!
welcome-body = Erstelle dein erstes Projekt und lerne neue Wörter.

## Mode tabs

tab-edit = ✏ Bearbeiten
tab-view = 👀 Ansehen
tab-test = 🎯 Testen

## Edit mode

languages = 🌍 Sprachen
language-1-hint = z. B. Deutsch
language-2-hint = z. B. Französisch
default-language-1 = Sprache 1
default-language-2 = Sprache 2
add-word-title = ➕ Neues Wort hinzufügen
add = Hinzufügen
add-word-tip = Tipp: Mit Enter springst du ins nächste Feld.
add-word-tip-desktop = Tipp: Mit Enter springst du ins nächste Feld, mit Umschalt+Enter gibt es eine neue Zeile im Beispiel.
no-words-edit = Noch keine Wörter! Füge unten dein erstes Wort hinzu.
remove-word = Dieses Wort entfernen
example = 💬 Beispiel
example-hint = Beispiel (optional)

## View mode

no-words-view = Noch keine Wörter zum Ansehen. Füge im Modus ✏ Bearbeiten welche hinzu!
shuffle = 🔀 Mischen
original-order = ↩ Ursprüngliche Reihenfolge
hide = 🙈 Ausblenden
tap-to-peek = ❓ Aufdecken
show-example = Beispiel zeigen

## Test mode

no-words-test = Noch keine Wörter zum Testen. Füge zuerst im Modus ✏ Bearbeiten welche hinzu!
test-direction-question = In welche Richtung möchtest du üben?
words-waiting =
    { $count ->
        [one] Ein Wort wartet auf dich!
       *[other] { $count } Wörter warten auf dich!
    }
check-answer = Antwort prüfen
the-answer-is = Die Antwort ist
answer-knew = ✔ Gewusst
answer-did-not-know = ✖ Nicht gewusst
finish = 🏁 Beenden
good-answers = Gewusst
mistakes-label = Fehler

## Test results

result-perfect = PERFEKT! Du bist ein Superstar!
result-all-known = Hurra! Du hast alle Wörter gelernt!
result-good = Gut gemacht! Weiter so!
result-start = Guter Anfang! Übung macht den Meister!
known-of-total = { $known } von { $total }
first-try = Beim ersten Versuch richtig: { $count } von { $total }
mistakes-count =
    { $count ->
        [0] Gar keine Fehler!
        [one] 1 Fehler
       *[other] { $count } Fehler
    }
words-to-practise = Diese Wörter noch einmal üben
play-again = 🔁 Nochmal spielen
practise-hard-words = 💪 Schwierige Wörter üben
back = ⬅ Zurück

## Messages

ok = OK
error-save = Speichern fehlgeschlagen: { $error }
error-read = { $path } konnte nicht gelesen werden: { $error }
error-broken-file = Die gespeicherten Projekte konnten nicht gelesen werden ({ $error }). Eine Kopie liegt unter { $path }
error-no-data-folder = Kein Datenordner gefunden
error-storage-unavailable = Der Browserspeicher ist nicht verfügbar
error-broken-storage = Die gespeicherten Projekte konnten nicht gelesen werden ({ $error }). Eine Kopie wurde im Browserspeicher behalten.
error-storage-full = Der Browserspeicher ist voll oder gesperrt
