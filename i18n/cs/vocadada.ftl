## Side panel

app-tagline = Uč se slovíčka zábavně!
language = Jazyk
my-projects = 📚 Moje projekty
no-projects = Zatím žádné projekty.
word-count =
    { $count ->
        [one] { $count } slovo
        [few] { $count } slova
        [many] { $count } slova
       *[other] { $count } slov
    }
new-project = ➕ Nový projekt
new-project-name-label = Název nového projektu:
new-project-name-hint = např. Zvířata
create = ✔ Vytvořit
cancel = Zrušit
rename = ✏ Přejmenovat
delete = 🗑 Smazat

## Delete dialog

delete-title = Smazat tento projekt?
delete-body = „{ $name }“ a všechna jeho slova navždy zmizí.
delete-confirm = 🗑 Ano, smazat
delete-keep = Ne, nechat

## Share and import

share = 📤 Sdílet
import = 📥 Importovat
share-title = Sdílet „{ $name }“
share-body = Zkopíruj ho jako text nebo jako QR obrázek a pošli ho, např. přes WhatsApp nebo Signal. Druhá osoba vloží text nebo naskenuje QR kód v části 📥 Importovat.
qr-too-big = Tento projekt je na QR kód příliš velký. Použij kód níže.
scan-qr = 📷 Naskenovat QR kód
scan-stop = ✖ Vypnout kameru
camera-error = Kameru se nepodařilo spustit. Povol prosím přístup ke kameře.
copy-text = 📋 Kopírovat jako text
copy-qr = 📋 Kopírovat jako QR obrázek
copied = ✔ Zkopírováno!
close = Zavřít
import-title = Importovat projekt
import-body = Vlož kód, který jsi dostal(a):
import-hint = Sem vlož kód
paste = 📋 Vložit
paste-text-or-qr = 📋 Vložit text nebo QR obrázek
paste-empty = Není co vložit.
qr-not-found = Na zkopírovaném obrázku není žádný QR kód.
import-preview =
    { $count ->
        [one] „{ $name }“ s { $count } slovem
       *[other] „{ $name }“ s { $count } slovy
    }
import-invalid = Tento kód nevypadá správně. Zkopíroval(a) jsi ho celý?

## Welcome screen

welcome-title = Vítej ve Vocadadě!
welcome-body = Vytvoř si první projekt a začni se učit slovíčka.

## Mode tabs

tab-edit = ✏ Upravit
tab-view = 👀 Prohlížet
tab-test = 🎯 Test

## Edit mode

languages = 🌍 Jazyky
language-1-hint = např. angličtina
language-2-hint = např. francouzština
default-language-1 = Jazyk 1
default-language-2 = Jazyk 2
add-word-title = ➕ Přidat nové slovo
add = Přidat
add-word-tip = Tip: Enterem přeskočíš do dalšího pole.
add-word-tip-desktop = Tip: Enterem přeskočíš do dalšího pole, Shift+Enter vloží nový řádek do příkladu.
no-words-edit = Zatím žádná slova! Přidej první slovo dole.
remove-word = Odebrat toto slovo
example = 💬 Příklad
example-hint = Příklad (nepovinné)

## View mode

no-words-view = Zatím není co prohlížet. Přidej slova v režimu ✏ Upravit!
shuffle = 🔀 Zamíchat
original-order = ↩ Původní pořadí
hide = 🙈 Skrýt
tap-to-peek = ❓ Klepni a nakoukni
show-example = Ukázat příklad

## Test mode

no-words-test = Zatím nejsou slova k testu. Nejdřív je přidej v režimu ✏ Upravit!
test-direction-question = Kterým směrem chceš procvičovat?
words-waiting =
    { $count ->
        [one] Čeká na tebe { $count } slovo!
        [few] Čekají na tebe { $count } slova!
        [many] Čeká na tebe { $count } slova!
       *[other] Čeká na tebe { $count } slov!
    }
check-answer = Zkontrolovat odpověď
the-answer-is = Odpověď je
answer-knew = ✔ Věděl(a) jsem
answer-did-not-know = ✖ Nevěděl(a) jsem
finish = 🏁 Konec
good-answers = Správné odpovědi
mistakes-label = Chyby

## Test results

result-perfect = DOKONALÉ! Jsi superhvězda!
result-all-known = Hurá! Naučil(a) ses všechna slova!
result-good = Výborně! Jen tak dál!
result-start = Dobrý začátek! Opakování je matka moudrosti!
known-of-total = { $known } z { $total }
first-try = Napoprvé správně: { $count } z { $total }
mistakes-count =
    { $count ->
        [0] Žádná chyba!
        [one] 1 chyba
        [few] { $count } chyby
        [many] { $count } chyby
       *[other] { $count } chyb
    }
words-to-practise = Slova k procvičení
play-again = 🔁 Znovu
practise-hard-words = 💪 Procvičit těžká slova
back = ⬅ Zpět

## Messages

ok = OK
error-save = Nepodařilo se uložit: { $error }
error-read = Nepodařilo se přečíst { $path }: { $error }
error-broken-file = Uložené projekty se nepodařilo přečíst ({ $error }). Kopie zůstala v { $path }
error-no-data-folder = Nebyla nalezena složka s daty
error-storage-unavailable = Úložiště prohlížeče není dostupné
error-broken-storage = Uložené projekty se nepodařilo přečíst ({ $error }). Kopie zůstala v úložišti prohlížeče.
error-storage-full = Úložiště prohlížeče je plné nebo zablokované
