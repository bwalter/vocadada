## Side panel

app-tagline = Mëso fjalë duke u argëtuar!
language = Gjuha
my-projects = 📚 Projektet e mia
no-projects = Ende nuk ka projekte.
word-count =
    { $count ->
        [one] { $count } fjalë
       *[other] { $count } fjalë
    }
new-project = ➕ Projekt i ri
new-project-name-label = Emri i projektit të ri:
new-project-name-hint = p.sh. Kafshët
create = ✔ Krijo
cancel = Anulo
rename = ✏ Riemërto
delete = 🗑 Fshi

## Delete dialog

delete-title = Ta fshij këtë projekt?
delete-body = „{ $name }“ dhe të gjitha fjalët e tij do të zhduken përgjithmonë.
delete-confirm = 🗑 Po, fshije
delete-keep = Jo, mbaje

## Share and import

share = 📤 Ndaj
import = 📥 Importo
share-title = Ndaj „{ $name }“
share-body = Kopjoje si tekst ose si figurë QR dhe dërgoje, p.sh. me WhatsApp ose Signal. Personi tjetër ngjit tekstin ose skanon kodin QR te 📥 Importo.
qr-too-big = Ky projekt është shumë i madh për një kod QR. Përdor kodin më poshtë.
scan-qr = 📷 Skano kodin QR
scan-stop = ✖ Fik kamerën
camera-error = Kamera nuk u nis dot. Të lutem, lejo qasjen në kamerë.
copy-text = 📋 Kopjo si tekst
copy-qr = 📋 Kopjo si figurë QR
copied = ✔ U kopjua!
close = Mbyll
import-title = Importo një projekt
import-body = Ngjit kodin që more:
import-hint = Ngjit kodin këtu
paste = 📋 Ngjit
paste-text-or-qr = 📋 Ngjit tekst ose figurë QR
paste-empty = Nuk ka asgjë për të ngjitur.
qr-not-found = Në figurën e kopjuar nuk u gjet asnjë kod QR.
import-preview =
    { $count ->
        [one] „{ $name }“ me { $count } fjalë
       *[other] „{ $name }“ me { $count } fjalë
    }
import-invalid = Ky kod nuk duket i saktë. A e kopjove të gjithin?

## Welcome screen

welcome-title = Mirë se erdhe në Vocadada!
welcome-body = Krijo projektin tënd të parë për të filluar të mësosh fjalë.

## Mode tabs

tab-edit = ✏ Ndrysho
tab-view = 👀 Shiko
tab-test = 🎯 Provë

## Edit mode

languages = 🌍 Gjuhët
language-1-hint = p.sh. anglisht
language-2-hint = p.sh. frëngjisht
default-language-1 = Gjuha 1
default-language-2 = Gjuha 2
add-word-title = ➕ Shto një fjalë të re
add = Shto
add-word-tip = Këshillë: shtyp Enter për të kaluar në fushën tjetër.
add-word-tip-desktop = Këshillë: shtyp Enter për të kaluar në fushën tjetër dhe Shift+Enter për një rresht të ri në shembull.
no-words-edit = Ende nuk ka fjalë! Shto fjalën e parë më poshtë.
remove-word = Hiq këtë fjalë
example = 💬 Shembull
example-hint = Shembull (opsional)

## View mode

no-words-view = Ende nuk ka fjalë për të parë. Shto disa te ✏ Ndrysho!
shuffle = 🔀 Përziej
original-order = ↩ Rendi fillestar
hide = 🙈 Fshih
tap-to-peek = ❓ Prek për të parë
show-example = Shfaq shembullin

## Test mode

no-words-test = Ende nuk ka fjalë për provë. Shto fillimisht disa te ✏ Ndrysho!
test-direction-question = Në cilin drejtim do të ushtrohesh?
words-waiting =
    { $count ->
        [one] Një fjalë të pret!
       *[other] { $count } fjalë të presin!
    }
check-answer = Kontrollo përgjigjen
the-answer-is = Përgjigjja është
answer-knew = ✔ E dija
answer-did-not-know = ✖ Nuk e dija
finish = 🏁 Mbaro
good-answers = Përgjigje të sakta
mistakes-label = Gabime

## Test results

result-perfect = PERFEKT! Je një superyll!
result-all-known = Urra! I mësove të gjitha fjalët!
result-good = Të lumtë! Vazhdo kështu!
result-start = Fillim i mirë! Ushtrimi të bën mjeshtër!
known-of-total = { $known } nga { $total }
first-try = Saktë në provën e parë: { $count } nga { $total }
mistakes-count =
    { $count ->
        [0] Asnjë gabim!
        [one] 1 gabim
       *[other] { $count } gabime
    }
words-to-practise = Fjalë për t'u ushtruar përsëri
play-again = 🔁 Luaj përsëri
practise-hard-words = 💪 Ushtro fjalët e vështira
back = ⬅ Kthehu

## Messages

ok = OK
error-save = Ruajtja nuk u krye: { $error }
error-read = { $path } nuk u lexua dot: { $error }
error-broken-file = Projektet e ruajtura nuk u lexuan dot ({ $error }). Një kopje u ruajt te { $path }
error-no-data-folder = Nuk u gjet asnjë dosje të dhënash
error-storage-unavailable = Hapësira ruajtëse e shfletuesit nuk është e disponueshme
error-broken-storage = Projektet e ruajtura nuk u lexuan dot ({ $error }). Një kopje u ruajt në hapësirën ruajtëse të shfletuesit.
error-storage-full = Hapësira ruajtëse e shfletuesit është plot ose e bllokuar
