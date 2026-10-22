## Side panel

app-tagline = Вивчай слова весело!
language = Мова
my-projects = 📚 Мої проєкти
no-projects = Поки що немає проєктів.
word-count =
    { $count ->
        [one] { $count } слово
        [few] { $count } слова
        [many] { $count } слів
       *[other] { $count } слова
    }
new-project = ➕ Новий проєкт
new-project-name-label = Назва нового проєкту:
new-project-name-hint = напр. Тварини
create = ✔ Створити
cancel = Скасувати
rename = ✏ Перейменувати
delete = 🗑 Видалити

## Delete dialog

delete-title = Видалити цей проєкт?
delete-body = «{ $name }» і всі його слова зникнуть назавжди.
delete-confirm = 🗑 Так, видалити
delete-keep = Ні, залишити

## Share and import

share = 📤 Поділитися
import = 📥 Імпорт
share-title = Поділитися «{ $name }»
share-body = Скопіюй проєкт як текст або як QR-зображення і надішли, наприклад, через WhatsApp або Signal. Інша людина вставляє текст або сканує QR-код у розділі 📥 Імпорт.
qr-too-big = Цей проєкт завеликий для QR-коду. Використай код нижче.
scan-qr = 📷 Сканувати QR-код
scan-stop = ✖ Вимкнути камеру
camera-error = Не вдалося увімкнути камеру. Будь ласка, дозволь доступ до камери.
copy-text = 📋 Копіювати як текст
copy-qr = 📋 Копіювати як QR-зображення
copied = ✔ Скопійовано!
close = Закрити
import-title = Імпорт проєкту
import-body = Встав отриманий код:
import-hint = Встав код сюди
paste = 📋 Вставити
paste-text-or-qr = 📋 Вставити текст або QR-зображення
paste-empty = Немає чого вставляти.
qr-not-found = На скопійованому зображенні немає QR-коду.
import-preview =
    { $count ->
        [one] «{ $name }» з { $count } словом
       *[other] «{ $name }» з { $count } словами
    }
import-invalid = Цей код виглядає неправильно. Ти скопіював(ла) його повністю?

## Welcome screen

welcome-title = Ласкаво просимо до Vocadada!
welcome-body = Створи свій перший проєкт і почни вивчати слова.

## Mode tabs

tab-edit = ✏ Редагувати
tab-view = 👀 Переглянути
tab-test = 🎯 Тест

## Edit mode

languages = 🌍 Мови
language-1-hint = напр. англійська
language-2-hint = напр. французька
default-language-1 = Мова 1
default-language-2 = Мова 2
add-word-title = ➕ Додати нове слово
add = Додати
add-word-tip = Порада: натисни Enter, щоб перейти до наступного поля.
add-word-tip-desktop = Порада: натисни Enter, щоб перейти до наступного поля, і Shift+Enter для нового рядка в прикладі.
no-words-edit = Поки що немає слів! Додай перше слово нижче.
remove-word = Видалити це слово
example = 💬 Приклад
example-hint = Приклад (необов'язково)

## View mode

no-words-view = Поки що нічого переглядати. Додай слова в режимі ✏ Редагувати!
shuffle = 🔀 Перемішати
original-order = ↩ Початковий порядок
hide = 🙈 Сховати
tap-to-peek = ❓ Натисни, щоб підглянути
show-example = Показати приклад

## Test mode

no-words-test = Поки що немає слів для тесту. Спочатку додай їх у режимі ✏ Редагувати!
test-direction-question = У якому напрямку будемо тренуватися?
words-waiting =
    { $count ->
        [one] { $count } слово чекає на тебе!
        [few] { $count } слова чекають на тебе!
        [many] { $count } слів чекають на тебе!
       *[other] { $count } слова чекають на тебе!
    }
check-answer = Перевірити відповідь
the-answer-is = Правильна відповідь
answer-knew = ✔ Я знав(ла)
answer-did-not-know = ✖ Я не знав(ла)
finish = 🏁 Завершити
good-answers = Правильні відповіді
mistakes-label = Помилки

## Test results

result-perfect = ІДЕАЛЬНО! Ти суперзірка!
result-all-known = Ура! Ти вивчив(ла) всі слова!
result-good = Молодець! Так тримати!
result-start = Гарний початок! Повторення — мати навчання!
known-of-total = { $known } з { $total }
first-try = З першої спроби: { $count } з { $total }
mistakes-count =
    { $count ->
        [0] Жодної помилки!
        [one] { $count } помилка
        [few] { $count } помилки
        [many] { $count } помилок
       *[other] { $count } помилки
    }
words-to-practise = Слова для повторення
play-again = 🔁 Ще раз
practise-hard-words = 💪 Повторити складні слова
back = ⬅ Назад

## Messages

ok = OK
error-save = Не вдалося зберегти: { $error }
error-read = Не вдалося прочитати { $path }: { $error }
error-broken-file = Не вдалося прочитати збережені проєкти ({ $error }). Копію збережено в { $path }
error-no-data-folder = Папку з даними не знайдено
error-storage-unavailable = Сховище браузера недоступне
error-broken-storage = Не вдалося прочитати збережені проєкти ({ $error }). Копію збережено у сховищі браузера.
error-storage-full = Сховище браузера заповнене або заблоковане
