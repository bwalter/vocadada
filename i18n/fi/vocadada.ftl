## Side panel

app-tagline = Opi sanoja hauskasti!
language = Kieli
my-projects = 📚 Omat projektit
no-projects = Ei vielä projekteja.
word-count =
    { $count ->
        [one] { $count } sana
       *[other] { $count } sanaa
    }
new-project = ➕ Uusi projekti
new-project-name-label = Uuden projektin nimi:
new-project-name-hint = esim. Eläimet
create = ✔ Luo
cancel = Peruuta
rename = ✏ Nimeä uudelleen
delete = 🗑 Poista

## Delete dialog

delete-title = Poistetaanko tämä projekti?
delete-body = ”{ $name }” ja kaikki sen sanat katoavat lopullisesti.
delete-confirm = 🗑 Kyllä, poista
delete-keep = Ei, säilytä

## Share and import

share = 📤 Jaa
import = 📥 Tuo
share-title = Jaa ”{ $name }”
share-body = Kopioi se tekstinä tai QR-kuvana ja lähetä se esim. WhatsAppilla tai Signalilla. Toinen liittää tekstin tai skannaa QR-koodin kohdassa 📥 Tuo.
qr-too-big = Tämä projekti on liian suuri QR-koodiksi. Käytä alla olevaa koodia.
scan-qr = 📷 Skannaa QR-koodi
scan-stop = ✖ Sammuta kamera
camera-error = Kameraa ei voitu käynnistää. Salli kameran käyttö.
copy-text = 📋 Kopioi tekstinä
copy-qr = 📋 Kopioi QR-kuvana
copied = ✔ Kopioitu!
close = Sulje
import-title = Tuo projekti
import-body = Liitä saamasi koodi:
import-hint = Liitä koodi tähän
paste = 📋 Liitä
paste-text-or-qr = 📋 Liitä teksti tai QR-kuva
paste-empty = Ei mitään liitettävää.
qr-not-found = Kopioidusta kuvasta ei löytynyt QR-koodia.
import-preview =
    { $count ->
        [one] ”{ $name }”, { $count } sana
       *[other] ”{ $name }”, { $count } sanaa
    }
import-invalid = Tämä koodi ei näytä oikealta. Kopioitko sen kokonaan?

## Welcome screen

welcome-title = Tervetuloa Vocadadaan!
welcome-body = Luo ensimmäinen projektisi ja aloita sanojen opettelu.

## Mode tabs

tab-edit = ✏ Muokkaa
tab-view = 👀 Katso
tab-test = 🎯 Testaa

## Edit mode

languages = 🌍 Kielet
language-1-hint = esim. englanti
language-2-hint = esim. ranska
default-language-1 = Kieli 1
default-language-2 = Kieli 2
add-word-title = ➕ Lisää uusi sana
add = Lisää
add-word-tip = Vinkki: paina Enter siirtyäksesi seuraavaan kenttään.
add-word-tip-desktop = Vinkki: paina Enter siirtyäksesi seuraavaan kenttään ja Shift+Enter saadaksesi uuden rivin esimerkkiin.
no-words-edit = Ei vielä sanoja! Lisää ensimmäinen sana alla.
remove-word = Poista tämä sana
example = 💬 Esimerkki
example-hint = Esimerkki (valinnainen)

## View mode

no-words-view = Ei vielä katsottavia sanoja. Lisää niitä kohdassa ✏ Muokkaa!
shuffle = 🔀 Sekoita
original-order = ↩ Alkuperäinen järjestys
hide = 🙈 Piilota
tap-to-peek = ❓ Napauta kurkistaaksesi
show-example = Näytä esimerkki

## Test mode

no-words-test = Ei vielä testattavia sanoja. Lisää ensin sanoja kohdassa ✏ Muokkaa!
test-direction-question = Kumpaan suuntaan haluat harjoitella?
words-waiting =
    { $count ->
        [one] Yksi sana odottaa sinua!
       *[other] { $count } sanaa odottaa sinua!
    }
check-answer = Tarkista vastaus
the-answer-is = Vastaus on
answer-knew = ✔ Osasin
answer-did-not-know = ✖ En osannut
finish = 🏁 Lopeta
good-answers = Oikeat vastaukset
mistakes-label = Virheet

## Test results

result-perfect = TÄYDELLISTÄ! Olet supertähti!
result-all-known = Hurraa! Opit kaikki sanat!
result-good = Hienoa! Jatka samaan malliin!
result-start = Hyvä alku! Harjoitus tekee mestarin!
known-of-total = { $known } / { $total }
first-try = Oikein ensimmäisellä yrityksellä: { $count } / { $total }
mistakes-count =
    { $count ->
        [0] Ei yhtään virhettä!
        [one] 1 virhe
       *[other] { $count } virhettä
    }
words-to-practise = Harjoiteltavat sanat
play-again = 🔁 Uudestaan
practise-hard-words = 💪 Harjoittele vaikeita sanoja
back = ⬅ Takaisin

## Messages

ok = OK
error-save = Tallennus epäonnistui: { $error }
error-read = Tiedostoa { $path } ei voitu lukea: { $error }
error-broken-file = Tallennettuja projekteja ei voitu lukea ({ $error }). Kopio jäi tiedostoon { $path }
error-no-data-folder = Datakansiota ei löytynyt
error-storage-unavailable = Selaimen tallennustila ei ole käytettävissä
error-broken-storage = Tallennettuja projekteja ei voitu lukea ({ $error }). Kopio jäi selaimen tallennustilaan.
error-storage-full = Selaimen tallennustila on täynnä tai estetty
