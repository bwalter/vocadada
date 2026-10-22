## Side panel

app-tagline = Disce verba ludendo!
language = Lingua
my-projects = 📚 Opera mea
no-projects = Nondum ulla opera.
word-count =
    { $count ->
        [one] { $count } verbum
       *[other] { $count } verba
    }
new-project = ➕ Novum opus
new-project-name-label = Nomen novi operis:
new-project-name-hint = e.g. Animalia
create = ✔ Crea
cancel = Omitte
rename = ✏ Muta nomen
delete = 🗑 Dele

## Delete dialog

delete-title = Hoc opus delere vis?
delete-body = "{ $name }" et omnia eius verba in perpetuum peribunt.
delete-confirm = 🗑 Ita, dele
delete-keep = Minime, serva

## Share and import

share = 📤 Communica
import = 📥 Importa
share-title = Communica "{ $name }"
share-body = Exscribe ut textum aut ut imaginem QR et mitte, e.g. per WhatsApp aut Signal. Alter textum inserit aut codicem QR sub 📥 Importa legit.
qr-too-big = Hoc opus maius est quam ut codice QR contineatur. Codice infra utere.
scan-qr = 📷 Codicem QR lege
scan-stop = ✖ Claude cameram
camera-error = Camera incipi non potuit. Quaeso, aditum ad cameram permitte.
copy-text = 📋 Exscribe ut textum
copy-qr = 📋 Exscribe ut imaginem QR
copied = ✔ Exscriptum!
close = Claude
import-title = Opus importa
import-body = Insere codicem quem accepisti:
import-hint = Hic codicem insere
paste = 📋 Insere
paste-text-or-qr = 📋 Insere textum aut imaginem QR
paste-empty = Nihil est quod inseras.
qr-not-found = In imagine exscripta nullus codex QR inventus est.
import-preview =
    { $count ->
        [one] "{ $name }" cum { $count } verbo
       *[other] "{ $name }" cum { $count } verbis
    }
import-invalid = Hic codex rectus non videtur. Totumne exscripsisti?

## Welcome screen

welcome-title = Salve! Bene venisti ad Vocadada!
welcome-body = Primum opus tuum crea ut verba discere incipias.

## Mode tabs

tab-edit = ✏ Muta
tab-view = 👀 Specta
tab-test = 🎯 Proba

## Edit mode

languages = 🌍 Linguae
language-1-hint = e.g. Anglica
language-2-hint = e.g. Francogallica
default-language-1 = Lingua I
default-language-2 = Lingua II
add-word-title = ➕ Novum verbum adde
add = Adde
add-word-tip = Consilium: preme Enter ut ad proximam capsam transeas.
add-word-tip-desktop = Consilium: preme Enter ut ad proximam capsam transeas, Shift+Enter ut novum versum in exemplo incipias.
no-words-edit = Nondum ulla verba! Primum verbum infra adde.
remove-word = Hoc verbum remove
example = 💬 Exemplum
example-hint = Exemplum (si vis)

## View mode

no-words-view = Nondum ulla verba spectanda. Adde aliqua in ✏ Muta!
shuffle = 🔀 Misce
original-order = ↩ Ordo pristinus
hide = 🙈 Cela
tap-to-peek = ❓ Tange ut videas
show-example = Exemplum monstra

## Test mode

no-words-test = Nondum ulla verba probanda. Adde prius aliqua in ✏ Muta!
test-direction-question = Quam in partem exerceri vis?
words-waiting =
    { $count ->
        [one] Unum verbum te exspectat!
       *[other] { $count } verba te exspectant!
    }
check-answer = Responsum inspice
the-answer-is = Responsum est
answer-knew = ✔ Sciebam
answer-did-not-know = ✖ Nesciebam
finish = 🏁 Fini
good-answers = Recte responsa
mistakes-label = Errores

## Test results

result-perfect = PERFECTUM! Stella es!
result-all-known = Io! Omnia verba didicisti!
result-good = Bene fecisti! Perge!
result-start = Bonum initium! Usus est magister optimus!
known-of-total = { $known } ex { $total }
first-try = Primo conatu recte: { $count } ex { $total }
mistakes-count =
    { $count ->
        [0] Nullus error!
        [one] { $count } error
       *[other] { $count } errores
    }
words-to-practise = Verba iterum exercenda
play-again = 🔁 Iterum lude
practise-hard-words = 💪 Difficilia verba exerce
back = ⬅ Redi

## Messages

ok = Bene
error-save = Servari non potuit: { $error }
error-read = { $path } legi non potuit: { $error }
error-broken-file = Opera servata legi non potuerunt ({ $error }). Exemplar servatum est in { $path }
error-no-data-folder = Nullum scrinium datorum inventum
error-storage-unavailable = Repositorium navigatri praesto non est
error-broken-storage = Opera servata legi non potuerunt ({ $error }). Exemplar in repositorio navigatri servatum est.
error-storage-full = Repositorium navigatri plenum aut clausum est
