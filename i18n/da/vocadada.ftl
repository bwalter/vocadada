## Side panel

app-tagline = Lær ord på en sjov måde!
language = Sprog
my-projects = 📚 Mine projekter
no-projects = Ingen projekter endnu.
word-count =
    { $count ->
        [one] { $count } ord
       *[other] { $count } ord
    }
new-project = ➕ Nyt projekt
new-project-name-label = Navn på det nye projekt:
new-project-name-hint = f.eks. Dyr
create = ✔ Opret
cancel = Annuller
rename = ✏ Omdøb
delete = 🗑 Slet

## Delete dialog

delete-title = Slet dette projekt?
delete-body = »{ $name }« og alle dets ord forsvinder for altid.
delete-confirm = 🗑 Ja, slet
delete-keep = Nej, behold det

## Share and import

share = 📤 Del
import = 📥 Importér
share-title = Del »{ $name }«
share-body = Kopiér det som tekst eller som QR-billede og send det, f.eks. via WhatsApp eller Signal. Den anden indsætter teksten eller scanner QR-koden under 📥 Importér.
qr-too-big = Dette projekt er for stort til en QR-kode. Brug koden nedenfor.
scan-qr = 📷 Scan QR-kode
scan-stop = ✖ Sluk kameraet
camera-error = Kameraet kunne ikke startes. Giv adgang til kameraet.
copy-text = 📋 Kopiér som tekst
copy-qr = 📋 Kopiér som QR-billede
copied = ✔ Kopieret!
close = Luk
import-title = Importér et projekt
import-body = Indsæt den kode, du har fået:
import-hint = Indsæt koden her
paste = 📋 Indsæt
paste-text-or-qr = 📋 Indsæt tekst eller QR-billede
paste-empty = Der er intet at indsætte.
qr-not-found = Der blev ikke fundet nogen QR-kode i det kopierede billede.
import-preview =
    { $count ->
        [one] »{ $name }« med { $count } ord
       *[other] »{ $name }« med { $count } ord
    }
import-invalid = Denne kode ser ikke rigtig ud. Kopierede du det hele?

## Welcome screen

welcome-title = Velkommen til Vocadada!
welcome-body = Opret dit første projekt for at begynde at lære ord.

## Mode tabs

tab-edit = ✏ Rediger
tab-view = 👀 Se
tab-test = 🎯 Test

## Edit mode

languages = 🌍 Sprog
language-1-hint = f.eks. engelsk
language-2-hint = f.eks. fransk
default-language-1 = Sprog 1
default-language-2 = Sprog 2
add-word-title = ➕ Tilføj et nyt ord
add = Tilføj
add-word-tip = Tip: tryk på Enter for at gå til næste felt.
add-word-tip-desktop = Tip: tryk på Enter for at gå til næste felt og Shift+Enter for en ny linje i eksemplet.
no-words-edit = Ingen ord endnu! Tilføj dit første ord nedenfor.
remove-word = Fjern dette ord
example = 💬 Eksempel
example-hint = Eksempel (valgfrit)

## View mode

no-words-view = Ingen ord at se på endnu. Tilføj nogle under ✏ Rediger!
shuffle = 🔀 Bland
original-order = ↩ Oprindelig rækkefølge
hide = 🙈 Skjul
tap-to-peek = ❓ Tryk for at kigge
show-example = Vis eksempel

## Test mode

no-words-test = Ingen ord at teste endnu. Tilføj først nogle under ✏ Rediger!
test-direction-question = Hvilken vej vil du øve?
words-waiting =
    { $count ->
        [one] Et ord venter på dig!
       *[other] { $count } ord venter på dig!
    }
check-answer = Tjek svaret
the-answer-is = Svaret er
answer-knew = ✔ Det vidste jeg
answer-did-not-know = ✖ Det vidste jeg ikke
finish = 🏁 Færdig
good-answers = Rigtige svar
mistakes-label = Fejl

## Test results

result-perfect = PERFEKT! Du er en superstjerne!
result-all-known = Hurra! Du har lært alle ordene!
result-good = Godt klaret! Bliv ved sådan!
result-start = God start! Øvelse gør mester!
known-of-total = { $known } af { $total }
first-try = Rigtigt i første forsøg: { $count } af { $total }
mistakes-count =
    { $count ->
        [0] Ingen fejl overhovedet!
        [one] 1 fejl
       *[other] { $count } fejl
    }
words-to-practise = Ord, der skal øves igen
play-again = 🔁 Spil igen
practise-hard-words = 💪 Øv de svære ord
back = ⬅ Tilbage

## Messages

ok = OK
error-save = Kunne ikke gemme: { $error }
error-read = Kunne ikke læse { $path }: { $error }
error-broken-file = De gemte projekter kunne ikke læses ({ $error }). En kopi blev gemt i { $path }
error-no-data-folder = Ingen datamappe fundet
error-storage-unavailable = Browserens lager er ikke tilgængeligt
error-broken-storage = De gemte projekter kunne ikke læses ({ $error }). En kopi blev gemt i browserens lager.
error-storage-full = Browserens lager er fuldt eller blokeret
