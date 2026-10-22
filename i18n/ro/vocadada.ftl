## Side panel

app-tagline = Învață cuvinte în joacă!
language = Limba
my-projects = 📚 Proiectele mele
no-projects = Încă nu există proiecte.
word-count =
    { $count ->
        [one] { $count } cuvânt
        [few] { $count } cuvinte
       *[other] { $count } de cuvinte
    }
new-project = ➕ Proiect nou
new-project-name-label = Numele noului proiect:
new-project-name-hint = de ex. Animale
create = ✔ Creează
cancel = Anulează
rename = ✏ Redenumește
delete = 🗑 Șterge

## Delete dialog

delete-title = Ștergi acest proiect?
delete-body = „{ $name }” și toate cuvintele lui vor dispărea pentru totdeauna.
delete-confirm = 🗑 Da, șterge
delete-keep = Nu, păstrează-l

## Share and import

share = 📤 Distribuie
import = 📥 Importă
share-title = Distribuie „{ $name }”
share-body = Copiază-l ca text sau ca imagine QR și trimite-l, de ex. pe WhatsApp sau Signal. Cealaltă persoană lipește textul sau scanează codul QR la 📥 Importă.
qr-too-big = Acest proiect este prea mare pentru un cod QR. Folosește codul de mai jos.
scan-qr = 📷 Scanează codul QR
scan-stop = ✖ Oprește camera
camera-error = Camera nu a putut porni. Te rog să permiți accesul la cameră.
copy-text = 📋 Copiază ca text
copy-qr = 📋 Copiază ca imagine QR
copied = ✔ Copiat!
close = Închide
import-title = Importă un proiect
import-body = Lipește codul primit:
import-hint = Lipește codul aici
paste = 📋 Lipește
paste-text-or-qr = 📋 Lipește text sau imagine QR
paste-empty = Nu e nimic de lipit.
qr-not-found = Nu s-a găsit niciun cod QR în imaginea copiată.
import-preview =
    { $count ->
        [one] „{ $name }” cu { $count } cuvânt
        [few] „{ $name }” cu { $count } cuvinte
       *[other] „{ $name }” cu { $count } de cuvinte
    }
import-invalid = Codul acesta nu pare corect. L-ai copiat în întregime?

## Welcome screen

welcome-title = Bun venit la Vocadada!
welcome-body = Creează-ți primul proiect ca să începi să înveți cuvinte.

## Mode tabs

tab-edit = ✏ Editează
tab-view = 👀 Vezi
tab-test = 🎯 Test

## Edit mode

languages = 🌍 Limbi
language-1-hint = de ex. engleză
language-2-hint = de ex. franceză
default-language-1 = Limba 1
default-language-2 = Limba 2
add-word-title = ➕ Adaugă un cuvânt nou
add = Adaugă
add-word-tip = Sfat: apasă Enter ca să treci la căsuța următoare.
add-word-tip-desktop = Sfat: apasă Enter ca să treci la căsuța următoare și Shift+Enter pentru un rând nou în exemplu.
no-words-edit = Încă nu există cuvinte! Adaugă primul cuvânt mai jos.
remove-word = Elimină acest cuvânt
example = 💬 Exemplu
example-hint = Exemplu (opțional)

## View mode

no-words-view = Încă nu sunt cuvinte de văzut. Adaugă câteva la ✏ Editează!
shuffle = 🔀 Amestecă
original-order = ↩ Ordinea inițială
hide = 🙈 Ascunde
tap-to-peek = ❓ Atinge ca să tragi cu ochiul
show-example = Arată exemplul

## Test mode

no-words-test = Încă nu sunt cuvinte pentru test. Adaugă mai întâi câteva la ✏ Editează!
test-direction-question = În ce direcție vrei să exersezi?
words-waiting =
    { $count ->
        [one] Un cuvânt te așteaptă!
        [few] { $count } cuvinte te așteaptă!
       *[other] { $count } de cuvinte te așteaptă!
    }
check-answer = Verifică răspunsul
the-answer-is = Răspunsul este
answer-knew = ✔ Am știut
answer-did-not-know = ✖ N-am știut
finish = 🏁 Gata
good-answers = Răspunsuri corecte
mistakes-label = Greșeli

## Test results

result-perfect = PERFECT! Ești un superstar!
result-all-known = Ura! Ai învățat toate cuvintele!
result-good = Bravo! Continuă tot așa!
result-start = Un început bun! Exercițiul te face maestru!
known-of-total = { $known } din { $total }
first-try = Corect din prima: { $count } din { $total }
mistakes-count =
    { $count ->
        [0] Nicio greșeală!
        [one] 1 greșeală
        [few] { $count } greșeli
       *[other] { $count } de greșeli
    }
words-to-practise = Cuvinte de exersat din nou
play-again = 🔁 Joacă din nou
practise-hard-words = 💪 Exersează cuvintele grele
back = ⬅ Înapoi

## Messages

ok = OK
error-save = Nu s-a putut salva: { $error }
error-read = Nu s-a putut citi { $path }: { $error }
error-broken-file = Proiectele salvate nu au putut fi citite ({ $error }). O copie a fost păstrată în { $path }
error-no-data-folder = Nu s-a găsit niciun folder de date
error-storage-unavailable = Spațiul de stocare al browserului nu este disponibil
error-broken-storage = Proiectele salvate nu au putut fi citite ({ $error }). O copie a fost păstrată în spațiul de stocare al browserului.
error-storage-full = Spațiul de stocare al browserului este plin sau blocat
