## Side panel

app-tagline = Apprendre des mots en s’amusant !
language = Langue
my-projects = 📚 Mes projets
no-projects = Pas encore de projet.
word-count =
    { $count ->
        [one] { $count } mot
       *[other] { $count } mots
    }
new-project = ➕ Nouveau projet
new-project-name-label = Nom du nouveau projet :
new-project-name-hint = p. ex. Animaux
create = ✔ Créer
cancel = Annuler
rename = ✏ Renommer
delete = 🗑 Supprimer

## Delete dialog

delete-title = Supprimer ce projet ?
delete-body = « { $name } » et tous ses mots seront supprimés pour toujours.
delete-confirm = 🗑 Oui, supprimer
delete-keep = Non, le garder

## Share and import

share = 📤 Partager
import = 📥 Importer
share-title = Partager « { $name } »
share-body = Copie le projet en texte ou en image QR et envoie-le, par ex. via WhatsApp ou Signal. L'autre personne colle le texte ou scanne le QR code sous 📥 Importer.
qr-too-big = Ce projet est trop grand pour un QR code. Utilise le code ci-dessous.
scan-qr = 📷 Scanner le QR code
scan-stop = ✖ Arrêter la caméra
camera-error = La caméra n'a pas pu démarrer. Autorise l'accès à la caméra.
copy-text = 📋 Copier en texte
copy-qr = 📋 Copier en image QR
copied = ✔ Copié !
close = Fermer
import-title = Importer un projet
import-body = Colle le code que tu as reçu :
import-hint = Colle le code ici
paste = 📋 Coller
import-preview =
    { $count ->
        [one] « { $name } » avec { $count } mot
       *[other] « { $name } » avec { $count } mots
    }
import-invalid = Ce code n'est pas correct. As-tu tout copié ?

## Welcome screen

welcome-title = Bienvenue dans Vocadada !
welcome-body = Crée ton premier projet pour commencer à apprendre des mots.

## Mode tabs

tab-edit = ✏ Modifier
tab-view = 👀 Voir
tab-test = 🎯 Tester

## Edit mode

languages = 🌍 Langues
language-1-hint = p. ex. Français
language-2-hint = p. ex. Anglais
default-language-1 = Langue 1
default-language-2 = Langue 2
add-word-title = ➕ Ajouter un mot
add = Ajouter
add-word-tip = Astuce : appuie sur Entrée pour passer à la case suivante.
add-word-tip-desktop = Astuce : appuie sur Entrée pour passer à la case suivante, Maj+Entrée pour une nouvelle ligne dans l'exemple.
no-words-edit = Pas encore de mots ! Ajoute ton premier mot ci-dessous.
remove-word = Supprimer ce mot
example = 💬 Exemple
example-hint = Exemple (facultatif)

## View mode

no-words-view = Pas encore de mots à voir. Ajoutes-en dans le mode ✏ Modifier !
shuffle = 🔀 Mélanger
original-order = ↩ Ordre d’origine
hide = 🙈 Masquer
tap-to-peek = ❓ Révéler
show-example = Afficher l'exemple

## Test mode

no-words-test = Pas encore de mots à tester. Ajoutes-en d’abord dans le mode ✏ Modifier !
test-direction-question = Dans quel sens veux-tu t’entraîner ?
words-waiting =
    { $count ->
        [one] Un mot t’attend !
       *[other] { $count } mots t’attendent !
    }
check-answer = Voir la réponse
the-answer-is = La réponse est
answer-knew = ✔ Je savais
answer-did-not-know = ✖ Je ne savais pas
finish = 🏁 Terminer
good-answers = Bonnes réponses
mistakes-label = Erreurs

## Test results

result-perfect = PARFAIT ! Tu es une superstar !
result-all-known = Hourra ! Tu as appris tous les mots !
result-good = Bien joué ! Continue comme ça !
result-start = Bon début ! C’est en forgeant qu’on devient forgeron !
known-of-total = { $known } sur { $total }
first-try = Juste du premier coup : { $count } sur { $total }
mistakes-count =
    { $count ->
        [0] Aucune erreur !
        [one] 1 erreur
       *[other] { $count } erreurs
    }
words-to-practise = Mots à revoir
play-again = 🔁 Rejouer
practise-hard-words = 💪 Revoir les mots difficiles
back = ⬅ Retour

## Messages

ok = OK
error-save = Impossible d’enregistrer : { $error }
error-read = Impossible de lire { $path } : { $error }
error-broken-file = Les projets enregistrés n’ont pas pu être lus ({ $error }). Une copie a été gardée ici : { $path }
error-no-data-folder = Aucun dossier de données trouvé
error-storage-unavailable = Le stockage du navigateur n’est pas disponible
error-broken-storage = Les projets enregistrés n’ont pas pu être lus ({ $error }). Une copie a été gardée dans le stockage du navigateur.
error-storage-full = Le stockage du navigateur est plein ou bloqué
