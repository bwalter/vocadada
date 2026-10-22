## Side panel

app-tagline = Uči riječi na zabavan način!
language = Jezik
my-projects = 📚 Moji projekti
no-projects = Još nema projekata.
word-count =
    { $count ->
        [one] { $count } riječ
        [few] { $count } riječi
       *[other] { $count } riječi
    }
new-project = ➕ Novi projekt
new-project-name-label = Naziv novog projekta:
new-project-name-hint = npr. Životinje
create = ✔ Stvori
cancel = Odustani
rename = ✏ Preimenuj
delete = 🗑 Izbriši

## Delete dialog

delete-title = Izbrisati ovaj projekt?
delete-body = „{ $name }” i sve njegove riječi zauvijek će nestati.
delete-confirm = 🗑 Da, izbriši
delete-keep = Ne, zadrži

## Share and import

share = 📤 Podijeli
import = 📥 Uvezi
share-title = Podijeli „{ $name }”
share-body = Kopiraj ga kao tekst ili kao QR sliku i pošalji, npr. putem WhatsAppa ili Signala. Druga osoba zalijepi tekst ili skenira QR kôd pod 📥 Uvezi.
qr-too-big = Ovaj projekt je prevelik za QR kôd. Upotrijebi kôd ispod.
scan-qr = 📷 Skeniraj QR kôd
scan-stop = ✖ Isključi kameru
camera-error = Kamera se nije mogla pokrenuti. Molimo dopusti pristup kameri.
copy-text = 📋 Kopiraj kao tekst
copy-qr = 📋 Kopiraj kao QR sliku
copied = ✔ Kopirano!
close = Zatvori
import-title = Uvezi projekt
import-body = Zalijepi kôd koji si dobio/la:
import-hint = Ovdje zalijepi kôd
paste = 📋 Zalijepi
paste-text-or-qr = 📋 Zalijepi tekst ili QR sliku
paste-empty = Nema ničega za lijepljenje.
qr-not-found = Na kopiranoj slici nema QR kôda.
import-preview =
    { $count ->
        [one] „{ $name }” s { $count } riječju
       *[other] „{ $name }” s { $count } riječi
    }
import-invalid = Ovaj kôd ne izgleda ispravno. Jesi li ga kopirao/la cijelog?

## Welcome screen

welcome-title = Dobro došli u Vocadadu!
welcome-body = Napravi svoj prvi projekt i počni učiti riječi.

## Mode tabs

tab-edit = ✏ Uredi
tab-view = 👀 Pregledaj
tab-test = 🎯 Provjera

## Edit mode

languages = 🌍 Jezici
language-1-hint = npr. engleski
language-2-hint = npr. francuski
default-language-1 = Jezik 1
default-language-2 = Jezik 2
add-word-title = ➕ Dodaj novu riječ
add = Dodaj
add-word-tip = Savjet: pritisni Enter za prelazak u sljedeće polje.
add-word-tip-desktop = Savjet: pritisni Enter za prelazak u sljedeće polje, a Shift+Enter za novi red u primjeru.
no-words-edit = Još nema riječi! Dodaj prvu riječ ispod.
remove-word = Ukloni ovu riječ
example = 💬 Primjer
example-hint = Primjer (neobavezno)

## View mode

no-words-view = Još nema riječi za pregled. Dodaj ih pod ✏ Uredi!
shuffle = 🔀 Promiješaj
original-order = ↩ Izvorni redoslijed
hide = 🙈 Sakrij
tap-to-peek = ❓ Dodirni da proviriš
show-example = Prikaži primjer

## Test mode

no-words-test = Još nema riječi za provjeru. Najprije ih dodaj pod ✏ Uredi!
test-direction-question = U kojem smjeru želiš vježbati?
words-waiting =
    { $count ->
        [one] Čeka te { $count } riječ!
        [few] Čekaju te { $count } riječi!
       *[other] Čeka te { $count } riječi!
    }
check-answer = Provjeri odgovor
the-answer-is = Odgovor je
answer-knew = ✔ Znao/la sam
answer-did-not-know = ✖ Nisam znao/la
finish = 🏁 Završi
good-answers = Točni odgovori
mistakes-label = Pogreške

## Test results

result-perfect = SAVRŠENO! Ti si superzvijezda!
result-all-known = Hura! Naučio/la si sve riječi!
result-good = Bravo! Samo tako nastavi!
result-start = Dobar početak! Vježba čini majstora!
known-of-total = { $known } od { $total }
first-try = Točno iz prvog pokušaja: { $count } od { $total }
mistakes-count =
    { $count ->
        [0] Nijedna pogreška!
        [one] { $count } pogreška
        [few] { $count } pogreške
       *[other] { $count } pogrešaka
    }
words-to-practise = Riječi za ponavljanje
play-again = 🔁 Ponovno
practise-hard-words = 💪 Vježbaj teške riječi
back = ⬅ Natrag

## Messages

ok = U redu
error-save = Spremanje nije uspjelo: { $error }
error-read = Nije moguće pročitati { $path }: { $error }
error-broken-file = Spremljeni projekti nisu se mogli pročitati ({ $error }). Kopija je sačuvana u { $path }
error-no-data-folder = Mapa s podacima nije pronađena
error-storage-unavailable = Pohrana preglednika nije dostupna
error-broken-storage = Spremljeni projekti nisu se mogli pročitati ({ $error }). Kopija je sačuvana u pohrani preglednika.
error-storage-full = Pohrana preglednika je puna ili blokirana
