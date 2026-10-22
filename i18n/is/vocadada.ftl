## Side panel

app-tagline = Lærðu orð á skemmtilegan hátt!
language = Tungumál
my-projects = 📚 Verkefnin mín
no-projects = Engin verkefni enn.
word-count =
    { $count ->
        [one] { $count } orð
       *[other] { $count } orð
    }
new-project = ➕ Nýtt verkefni
new-project-name-label = Heiti nýja verkefnisins:
new-project-name-hint = t.d. Dýr
create = ✔ Búa til
cancel = Hætta við
rename = ✏ Endurnefna
delete = 🗑 Eyða

## Delete dialog

delete-title = Eyða þessu verkefni?
delete-body = „{ $name }“ og öll orðin í því hverfa að eilífu.
delete-confirm = 🗑 Já, eyða
delete-keep = Nei, halda því

## Share and import

share = 📤 Deila
import = 📥 Flytja inn
share-title = Deila „{ $name }“
share-body = Afritaðu það sem texta eða QR-mynd og sendu það, t.d. með WhatsApp eða Signal. Hinn aðilinn límir textann inn eða skannar QR-kóðann undir 📥 Flytja inn.
qr-too-big = Þetta verkefni er of stórt fyrir QR-kóða. Notaðu kóðann hér fyrir neðan.
scan-qr = 📷 Skanna QR-kóða
scan-stop = ✖ Slökkva á myndavél
camera-error = Ekki tókst að ræsa myndavélina. Vinsamlegast leyfðu aðgang að myndavélinni.
copy-text = 📋 Afrita sem texta
copy-qr = 📋 Afrita sem QR-mynd
copied = ✔ Afritað!
close = Loka
import-title = Flytja inn verkefni
import-body = Límdu inn kóðann sem þú fékkst:
import-hint = Límdu kóðann hér
paste = 📋 Líma
paste-text-or-qr = 📋 Líma texta eða QR-mynd
paste-empty = Það er ekkert til að líma.
qr-not-found = Enginn QR-kóði fannst í afrituðu myndinni.
import-preview =
    { $count ->
        [one] „{ $name }“ með { $count } orði
       *[other] „{ $name }“ með { $count } orðum
    }
import-invalid = Þessi kóði lítur ekki rétt út. Afritaðirðu hann allan?

## Welcome screen

welcome-title = Velkomin í Vocadada!
welcome-body = Búðu til fyrsta verkefnið þitt til að byrja að læra orð.

## Mode tabs

tab-edit = ✏ Breyta
tab-view = 👀 Skoða
tab-test = 🎯 Prófa

## Edit mode

languages = 🌍 Tungumál
language-1-hint = t.d. enska
language-2-hint = t.d. franska
default-language-1 = Tungumál 1
default-language-2 = Tungumál 2
add-word-title = ➕ Bæta við nýju orði
add = Bæta við
add-word-tip = Ábending: ýttu á Enter til að fara í næsta reit.
add-word-tip-desktop = Ábending: ýttu á Enter til að fara í næsta reit og Shift+Enter fyrir nýja línu í dæminu.
no-words-edit = Engin orð enn! Bættu fyrsta orðinu við hér fyrir neðan.
remove-word = Fjarlægja þetta orð
example = 💬 Dæmi
example-hint = Dæmi (valfrjálst)

## View mode

no-words-view = Engin orð til að skoða enn. Bættu nokkrum við í ✏ Breyta!
shuffle = 🔀 Stokka
original-order = ↩ Upprunaleg röð
hide = 🙈 Fela
tap-to-peek = ❓ Ýttu til að kíkja
show-example = Sýna dæmi

## Test mode

no-words-test = Engin orð til að prófa enn. Bættu fyrst nokkrum við í ✏ Breyta!
test-direction-question = Í hvora áttina viltu æfa þig?
words-waiting =
    { $count ->
        [one] { $count } orð bíður eftir þér!
       *[other] { $count } orð bíða eftir þér!
    }
check-answer = Athuga svarið
the-answer-is = Svarið er
answer-knew = ✔ Ég vissi það
answer-did-not-know = ✖ Ég vissi það ekki
finish = 🏁 Ljúka
good-answers = Rétt svör
mistakes-label = Villur

## Test results

result-perfect = FULLKOMIÐ! Þú ert stórstjarna!
result-all-known = Húrra! Þú lærðir öll orðin!
result-good = Vel gert! Haltu áfram svona!
result-start = Góð byrjun! Æfingin skapar meistarann!
known-of-total = { $known } af { $total }
first-try = Rétt í fyrstu tilraun: { $count } af { $total }
mistakes-count =
    { $count ->
        [0] Engar villur!
        [one] { $count } villa
       *[other] { $count } villur
    }
words-to-practise = Orð til að æfa aftur
play-again = 🔁 Spila aftur
practise-hard-words = 💪 Æfa erfiðu orðin
back = ⬅ Til baka

## Messages

ok = Í lagi
error-save = Ekki tókst að vista: { $error }
error-read = Ekki tókst að lesa { $path }: { $error }
error-broken-file = Ekki tókst að lesa vistuð verkefni ({ $error }). Afrit var geymt í { $path }
error-no-data-folder = Engin gagnamappa fannst
error-storage-unavailable = Geymsla vafrans er ekki tiltæk
error-broken-storage = Ekki tókst að lesa vistuð verkefni ({ $error }). Afrit var geymt í geymslu vafrans.
error-storage-full = Geymsla vafrans er full eða lokuð
