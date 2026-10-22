## Side panel

app-tagline = Учи слова весело!
language = Язык
my-projects = 📚 Мои проекты
no-projects = Пока нет проектов.
word-count =
    { $count ->
        [one] { $count } слово
        [few] { $count } слова
        [many] { $count } слов
       *[other] { $count } слова
    }
new-project = ➕ Новый проект
new-project-name-label = Название нового проекта:
new-project-name-hint = напр. Животные
create = ✔ Создать
cancel = Отмена
rename = ✏ Переименовать
delete = 🗑 Удалить

## Delete dialog

delete-title = Удалить этот проект?
delete-body = «{ $name }» и все его слова исчезнут навсегда.
delete-confirm = 🗑 Да, удалить
delete-keep = Нет, оставить

## Share and import

share = 📤 Поделиться
import = 📥 Импорт
share-title = Поделиться «{ $name }»
share-body = Скопируй проект как текст или как QR-картинку и отправь, например, через WhatsApp или Signal. Другой человек вставляет текст или сканирует QR-код в разделе 📥 Импорт.
qr-too-big = Этот проект слишком большой для QR-кода. Используй код ниже.
scan-qr = 📷 Сканировать QR-код
scan-stop = ✖ Выключить камеру
camera-error = Не удалось включить камеру. Пожалуйста, разреши доступ к камере.
copy-text = 📋 Копировать как текст
copy-qr = 📋 Копировать как QR-картинку
copied = ✔ Скопировано!
close = Закрыть
import-title = Импорт проекта
import-body = Вставь полученный код:
import-hint = Вставь код сюда
paste = 📋 Вставить
paste-text-or-qr = 📋 Вставить текст или QR-картинку
paste-empty = Нечего вставлять.
qr-not-found = На скопированной картинке нет QR-кода.
import-preview =
    { $count ->
        [one] «{ $name }» с { $count } словом
       *[other] «{ $name }» с { $count } словами
    }
import-invalid = Этот код выглядит неправильно. Ты скопировал его целиком?

## Welcome screen

welcome-title = Добро пожаловать в Vocadada!
welcome-body = Создай свой первый проект и начни учить слова.

## Mode tabs

tab-edit = ✏ Изменить
tab-view = 👀 Смотреть
tab-test = 🎯 Тест

## Edit mode

languages = 🌍 Языки
language-1-hint = напр. английский
language-2-hint = напр. французский
default-language-1 = Язык 1
default-language-2 = Язык 2
add-word-title = ➕ Добавить новое слово
add = Добавить
add-word-tip = Совет: нажми Enter, чтобы перейти к следующему полю.
add-word-tip-desktop = Совет: нажми Enter, чтобы перейти к следующему полю, и Shift+Enter для новой строки в примере.
no-words-edit = Пока нет слов! Добавь первое слово ниже.
remove-word = Удалить это слово
example = 💬 Пример
example-hint = Пример (необязательно)

## View mode

no-words-view = Пока нечего смотреть. Добавь слова в режиме ✏ Изменить!
shuffle = 🔀 Перемешать
original-order = ↩ Исходный порядок
hide = 🙈 Скрыть
tap-to-peek = ❓ Нажми, чтобы подсмотреть
show-example = Показать пример

## Test mode

no-words-test = Пока нет слов для теста. Сначала добавь их в режиме ✏ Изменить!
test-direction-question = В каком направлении будем тренироваться?
words-waiting =
    { $count ->
        [one] { $count } слово ждёт тебя!
        [few] { $count } слова ждут тебя!
        [many] { $count } слов ждут тебя!
       *[other] { $count } слова ждут тебя!
    }
check-answer = Проверить ответ
the-answer-is = Правильный ответ
answer-knew = ✔ Я знал(а)
answer-did-not-know = ✖ Я не знал(а)
finish = 🏁 Закончить
good-answers = Правильные ответы
mistakes-label = Ошибки

## Test results

result-perfect = ИДЕАЛЬНО! Ты суперзвезда!
result-all-known = Ура! Ты выучил(а) все слова!
result-good = Молодец! Так держать!
result-start = Хорошее начало! Повторение — мать учения!
known-of-total = { $known } из { $total }
first-try = С первой попытки: { $count } из { $total }
mistakes-count =
    { $count ->
        [0] Ни одной ошибки!
        [one] { $count } ошибка
        [few] { $count } ошибки
        [many] { $count } ошибок
       *[other] { $count } ошибки
    }
words-to-practise = Слова для повторения
play-again = 🔁 Ещё раз
practise-hard-words = 💪 Повторить трудные слова
back = ⬅ Назад

## Messages

ok = ОК
error-save = Не удалось сохранить: { $error }
error-read = Не удалось прочитать { $path }: { $error }
error-broken-file = Не удалось прочитать сохранённые проекты ({ $error }). Копия сохранена в { $path }
error-no-data-folder = Папка с данными не найдена
error-storage-unavailable = Хранилище браузера недоступно
error-broken-storage = Не удалось прочитать сохранённые проекты ({ $error }). Копия сохранена в хранилище браузера.
error-storage-full = Хранилище браузера заполнено или заблокировано
