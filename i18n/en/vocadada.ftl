## Side panel

app-tagline = Learn words the fun way!
language = Language
my-projects = 📚 My projects
no-projects = No projects yet.
word-count =
    { $count ->
        [one] { $count } word
       *[other] { $count } words
    }
new-project = ➕ New project
new-project-name-label = Name of the new project:
new-project-name-hint = e.g. Animals
create = ✔ Create
cancel = Cancel
rename = ✏ Rename
delete = 🗑 Delete

## Delete dialog

delete-title = Delete this project?
delete-body = "{ $name }" and all its words will be gone forever.
delete-confirm = 🗑 Yes, delete
delete-keep = No, keep it

## Share and import

share = 📤 Share
import = 📥 Import
share-title = Share "{ $name }"
share-body = Copy this code and send it, e.g. via WhatsApp or Signal. The other person pastes it under 📥 Import.
copy = 📋 Copy
copied = ✔ Copied!
close = Close
import-title = Import a project
import-body = Paste the code you received:
import-hint = Paste the code here
paste = 📋 Paste
import-preview =
    { $count ->
        [one] "{ $name }" with { $count } word
       *[other] "{ $name }" with { $count } words
    }
import-invalid = This code doesn't look right. Did you copy all of it?

## Welcome screen

welcome-title = Welcome to Vocadada!
welcome-body = Create your first project to start learning words.

## Mode tabs

tab-edit = ✏ Edit
tab-view = 👀 View
tab-test = 🎯 Test

## Edit mode

languages = 🌍 Languages
language-1-hint = e.g. English
language-2-hint = e.g. French
default-language-1 = Language 1
default-language-2 = Language 2
add-word-title = ➕ Add a new word
add = Add
add-word-tip = Tip: press Enter to jump to the next box.
add-word-tip-desktop = Tip: press Enter to jump to the next box, Shift+Enter for a new line in the example.
no-words-edit = No words yet! Add your first word below.
remove-word = Remove this word
example = 💬 Example
example-hint = Example (optional)

## View mode

no-words-view = No words to look at yet. Add some in ✏ Edit mode!
shuffle = 🔀 Shuffle
original-order = ↩ Original order
hide = 🙈 Hide
tap-to-peek = ❓ Tap to peek
show-example = Show example

## Test mode

no-words-test = No words to test yet. Add some in ✏ Edit mode first!
test-direction-question = Which way do you want to practise?
words-waiting =
    { $count ->
        [one] One word is waiting for you!
       *[other] { $count } words are waiting for you!
    }
check-answer = Check the answer
the-answer-is = The answer is
answer-knew = ✔ I knew
answer-did-not-know = ✖ I did not know
finish = 🏁 Finish
good-answers = Good answers
mistakes-label = Mistakes

## Test results

result-perfect = PERFECT! You are a superstar!
result-all-known = Hooray! You learned all the words!
result-good = Well done! Keep it up!
result-start = Good start! Practice makes perfect!
known-of-total = { $known } of { $total }
first-try = Right on the first try: { $count } of { $total }
mistakes-count =
    { $count ->
        [0] No mistakes at all!
        [one] 1 mistake
       *[other] { $count } mistakes
    }
words-to-practise = Words to practise again
play-again = 🔁 Play again
practise-hard-words = 💪 Practise hard words
back = ⬅ Back

## Messages

ok = OK
error-save = Could not save: { $error }
error-read = Could not read { $path }: { $error }
error-broken-file = Saved projects could not be read ({ $error }). A copy was kept at { $path }
error-no-data-folder = No data folder found
error-storage-unavailable = Browser storage is not available
error-broken-storage = Saved projects could not be read ({ $error }). A copy was kept in browser storage.
error-storage-full = Browser storage is full or blocked
