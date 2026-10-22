## Side panel

app-tagline = Tanulj szavakat játékosan!
language = Nyelv
my-projects = 📚 Projektjeim
no-projects = Még nincs projekt.
word-count =
    { $count ->
        [one] { $count } szó
       *[other] { $count } szó
    }
new-project = ➕ Új projekt
new-project-name-label = Az új projekt neve:
new-project-name-hint = pl. Állatok
create = ✔ Létrehozás
cancel = Mégse
rename = ✏ Átnevezés
delete = 🗑 Törlés

## Delete dialog

delete-title = Törlöd ezt a projektet?
delete-body = „{ $name }” és minden szava végleg eltűnik.
delete-confirm = 🗑 Igen, törlöm
delete-keep = Nem, megtartom

## Share and import

share = 📤 Megosztás
import = 📥 Importálás
share-title = „{ $name }” megosztása
share-body = Másold ki szövegként vagy QR-képként, és küldd el, pl. WhatsAppon vagy Signalon. A másik fél beilleszti a szöveget, vagy beolvassa a QR-kódot az 📥 Importálás alatt.
qr-too-big = Ez a projekt túl nagy egy QR-kódhoz. Használd a lenti kódot.
scan-qr = 📷 QR-kód beolvasása
scan-stop = ✖ Kamera kikapcsolása
camera-error = Nem sikerült elindítani a kamerát. Kérlek, engedélyezd a kamera használatát.
copy-text = 📋 Másolás szövegként
copy-qr = 📋 Másolás QR-képként
copied = ✔ Kimásolva!
close = Bezárás
import-title = Projekt importálása
import-body = Illeszd be a kapott kódot:
import-hint = Illeszd be ide a kódot
paste = 📋 Beillesztés
paste-text-or-qr = 📋 Szöveg vagy QR-kép beillesztése
paste-empty = Nincs mit beilleszteni.
qr-not-found = A kimásolt képen nincs QR-kód.
import-preview =
    { $count ->
        [one] „{ $name }” – { $count } szó
       *[other] „{ $name }” – { $count } szó
    }
import-invalid = Ez a kód nem tűnik helyesnek. Az egészet kimásoltad?

## Welcome screen

welcome-title = Üdv a Vocadadában!
welcome-body = Hozd létre az első projektedet, és kezdd el tanulni a szavakat!

## Mode tabs

tab-edit = ✏ Szerkesztés
tab-view = 👀 Nézet
tab-test = 🎯 Teszt

## Edit mode

languages = 🌍 Nyelvek
language-1-hint = pl. angol
language-2-hint = pl. francia
default-language-1 = 1. nyelv
default-language-2 = 2. nyelv
add-word-title = ➕ Új szó hozzáadása
add = Hozzáadás
add-word-tip = Tipp: Enterrel a következő mezőre ugorhatsz.
add-word-tip-desktop = Tipp: Enterrel a következő mezőre ugorhatsz, Shift+Enterrel új sort kezdhetsz a példában.
no-words-edit = Még nincsenek szavak! Add hozzá lent az elsőt.
remove-word = Szó eltávolítása
example = 💬 Példa
example-hint = Példa (nem kötelező)

## View mode

no-words-view = Még nincs mit nézni. Adj hozzá szavakat a ✏ Szerkesztés módban!
shuffle = 🔀 Keverés
original-order = ↩ Eredeti sorrend
hide = 🙈 Elrejtés
tap-to-peek = ❓ Koppints, hogy megnézd
show-example = Példa mutatása

## Test mode

no-words-test = Még nincs mit tesztelni. Előbb adj hozzá szavakat a ✏ Szerkesztés módban!
test-direction-question = Melyik irányban szeretnél gyakorolni?
words-waiting =
    { $count ->
        [one] Egy szó vár rád!
       *[other] { $count } szó vár rád!
    }
check-answer = Válasz ellenőrzése
the-answer-is = A válasz
answer-knew = ✔ Tudtam
answer-did-not-know = ✖ Nem tudtam
finish = 🏁 Befejezés
good-answers = Jó válaszok
mistakes-label = Hibák

## Test results

result-perfect = TÖKÉLETES! Igazi szupersztár vagy!
result-all-known = Hurrá! Megtanultad az összes szót!
result-good = Szép munka! Csak így tovább!
result-start = Jó kezdés! Gyakorlat teszi a mestert!
known-of-total = { $known } / { $total }
first-try = Elsőre jó: { $count } / { $total }
mistakes-count =
    { $count ->
        [0] Egy hiba sincs!
        [one] 1 hiba
       *[other] { $count } hiba
    }
words-to-practise = Újra gyakorlandó szavak
play-again = 🔁 Újra
practise-hard-words = 💪 Nehéz szavak gyakorlása
back = ⬅ Vissza

## Messages

ok = OK
error-save = Nem sikerült menteni: { $error }
error-read = Nem sikerült beolvasni ezt: { $path } ({ $error })
error-broken-file = A mentett projekteket nem sikerült beolvasni ({ $error }). Egy másolat itt maradt: { $path }
error-no-data-folder = Nem található adatmappa
error-storage-unavailable = A böngésző tárhelye nem érhető el
error-broken-storage = A mentett projekteket nem sikerült beolvasni ({ $error }). Egy másolat a böngésző tárhelyén maradt.
error-storage-full = A böngésző tárhelye megtelt vagy le van tiltva
