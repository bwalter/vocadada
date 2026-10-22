## Side panel

app-tagline = Wörter lerna, aber mit Gaudi!
language = Sprach
my-projects = 📚 Meine Projekte
no-projects = No koane Projekte.
word-count =
    { $count ->
        [one] { $count } Wort
       *[other] { $count } Wörter
    }
new-project = ➕ Neis Projekt
new-project-name-label = Wia soi des neie Projekt hoaßn?
new-project-name-hint = z. B. Viecherl
create = ✔ Oleng
cancel = Lass guad sei
rename = ✏ Umtaufa
delete = 🗑 Wegdoa

## Delete dialog

delete-title = Des Projekt wegdoa?
delete-body = „{ $name }“ und olle seine Wörter san dann fia oiwei weg.
delete-confirm = 🗑 Jo, weg damit
delete-keep = Na, des bleibt

## Share and import

share = 📤 Teiln
import = 📥 Reiholn
share-title = „{ $name }“ teiln
share-body = Kopier's ois Text oder ois QR-Buidl und schick's, z. B. mit WhatsApp oder Signal. Da andere fügt an Text ei oder scannt an QR-Code unter 📥 Reiholn.
qr-too-big = Des Projekt is z'groß fia an QR-Code. Nimm an Code drunt.
scan-qr = 📷 QR-Code scanna
scan-stop = ✖ Kamera aus
camera-error = De Kamera mog ned ogeh. Bittschön erlaub an Kamerazugriff.
copy-text = 📋 Ois Text kopiern
copy-qr = 📋 Ois QR-Buidl kopiern
copied = ✔ Kopiert!
close = Zuamacha
import-title = A Projekt reiholn
import-body = Füg an Code ei, den'st kriagt host:
import-hint = Code do eifüng
paste = 📋 Eifüng
paste-text-or-qr = 📋 Text oder QR-Buidl eifüng
paste-empty = Do gibt's nix zum Eifüng.
qr-not-found = Im kopiertn Buidl is koa QR-Code.
import-preview =
    { $count ->
        [one] „{ $name }“ mit { $count } Wort
       *[other] „{ $name }“ mit { $count } Wörter
    }
import-invalid = Der Code schaugt ned recht aus. Host'n ganz kopiert?

## Welcome screen

welcome-title = Servus bei Vocadada!
welcome-body = Leg dei erschts Projekt o, dann geht's los mit'm Wörterlerna.

## Mode tabs

tab-edit = ✏ Bearbatn
tab-view = 👀 Oschaun
tab-test = 🎯 Testn

## Edit mode

languages = 🌍 Sprachn
language-1-hint = z. B. Englisch
language-2-hint = z. B. Französisch
default-language-1 = Sprach 1
default-language-2 = Sprach 2
add-word-title = ➕ A neis Wort dazua
add = Dazua
add-word-tip = Tipp: Mit Enter kimmst ins nächste Feld.
add-word-tip-desktop = Tipp: Mit Enter kimmst ins nächste Feld, mit Umschalt+Enter gibt's a neie Zeil im Beispui.
no-words-edit = No koane Wörter! Schreib drunt dei erschts Wort nei.
remove-word = Des Wort wegdoa
example = 💬 Beispui
example-hint = Beispui (wennst magst)

## View mode

no-words-view = No koane Wörter zum Oschaun. Schreib a paar unter ✏ Bearbatn nei!
shuffle = 🔀 Durchanandmischn
original-order = ↩ Wia vorher
hide = 🙈 Versteckn
tap-to-peek = ❓ Drucka zum Spitzln
show-example = Beispui zoang

## Test mode

no-words-test = No koane Wörter zum Testn. Schreib zerscht a paar unter ✏ Bearbatn nei!
test-direction-question = In wos für a Richtung mogst üben?
words-waiting =
    { $count ->
        [one] Oa Wort wart auf di!
       *[other] { $count } Wörter wartn auf di!
    }
check-answer = Antwort oschaun
the-answer-is = De Antwort is
answer-knew = ✔ Hob i gwusst
answer-did-not-know = ✖ Hob i ned gwusst
finish = 🏁 Feierabend
good-answers = Richtige Antwortn
mistakes-label = Fehler

## Test results

result-perfect = PFUNDIG! Du bist a Superstar!
result-all-known = Juchhe! Du host olle Wörter glernt!
result-good = Sauber! Mach weida so!
result-start = Guad ogfangt! Übung macht'n Meister!
known-of-total = { $known } vo { $total }
first-try = Glei beim erschtn Moi richtig: { $count } vo { $total }
mistakes-count =
    { $count ->
        [0] Gor koa Fehler!
        [one] 1 Fehler
       *[other] { $count } Fehler
    }
words-to-practise = Wörter zum nomoi Üben
play-again = 🔁 Nomoi
practise-hard-words = 💪 De schwaarn Wörter üben
back = ⬅ Zruck

## Messages

ok = Passt
error-save = Speichern hod ned highaut: { $error }
error-read = { $path } konn ned glesn wern: { $error }
error-broken-file = De gspeichertn Projekte kenna ned glesn wern ({ $error }). A Kopie liegt in { $path }
error-no-data-folder = Koa Datenordner gfundn
error-storage-unavailable = Da Browserspeicher geht ned
error-broken-storage = De gspeichertn Projekte kenna ned glesn wern ({ $error }). A Kopie liegt im Browserspeicher.
error-storage-full = Da Browserspeicher is voi oder gsperrt
