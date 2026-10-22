## Side panel

app-tagline = Lær ord på en morsom måte!
language = Språk
my-projects = 📚 Mine prosjekter
no-projects = Ingen prosjekter ennå.
word-count =
    { $count ->
        [one] { $count } ord
       *[other] { $count } ord
    }
new-project = ➕ Nytt prosjekt
new-project-name-label = Navn på det nye prosjektet:
new-project-name-hint = f.eks. Dyr
create = ✔ Opprett
cancel = Avbryt
rename = ✏ Gi nytt navn
delete = 🗑 Slett

## Delete dialog

delete-title = Slette dette prosjektet?
delete-body = «{ $name }» og alle ordene i det blir borte for alltid.
delete-confirm = 🗑 Ja, slett
delete-keep = Nei, behold det

## Share and import

share = 📤 Del
import = 📥 Importer
share-title = Del «{ $name }»
share-body = Kopier det som tekst eller som QR-bilde og send det, f.eks. med WhatsApp eller Signal. Den andre limer inn teksten eller skanner QR-koden under 📥 Importer.
qr-too-big = Dette prosjektet er for stort for en QR-kode. Bruk koden nedenfor.
scan-qr = 📷 Skann QR-kode
scan-stop = ✖ Slå av kameraet
camera-error = Kameraet kunne ikke startes. Gi tilgang til kameraet.
copy-text = 📋 Kopier som tekst
copy-qr = 📋 Kopier som QR-bilde
copied = ✔ Kopiert!
close = Lukk
import-title = Importer et prosjekt
import-body = Lim inn koden du har fått:
import-hint = Lim inn koden her
paste = 📋 Lim inn
paste-text-or-qr = 📋 Lim inn tekst eller QR-bilde
paste-empty = Det er ingenting å lime inn.
qr-not-found = Fant ingen QR-kode i det kopierte bildet.
import-preview =
    { $count ->
        [one] «{ $name }» med { $count } ord
       *[other] «{ $name }» med { $count } ord
    }
import-invalid = Denne koden ser ikke riktig ut. Kopierte du hele?

## Welcome screen

welcome-title = Velkommen til Vocadada!
welcome-body = Lag ditt første prosjekt for å begynne å lære ord.

## Mode tabs

tab-edit = ✏ Rediger
tab-view = 👀 Se
tab-test = 🎯 Test

## Edit mode

languages = 🌍 Språk
language-1-hint = f.eks. engelsk
language-2-hint = f.eks. fransk
default-language-1 = Språk 1
default-language-2 = Språk 2
add-word-title = ➕ Legg til et nytt ord
add = Legg til
add-word-tip = Tips: trykk Enter for å gå til neste felt.
add-word-tip-desktop = Tips: trykk Enter for å gå til neste felt, og Shift+Enter for en ny linje i eksempelet.
no-words-edit = Ingen ord ennå! Legg til det første ordet nedenfor.
remove-word = Fjern dette ordet
example = 💬 Eksempel
example-hint = Eksempel (valgfritt)

## View mode

no-words-view = Ingen ord å se på ennå. Legg til noen under ✏ Rediger!
shuffle = 🔀 Stokk
original-order = ↩ Opprinnelig rekkefølge
hide = 🙈 Skjul
tap-to-peek = ❓ Trykk for å kikke
show-example = Vis eksempel

## Test mode

no-words-test = Ingen ord å teste ennå. Legg til noen under ✏ Rediger først!
test-direction-question = Hvilken vei vil du øve?
words-waiting =
    { $count ->
        [one] Ett ord venter på deg!
       *[other] { $count } ord venter på deg!
    }
check-answer = Sjekk svaret
the-answer-is = Svaret er
answer-knew = ✔ Jeg kunne det
answer-did-not-know = ✖ Jeg kunne det ikke
finish = 🏁 Ferdig
good-answers = Riktige svar
mistakes-label = Feil

## Test results

result-perfect = PERFEKT! Du er en superstjerne!
result-all-known = Hurra! Du har lært alle ordene!
result-good = Bra jobbet! Fortsett sånn!
result-start = God start! Øvelse gjør mester!
known-of-total = { $known } av { $total }
first-try = Riktig på første forsøk: { $count } av { $total }
mistakes-count =
    { $count ->
        [0] Ingen feil i det hele tatt!
        [one] 1 feil
       *[other] { $count } feil
    }
words-to-practise = Ord å øve på igjen
play-again = 🔁 Spill igjen
practise-hard-words = 💪 Øv på de vanskelige ordene
back = ⬅ Tilbake

## Messages

ok = OK
error-save = Kunne ikke lagre: { $error }
error-read = Kunne ikke lese { $path }: { $error }
error-broken-file = De lagrede prosjektene kunne ikke leses ({ $error }). En kopi ble lagret i { $path }
error-no-data-folder = Fant ingen datamappe
error-storage-unavailable = Nettleserlagringen er ikke tilgjengelig
error-broken-storage = De lagrede prosjektene kunne ikke leses ({ $error }). En kopi ble lagret i nettleserlagringen.
error-storage-full = Nettleserlagringen er full eller blokkert
