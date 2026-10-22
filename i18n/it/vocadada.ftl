## Side panel

app-tagline = Impara le parole divertendoti!
language = Lingua
my-projects = 📚 I miei progetti
no-projects = Ancora nessun progetto.
word-count =
    { $count ->
        [one] { $count } parola
       *[other] { $count } parole
    }
new-project = ➕ Nuovo progetto
new-project-name-label = Nome del nuovo progetto:
new-project-name-hint = es. Animali
create = ✔ Crea
cancel = Annulla
rename = ✏ Rinomina
delete = 🗑 Elimina

## Delete dialog

delete-title = Eliminare questo progetto?
delete-body = «{ $name }» e tutte le sue parole spariranno per sempre.
delete-confirm = 🗑 Sì, elimina
delete-keep = No, tienilo

## Share and import

share = 📤 Condividi
import = 📥 Importa
share-title = Condividi «{ $name }»
share-body = Copialo come testo o come immagine QR e invialo, ad es. con WhatsApp o Signal. L'altra persona incolla il testo o scansiona il codice QR in 📥 Importa.
qr-too-big = Questo progetto è troppo grande per un codice QR. Usa il codice qui sotto.
scan-qr = 📷 Scansiona il codice QR
scan-stop = ✖ Spegni la fotocamera
camera-error = Impossibile avviare la fotocamera. Consenti l'accesso alla fotocamera.
copy-text = 📋 Copia come testo
copy-qr = 📋 Copia come immagine QR
copied = ✔ Copiato!
close = Chiudi
import-title = Importa un progetto
import-body = Incolla il codice che hai ricevuto:
import-hint = Incolla qui il codice
paste = 📋 Incolla
paste-text-or-qr = 📋 Incolla testo o immagine QR
paste-empty = Non c'è niente da incollare.
qr-not-found = Nessun codice QR trovato nell'immagine copiata.
import-preview =
    { $count ->
        [one] «{ $name }» con { $count } parola
       *[other] «{ $name }» con { $count } parole
    }
import-invalid = Questo codice non sembra giusto. L'hai copiato tutto?

## Welcome screen

welcome-title = Benvenuto in Vocadada!
welcome-body = Crea il tuo primo progetto per iniziare a imparare le parole.

## Mode tabs

tab-edit = ✏ Modifica
tab-view = 👀 Guarda
tab-test = 🎯 Verifica

## Edit mode

languages = 🌍 Lingue
language-1-hint = es. inglese
language-2-hint = es. francese
default-language-1 = Lingua 1
default-language-2 = Lingua 2
add-word-title = ➕ Aggiungi una nuova parola
add = Aggiungi
add-word-tip = Suggerimento: premi Invio per passare alla casella successiva.
add-word-tip-desktop = Suggerimento: premi Invio per passare alla casella successiva e Maiusc+Invio per andare a capo nell'esempio.
no-words-edit = Ancora nessuna parola! Aggiungi la prima qui sotto.
remove-word = Rimuovi questa parola
example = 💬 Esempio
example-hint = Esempio (facoltativo)

## View mode

no-words-view = Ancora nessuna parola da guardare. Aggiungine qualcuna in ✏ Modifica!
shuffle = 🔀 Mescola
original-order = ↩ Ordine originale
hide = 🙈 Nascondi
tap-to-peek = ❓ Tocca per sbirciare
show-example = Mostra esempio

## Test mode

no-words-test = Ancora nessuna parola da verificare. Prima aggiungine qualcuna in ✏ Modifica!
test-direction-question = In quale direzione vuoi esercitarti?
words-waiting =
    { $count ->
        [one] Una parola ti aspetta!
       *[other] { $count } parole ti aspettano!
    }
check-answer = Controlla la risposta
the-answer-is = La risposta è
answer-knew = ✔ Lo sapevo
answer-did-not-know = ✖ Non lo sapevo
finish = 🏁 Fine
good-answers = Risposte giuste
mistakes-label = Errori

## Test results

result-perfect = PERFETTO! Sei una superstar!
result-all-known = Evviva! Hai imparato tutte le parole!
result-good = Bravo! Continua così!
result-start = Buon inizio! La pratica rende perfetti!
known-of-total = { $known } su { $total }
first-try = Giuste al primo tentativo: { $count } su { $total }
mistakes-count =
    { $count ->
        [0] Nessun errore!
        [one] 1 errore
       *[other] { $count } errori
    }
words-to-practise = Parole da ripassare
play-again = 🔁 Gioca ancora
practise-hard-words = 💪 Ripassa le parole difficili
back = ⬅ Indietro

## Messages

ok = OK
error-save = Impossibile salvare: { $error }
error-read = Impossibile leggere { $path }: { $error }
error-broken-file = Impossibile leggere i progetti salvati ({ $error }). Una copia è stata conservata in { $path }
error-no-data-folder = Nessuna cartella dati trovata
error-storage-unavailable = La memoria del browser non è disponibile
error-broken-storage = Impossibile leggere i progetti salvati ({ $error }). Una copia è stata conservata nella memoria del browser.
error-storage-full = La memoria del browser è piena o bloccata
