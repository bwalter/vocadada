## Side panel

app-tagline = Leer woordjes op een leuke manier!
language = Taal
my-projects = 📚 Mijn projecten
no-projects = Nog geen projecten.
word-count =
    { $count ->
        [one] { $count } woord
       *[other] { $count } woorden
    }
new-project = ➕ Nieuw project
new-project-name-label = Naam van het nieuwe project:
new-project-name-hint = bv. Dieren
create = ✔ Maken
cancel = Annuleren
rename = ✏ Hernoemen
delete = 🗑 Verwijderen

## Delete dialog

delete-title = Dit project verwijderen?
delete-body = "{ $name }" en al zijn woorden zijn dan voor altijd weg.
delete-confirm = 🗑 Ja, verwijderen
delete-keep = Nee, bewaren

## Share and import

share = 📤 Delen
import = 📥 Importeren
share-title = "{ $name }" delen
share-body = Kopieer het als tekst of als QR-afbeelding en stuur het, bv. via WhatsApp of Signal. De ander plakt de tekst of scant de QR-code onder 📥 Importeren.
qr-too-big = Dit project is te groot voor een QR-code. Gebruik de code hieronder.
scan-qr = 📷 QR-code scannen
scan-stop = ✖ Camera uit
camera-error = De camera kon niet worden gestart. Geef alsjeblieft toegang tot de camera.
copy-text = 📋 Kopiëren als tekst
copy-qr = 📋 Kopiëren als QR-afbeelding
copied = ✔ Gekopieerd!
close = Sluiten
import-title = Een project importeren
import-body = Plak de code die je hebt gekregen:
import-hint = Plak de code hier
paste = 📋 Plakken
paste-text-or-qr = 📋 Tekst of QR-afbeelding plakken
paste-empty = Er is niets om te plakken.
qr-not-found = Geen QR-code gevonden in de gekopieerde afbeelding.
import-preview =
    { $count ->
        [one] "{ $name }" met { $count } woord
       *[other] "{ $name }" met { $count } woorden
    }
import-invalid = Deze code lijkt niet te kloppen. Heb je alles gekopieerd?

## Welcome screen

welcome-title = Welkom bij Vocadada!
welcome-body = Maak je eerste project om woordjes te gaan leren.

## Mode tabs

tab-edit = ✏ Bewerken
tab-view = 👀 Bekijken
tab-test = 🎯 Overhoren

## Edit mode

languages = 🌍 Talen
language-1-hint = bv. Engels
language-2-hint = bv. Frans
default-language-1 = Taal 1
default-language-2 = Taal 2
add-word-title = ➕ Nieuw woord toevoegen
add = Toevoegen
add-word-tip = Tip: druk op Enter om naar het volgende vak te gaan.
add-word-tip-desktop = Tip: druk op Enter om naar het volgende vak te gaan, Shift+Enter voor een nieuwe regel in het voorbeeld.
no-words-edit = Nog geen woorden! Voeg hieronder je eerste woord toe.
remove-word = Dit woord verwijderen
example = 💬 Voorbeeld
example-hint = Voorbeeld (optioneel)

## View mode

no-words-view = Nog geen woorden om te bekijken. Voeg er een paar toe bij ✏ Bewerken!
shuffle = 🔀 Schudden
original-order = ↩ Oorspronkelijke volgorde
hide = 🙈 Verbergen
tap-to-peek = ❓ Tik om te spieken
show-example = Voorbeeld tonen

## Test mode

no-words-test = Nog geen woorden om te overhoren. Voeg er eerst een paar toe bij ✏ Bewerken!
test-direction-question = Welke kant op wil je oefenen?
words-waiting =
    { $count ->
        [one] Er wacht één woord op je!
       *[other] Er wachten { $count } woorden op je!
    }
check-answer = Antwoord bekijken
the-answer-is = Het antwoord is
answer-knew = ✔ Wist ik
answer-did-not-know = ✖ Wist ik niet
finish = 🏁 Stoppen
good-answers = Goede antwoorden
mistakes-label = Fouten

## Test results

result-perfect = PERFECT! Je bent een superster!
result-all-known = Hoera! Je hebt alle woorden geleerd!
result-good = Goed gedaan! Ga zo door!
result-start = Goed begin! Oefening baart kunst!
known-of-total = { $known } van { $total }
first-try = In één keer goed: { $count } van { $total }
mistakes-count =
    { $count ->
        [0] Helemaal geen fouten!
        [one] 1 fout
       *[other] { $count } fouten
    }
words-to-practise = Woorden om opnieuw te oefenen
play-again = 🔁 Nog een keer
practise-hard-words = 💪 Moeilijke woorden oefenen
back = ⬅ Terug

## Messages

ok = OK
error-save = Opslaan is mislukt: { $error }
error-read = Kan { $path } niet lezen: { $error }
error-broken-file = De opgeslagen projecten konden niet worden gelezen ({ $error }). Er is een kopie bewaard in { $path }
error-no-data-folder = Geen gegevensmap gevonden
error-storage-unavailable = De opslag van de browser is niet beschikbaar
error-broken-storage = De opgeslagen projecten konden niet worden gelezen ({ $error }). Er is een kopie bewaard in de opslag van de browser.
error-storage-full = De opslag van de browser is vol of geblokkeerd
