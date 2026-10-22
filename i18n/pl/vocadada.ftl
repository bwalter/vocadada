## Side panel

app-tagline = Ucz się słówek na wesoło!
language = Język
my-projects = 📚 Moje projekty
no-projects = Nie ma jeszcze projektów.
word-count =
    { $count ->
        [one] { $count } słowo
        [few] { $count } słowa
        [many] { $count } słów
       *[other] { $count } słowa
    }
new-project = ➕ Nowy projekt
new-project-name-label = Nazwa nowego projektu:
new-project-name-hint = np. Zwierzęta
create = ✔ Utwórz
cancel = Anuluj
rename = ✏ Zmień nazwę
delete = 🗑 Usuń

## Delete dialog

delete-title = Usunąć ten projekt?
delete-body = „{ $name }” i wszystkie jego słowa znikną na zawsze.
delete-confirm = 🗑 Tak, usuń
delete-keep = Nie, zostaw

## Share and import

share = 📤 Udostępnij
import = 📥 Importuj
share-title = Udostępnij „{ $name }”
share-body = Skopiuj go jako tekst albo jako obrazek QR i wyślij, np. przez WhatsApp lub Signal. Druga osoba wkleja tekst albo skanuje kod QR w sekcji 📥 Importuj.
qr-too-big = Ten projekt jest za duży na kod QR. Użyj kodu poniżej.
scan-qr = 📷 Zeskanuj kod QR
scan-stop = ✖ Wyłącz kamerę
camera-error = Nie udało się włączyć kamery. Zezwól na dostęp do kamery.
copy-text = 📋 Kopiuj jako tekst
copy-qr = 📋 Kopiuj jako obrazek QR
copied = ✔ Skopiowano!
close = Zamknij
import-title = Importuj projekt
import-body = Wklej otrzymany kod:
import-hint = Wklej kod tutaj
paste = 📋 Wklej
paste-text-or-qr = 📋 Wklej tekst albo obrazek QR
paste-empty = Nie ma nic do wklejenia.
qr-not-found = Na skopiowanym obrazku nie ma kodu QR.
import-preview =
    { $count ->
        [one] „{ $name }” z { $count } słowem
       *[other] „{ $name }” z { $count } słowami
    }
import-invalid = Ten kod nie wygląda dobrze. Czy skopiowano całość?

## Welcome screen

welcome-title = Witaj w Vocadadzie!
welcome-body = Utwórz pierwszy projekt i zacznij uczyć się słówek.

## Mode tabs

tab-edit = ✏ Edytuj
tab-view = 👀 Przeglądaj
tab-test = 🎯 Test

## Edit mode

languages = 🌍 Języki
language-1-hint = np. angielski
language-2-hint = np. francuski
default-language-1 = Język 1
default-language-2 = Język 2
add-word-title = ➕ Dodaj nowe słowo
add = Dodaj
add-word-tip = Wskazówka: naciśnij Enter, aby przejść do następnego pola.
add-word-tip-desktop = Wskazówka: naciśnij Enter, aby przejść do następnego pola, a Shift+Enter, aby zacząć nową linię w przykładzie.
no-words-edit = Nie ma jeszcze słów! Dodaj pierwsze słowo poniżej.
remove-word = Usuń to słowo
example = 💬 Przykład
example-hint = Przykład (opcjonalnie)

## View mode

no-words-view = Nie ma jeszcze nic do oglądania. Dodaj słowa w trybie ✏ Edytuj!
shuffle = 🔀 Wymieszaj
original-order = ↩ Pierwotna kolejność
hide = 🙈 Ukryj
tap-to-peek = ❓ Dotknij, aby podejrzeć
show-example = Pokaż przykład

## Test mode

no-words-test = Nie ma jeszcze słów do testu. Najpierw dodaj je w trybie ✏ Edytuj!
test-direction-question = W którą stronę chcesz ćwiczyć?
words-waiting =
    { $count ->
        [one] Czeka na ciebie { $count } słowo!
        [few] Czekają na ciebie { $count } słowa!
        [many] Czeka na ciebie { $count } słów!
       *[other] Czeka na ciebie { $count } słowa!
    }
check-answer = Sprawdź odpowiedź
the-answer-is = Odpowiedź to
answer-knew = ✔ Wiedziałem/am
answer-did-not-know = ✖ Nie wiedziałem/am
finish = 🏁 Zakończ
good-answers = Dobre odpowiedzi
mistakes-label = Błędy

## Test results

result-perfect = IDEALNIE! Jesteś supergwiazdą!
result-all-known = Hurra! Znasz już wszystkie słowa!
result-good = Brawo! Tak trzymaj!
result-start = Dobry początek! Praktyka czyni mistrza!
known-of-total = { $known } z { $total }
first-try = Dobrze za pierwszym razem: { $count } z { $total }
mistakes-count =
    { $count ->
        [0] Ani jednego błędu!
        [one] 1 błąd
        [few] { $count } błędy
        [many] { $count } błędów
       *[other] { $count } błędu
    }
words-to-practise = Słowa do powtórki
play-again = 🔁 Jeszcze raz
practise-hard-words = 💪 Ćwicz trudne słowa
back = ⬅ Wróć

## Messages

ok = OK
error-save = Nie udało się zapisać: { $error }
error-read = Nie udało się odczytać { $path }: { $error }
error-broken-file = Nie udało się odczytać zapisanych projektów ({ $error }). Kopia została zachowana w { $path }
error-no-data-folder = Nie znaleziono folderu z danymi
error-storage-unavailable = Pamięć przeglądarki jest niedostępna
error-broken-storage = Nie udało się odczytać zapisanych projektów ({ $error }). Kopia została zachowana w pamięci przeglądarki.
error-storage-full = Pamięć przeglądarki jest pełna lub zablokowana
