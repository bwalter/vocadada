## Side panel

app-tagline = Uč sa slovíčka zábavne!
language = Jazyk
my-projects = 📚 Moje projekty
no-projects = Zatiaľ žiadne projekty.
word-count =
    { $count ->
        [one] { $count } slovo
        [few] { $count } slová
        [many] { $count } slova
       *[other] { $count } slov
    }
new-project = ➕ Nový projekt
new-project-name-label = Názov nového projektu:
new-project-name-hint = napr. Zvieratá
create = ✔ Vytvoriť
cancel = Zrušiť
rename = ✏ Premenovať
delete = 🗑 Vymazať

## Delete dialog

delete-title = Vymazať tento projekt?
delete-body = „{ $name }“ a všetky jeho slová navždy zmiznú.
delete-confirm = 🗑 Áno, vymazať
delete-keep = Nie, nechať

## Share and import

share = 📤 Zdieľať
import = 📥 Importovať
share-title = Zdieľať „{ $name }“
share-body = Skopíruj ho ako text alebo ako QR obrázok a pošli ho, napr. cez WhatsApp alebo Signal. Druhá osoba vloží text alebo naskenuje QR kód v časti 📥 Importovať.
qr-too-big = Tento projekt je na QR kód príliš veľký. Použi kód nižšie.
scan-qr = 📷 Naskenovať QR kód
scan-stop = ✖ Vypnúť kameru
camera-error = Kameru sa nepodarilo spustiť. Povoľ, prosím, prístup ku kamere.
copy-text = 📋 Kopírovať ako text
copy-qr = 📋 Kopírovať ako QR obrázok
copied = ✔ Skopírované!
close = Zavrieť
import-title = Importovať projekt
import-body = Vlož kód, ktorý si dostal(a):
import-hint = Sem vlož kód
paste = 📋 Vložiť
paste-text-or-qr = 📋 Vložiť text alebo QR obrázok
paste-empty = Nie je čo vložiť.
qr-not-found = Na skopírovanom obrázku nie je žiadny QR kód.
import-preview =
    { $count ->
        [one] „{ $name }“ s { $count } slovom
       *[other] „{ $name }“ s { $count } slovami
    }
import-invalid = Tento kód nevyzerá správne. Skopíroval(a) si ho celý?

## Welcome screen

welcome-title = Vitaj vo Vocadade!
welcome-body = Vytvor si prvý projekt a začni sa učiť slovíčka.

## Mode tabs

tab-edit = ✏ Upraviť
tab-view = 👀 Prezerať
tab-test = 🎯 Test

## Edit mode

languages = 🌍 Jazyky
language-1-hint = napr. angličtina
language-2-hint = napr. francúzština
default-language-1 = Jazyk 1
default-language-2 = Jazyk 2
add-word-title = ➕ Pridať nové slovo
add = Pridať
add-word-tip = Tip: Enterom prejdeš do ďalšieho poľa.
add-word-tip-desktop = Tip: Enterom prejdeš do ďalšieho poľa, Shift+Enter pridá nový riadok do príkladu.
no-words-edit = Zatiaľ žiadne slová! Pridaj prvé slovo dole.
remove-word = Odstrániť toto slovo
example = 💬 Príklad
example-hint = Príklad (nepovinné)

## View mode

no-words-view = Zatiaľ nie je čo prezerať. Pridaj slová v režime ✏ Upraviť!
shuffle = 🔀 Zamiešať
original-order = ↩ Pôvodné poradie
hide = 🙈 Skryť
tap-to-peek = ❓ Ťukni a pozri sa
show-example = Ukázať príklad

## Test mode

no-words-test = Zatiaľ nie sú slová na test. Najprv ich pridaj v režime ✏ Upraviť!
test-direction-question = Ktorým smerom chceš precvičovať?
words-waiting =
    { $count ->
        [one] Čaká na teba { $count } slovo!
        [few] Čakajú na teba { $count } slová!
        [many] Čaká na teba { $count } slova!
       *[other] Čaká na teba { $count } slov!
    }
check-answer = Skontrolovať odpoveď
the-answer-is = Odpoveď je
answer-knew = ✔ Vedel(a) som
answer-did-not-know = ✖ Nevedel(a) som
finish = 🏁 Koniec
good-answers = Správne odpovede
mistakes-label = Chyby

## Test results

result-perfect = DOKONALÉ! Si superhviezda!
result-all-known = Hurá! Naučil(a) si sa všetky slová!
result-good = Výborne! Len tak ďalej!
result-start = Dobrý začiatok! Opakovanie je matka múdrosti!
known-of-total = { $known } z { $total }
first-try = Na prvý pokus správne: { $count } z { $total }
mistakes-count =
    { $count ->
        [0] Žiadna chyba!
        [one] 1 chyba
        [few] { $count } chyby
        [many] { $count } chyby
       *[other] { $count } chýb
    }
words-to-practise = Slová na precvičenie
play-again = 🔁 Znova
practise-hard-words = 💪 Precvičiť ťažké slová
back = ⬅ Späť

## Messages

ok = OK
error-save = Nepodarilo sa uložiť: { $error }
error-read = Nepodarilo sa prečítať { $path }: { $error }
error-broken-file = Uložené projekty sa nepodarilo prečítať ({ $error }). Kópia zostala v { $path }
error-no-data-folder = Nenašiel sa priečinok s údajmi
error-storage-unavailable = Úložisko prehliadača nie je dostupné
error-broken-storage = Uložené projekty sa nepodarilo prečítať ({ $error }). Kópia zostala v úložisku prehliadača.
error-storage-full = Úložisko prehliadača je plné alebo zablokované
