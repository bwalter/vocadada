## Side panel

app-tagline = Μάθε λέξεις παίζοντας!
language = Γλώσσα
my-projects = 📚 Τα έργα μου
no-projects = Δεν υπάρχουν ακόμα έργα.
word-count =
    { $count ->
        [one] { $count } λέξη
       *[other] { $count } λέξεις
    }
new-project = ➕ Νέο έργο
new-project-name-label = Όνομα του νέου έργου:
new-project-name-hint = π.χ. Ζώα
create = ✔ Δημιουργία
cancel = Ακύρωση
rename = ✏ Μετονομασία
delete = 🗑 Διαγραφή

## Delete dialog

delete-title = Διαγραφή αυτού του έργου;
delete-body = Το «{ $name }» και όλες οι λέξεις του θα χαθούν για πάντα.
delete-confirm = 🗑 Ναι, διαγραφή
delete-keep = Όχι, να μείνει

## Share and import

share = 📤 Κοινοποίηση
import = 📥 Εισαγωγή
share-title = Κοινοποίηση «{ $name }»
share-body = Αντίγραψέ το ως κείμενο ή ως εικόνα QR και στείλ' το, π.χ. μέσω WhatsApp ή Signal. Ο άλλος επικολλά το κείμενο ή σαρώνει τον κωδικό QR στην 📥 Εισαγωγή.
qr-too-big = Αυτό το έργο είναι πολύ μεγάλο για κωδικό QR. Χρησιμοποίησε τον κωδικό παρακάτω.
scan-qr = 📷 Σάρωση κωδικού QR
scan-stop = ✖ Κλείσιμο κάμερας
camera-error = Η κάμερα δεν μπόρεσε να ξεκινήσει. Επίτρεψε την πρόσβαση στην κάμερα.
copy-text = 📋 Αντιγραφή ως κείμενο
copy-qr = 📋 Αντιγραφή ως εικόνα QR
copied = ✔ Αντιγράφηκε!
close = Κλείσιμο
import-title = Εισαγωγή έργου
import-body = Επικόλλησε τον κωδικό που έλαβες:
import-hint = Επικόλλησε τον κωδικό εδώ
paste = 📋 Επικόλληση
paste-text-or-qr = 📋 Επικόλληση κειμένου ή εικόνας QR
paste-empty = Δεν υπάρχει τίποτα για επικόλληση.
qr-not-found = Δεν βρέθηκε κωδικός QR στην αντιγραμμένη εικόνα.
import-preview =
    { $count ->
        [one] «{ $name }» με { $count } λέξη
       *[other] «{ $name }» με { $count } λέξεις
    }
import-invalid = Αυτός ο κωδικός δεν φαίνεται σωστός. Τον αντέγραψες ολόκληρο;

## Welcome screen

welcome-title = Καλώς ήρθες στο Vocadada!
welcome-body = Δημιούργησε το πρώτο σου έργο για να αρχίσεις να μαθαίνεις λέξεις.

## Mode tabs

tab-edit = ✏ Επεξεργασία
tab-view = 👀 Προβολή
tab-test = 🎯 Τεστ

## Edit mode

languages = 🌍 Γλώσσες
language-1-hint = π.χ. Αγγλικά
language-2-hint = π.χ. Γαλλικά
default-language-1 = Γλώσσα 1
default-language-2 = Γλώσσα 2
add-word-title = ➕ Πρόσθεσε μια νέα λέξη
add = Προσθήκη
add-word-tip = Συμβουλή: πάτα Enter για να πας στο επόμενο πεδίο.
add-word-tip-desktop = Συμβουλή: πάτα Enter για να πας στο επόμενο πεδίο και Shift+Enter για νέα γραμμή στο παράδειγμα.
no-words-edit = Δεν υπάρχουν ακόμα λέξεις! Πρόσθεσε την πρώτη σου λέξη παρακάτω.
remove-word = Αφαίρεση αυτής της λέξης
example = 💬 Παράδειγμα
example-hint = Παράδειγμα (προαιρετικό)

## View mode

no-words-view = Δεν υπάρχουν ακόμα λέξεις για προβολή. Πρόσθεσε μερικές στην ✏ Επεξεργασία!
shuffle = 🔀 Ανακάτεμα
original-order = ↩ Αρχική σειρά
hide = 🙈 Απόκρυψη
tap-to-peek = ❓ Πάτα για να κρυφοκοιτάξεις
show-example = Εμφάνιση παραδείγματος

## Test mode

no-words-test = Δεν υπάρχουν ακόμα λέξεις για τεστ. Πρόσθεσε πρώτα μερικές στην ✏ Επεξεργασία!
test-direction-question = Προς ποια κατεύθυνση θέλεις να εξασκηθείς;
words-waiting =
    { $count ->
        [one] Μια λέξη σε περιμένει!
       *[other] { $count } λέξεις σε περιμένουν!
    }
check-answer = Έλεγχος απάντησης
the-answer-is = Η απάντηση είναι
answer-knew = ✔ Το ήξερα
answer-did-not-know = ✖ Δεν το ήξερα
finish = 🏁 Τέλος
good-answers = Σωστές απαντήσεις
mistakes-label = Λάθη

## Test results

result-perfect = ΤΕΛΕΙΑ! Είσαι σούπερ σταρ!
result-all-known = Ζήτω! Έμαθες όλες τις λέξεις!
result-good = Μπράβο! Συνέχισε έτσι!
result-start = Καλή αρχή! Η εξάσκηση φέρνει την τελειότητα!
known-of-total = { $known } από { $total }
first-try = Σωστά με την πρώτη: { $count } από { $total }
mistakes-count =
    { $count ->
        [0] Κανένα λάθος!
        [one] 1 λάθος
       *[other] { $count } λάθη
    }
words-to-practise = Λέξεις για επανάληψη
play-again = 🔁 Ξανά
practise-hard-words = 💪 Εξάσκηση στις δύσκολες λέξεις
back = ⬅ Πίσω

## Messages

ok = OK
error-save = Η αποθήκευση απέτυχε: { $error }
error-read = Δεν ήταν δυνατή η ανάγνωση του { $path }: { $error }
error-broken-file = Τα αποθηκευμένα έργα δεν μπόρεσαν να διαβαστούν ({ $error }). Ένα αντίγραφο κρατήθηκε στο { $path }
error-no-data-folder = Δεν βρέθηκε φάκελος δεδομένων
error-storage-unavailable = Ο χώρος αποθήκευσης του προγράμματος περιήγησης δεν είναι διαθέσιμος
error-broken-storage = Τα αποθηκευμένα έργα δεν μπόρεσαν να διαβαστούν ({ $error }). Ένα αντίγραφο κρατήθηκε στον χώρο αποθήκευσης του προγράμματος περιήγησης.
error-storage-full = Ο χώρος αποθήκευσης του προγράμματος περιήγησης είναι γεμάτος ή αποκλεισμένος
