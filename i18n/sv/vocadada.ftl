## Side panel

app-tagline = Lär dig ord på ett roligt sätt!
language = Språk
my-projects = 📚 Mina projekt
no-projects = Inga projekt än.
word-count =
    { $count ->
        [one] { $count } ord
       *[other] { $count } ord
    }
new-project = ➕ Nytt projekt
new-project-name-label = Namn på det nya projektet:
new-project-name-hint = t.ex. Djur
create = ✔ Skapa
cancel = Avbryt
rename = ✏ Byt namn
delete = 🗑 Ta bort

## Delete dialog

delete-title = Ta bort det här projektet?
delete-body = ”{ $name }” och alla dess ord försvinner för alltid.
delete-confirm = 🗑 Ja, ta bort
delete-keep = Nej, behåll det

## Share and import

share = 📤 Dela
import = 📥 Importera
share-title = Dela ”{ $name }”
share-body = Kopiera det som text eller som QR-bild och skicka det, t.ex. via WhatsApp eller Signal. Den andra klistrar in texten eller skannar QR-koden under 📥 Importera.
qr-too-big = Det här projektet är för stort för en QR-kod. Använd koden nedan.
scan-qr = 📷 Skanna QR-kod
scan-stop = ✖ Stäng av kameran
camera-error = Kameran kunde inte startas. Tillåt åtkomst till kameran.
copy-text = 📋 Kopiera som text
copy-qr = 📋 Kopiera som QR-bild
copied = ✔ Kopierat!
close = Stäng
import-title = Importera ett projekt
import-body = Klistra in koden du har fått:
import-hint = Klistra in koden här
paste = 📋 Klistra in
paste-text-or-qr = 📋 Klistra in text eller QR-bild
paste-empty = Det finns inget att klistra in.
qr-not-found = Ingen QR-kod hittades i den kopierade bilden.
import-preview =
    { $count ->
        [one] ”{ $name }” med { $count } ord
       *[other] ”{ $name }” med { $count } ord
    }
import-invalid = Den här koden ser inte rätt ut. Kopierade du allt?

## Welcome screen

welcome-title = Välkommen till Vocadada!
welcome-body = Skapa ditt första projekt för att börja lära dig ord.

## Mode tabs

tab-edit = ✏ Redigera
tab-view = 👀 Visa
tab-test = 🎯 Förhör

## Edit mode

languages = 🌍 Språk
language-1-hint = t.ex. engelska
language-2-hint = t.ex. franska
default-language-1 = Språk 1
default-language-2 = Språk 2
add-word-title = ➕ Lägg till ett nytt ord
add = Lägg till
add-word-tip = Tips: tryck på Enter för att gå till nästa ruta.
add-word-tip-desktop = Tips: tryck på Enter för att gå till nästa ruta och Shift+Enter för en ny rad i exemplet.
no-words-edit = Inga ord än! Lägg till ditt första ord nedan.
remove-word = Ta bort det här ordet
example = 💬 Exempel
example-hint = Exempel (valfritt)

## View mode

no-words-view = Inga ord att titta på än. Lägg till några under ✏ Redigera!
shuffle = 🔀 Blanda
original-order = ↩ Ursprunglig ordning
hide = 🙈 Dölj
tap-to-peek = ❓ Tryck för att kika
show-example = Visa exempel

## Test mode

no-words-test = Inga ord att förhöra än. Lägg till några under ✏ Redigera först!
test-direction-question = Åt vilket håll vill du öva?
words-waiting =
    { $count ->
        [one] Ett ord väntar på dig!
       *[other] { $count } ord väntar på dig!
    }
check-answer = Kolla svaret
the-answer-is = Svaret är
answer-knew = ✔ Jag kunde det
answer-did-not-know = ✖ Jag kunde det inte
finish = 🏁 Avsluta
good-answers = Rätta svar
mistakes-label = Fel

## Test results

result-perfect = PERFEKT! Du är en superstjärna!
result-all-known = Hurra! Du har lärt dig alla orden!
result-good = Bra jobbat! Fortsätt så!
result-start = Bra början! Övning ger färdighet!
known-of-total = { $known } av { $total }
first-try = Rätt på första försöket: { $count } av { $total }
mistakes-count =
    { $count ->
        [0] Inga fel alls!
        [one] 1 fel
       *[other] { $count } fel
    }
words-to-practise = Ord att öva på igen
play-again = 🔁 Spela igen
practise-hard-words = 💪 Öva på de svåra orden
back = ⬅ Tillbaka

## Messages

ok = OK
error-save = Kunde inte spara: { $error }
error-read = Kunde inte läsa { $path }: { $error }
error-broken-file = De sparade projekten kunde inte läsas ({ $error }). En kopia sparades i { $path }
error-no-data-folder = Ingen datamapp hittades
error-storage-unavailable = Webbläsarens lagring är inte tillgänglig
error-broken-storage = De sparade projekten kunde inte läsas ({ $error }). En kopia sparades i webbläsarens lagring.
error-storage-full = Webbläsarens lagring är full eller blockerad
