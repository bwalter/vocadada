# All translations in one place: each message has one attribute per language (`.en`, `.de`, ...).
# build.rs checks that every language is complete and generates one .ftl file per language from this.

## Side panel

app-tagline =
    .en = Learn words the fun way!
    .de = Wörter lernen mit Spaß!
    .bar = Wörter lerna, aber mit Gaudi!
    .fr = Apprendre des mots en s’amusant !
    .es = ¡Aprende palabras de forma divertida!
    .pt = Aprende palavras de forma divertida!
    .it = Impara le parole divertendoti!
    .nl = Leer woordjes op een leuke manier!
    .da = Lær ord på en sjov måde!
    .nb = Lær ord på en morsom måte!
    .sv = Lär dig ord på ett roligt sätt!
    .fi = Opi sanoja hauskasti!
    .is = Lærðu orð á skemmtilegan hátt!
    .pl = Ucz się słówek na wesoło!
    .cs = Uč se slovíčka zábavně!
    .sk = Uč sa slovíčka zábavne!
    .hu = Tanulj szavakat játékosan!
    .hr = Uči riječi na zabavan način!
    .ro = Învață cuvinte în joacă!
    .sq = Mëso fjalë duke u argëtuar!
    .el = Μάθε λέξεις παίζοντας!
    .ru = Учи слова весело!
    .uk = Вивчай слова весело!
    .la = Disce verba ludendo!
    .grc = Μάνθανε τὰς λέξεις παίζων!
    .zh = 快乐学单词！
    .ko = 재미있게 단어를 배워요!
    .ja = 楽しく単語をおぼえよう！
    .ar = تعلم الكلمات بمتعة!

language =
    .en = Language
    .de = Sprache
    .bar = Sprach
    .fr = Langue
    .es = Idioma
    .pt = Língua
    .it = Lingua
    .nl = Taal
    .da = Sprog
    .nb = Språk
    .sv = Språk
    .fi = Kieli
    .is = Tungumál
    .pl = Język
    .cs = Jazyk
    .sk = Jazyk
    .hu = Nyelv
    .hr = Jezik
    .ro = Limba
    .sq = Gjuha
    .el = Γλώσσα
    .ru = Язык
    .uk = Мова
    .la = Lingua
    .grc = Γλῶττα
    .zh = 语言
    .ko = 언어
    .ja = 言語
    .ar = اللغة

my-projects =
    .en = 📚 My projects
    .de = 📚 Meine Projekte
    .bar = 📚 Meine Projekte
    .fr = 📚 Mes projets
    .es = 📚 Mis proyectos
    .pt = 📚 Os meus projetos
    .it = 📚 I miei progetti
    .nl = 📚 Mijn projecten
    .da = 📚 Mine projekter
    .nb = 📚 Mine prosjekter
    .sv = 📚 Mina projekt
    .fi = 📚 Omat projektit
    .is = 📚 Verkefnin mín
    .pl = 📚 Moje projekty
    .cs = 📚 Moje projekty
    .sk = 📚 Moje projekty
    .hu = 📚 Projektjeim
    .hr = 📚 Moji projekti
    .ro = 📚 Proiectele mele
    .sq = 📚 Projektet e mia
    .el = 📚 Τα έργα μου
    .ru = 📚 Мои проекты
    .uk = 📚 Мої проєкти
    .la = 📚 Opera mea
    .grc = 📚 Τὰ ἐμὰ ἔργα
    .zh = 📚 我的单词本
    .ko = 📚 내 단어장
    .ja = 📚 わたしの単語帳
    .ar = 📚 مشاريعي

no-projects =
    .en = No projects yet.
    .de = Noch keine Projekte.
    .bar = No koane Projekte.
    .fr = Pas encore de projet.
    .es = Todavía no hay proyectos.
    .pt = Ainda não há projetos.
    .it = Ancora nessun progetto.
    .nl = Nog geen projecten.
    .da = Ingen projekter endnu.
    .nb = Ingen prosjekter ennå.
    .sv = Inga projekt än.
    .fi = Ei vielä projekteja.
    .is = Engin verkefni enn.
    .pl = Nie ma jeszcze projektów.
    .cs = Zatím žádné projekty.
    .sk = Zatiaľ žiadne projekty.
    .hu = Még nincs projekt.
    .hr = Još nema projekata.
    .ro = Încă nu există proiecte.
    .sq = Ende nuk ka projekte.
    .el = Δεν υπάρχουν ακόμα έργα.
    .ru = Пока нет проектов.
    .uk = Поки що немає проєктів.
    .la = Nondum ulla opera.
    .grc = Οὐδὲν ἔργον ἔτι.
    .zh = 还没有单词本。
    .ko = 아직 단어장이 없어요.
    .ja = まだ単語帳がありません。
    .ar = لا توجد مشاريع بعد.

word-count =
    .en =
        { $count ->
            [one] { $count } word
           *[other] { $count } words
        }
    .de =
        { $count ->
            [one] { $count } Wort
           *[other] { $count } Wörter
        }
    .bar =
        { $count ->
            [one] { $count } Wort
           *[other] { $count } Wörter
        }
    .fr =
        { $count ->
            [one] { $count } mot
           *[other] { $count } mots
        }
    .es =
        { $count ->
            [one] { $count } palabra
           *[other] { $count } palabras
        }
    .pt =
        { $count ->
            [one] { $count } palavra
           *[other] { $count } palavras
        }
    .it =
        { $count ->
            [one] { $count } parola
           *[other] { $count } parole
        }
    .nl =
        { $count ->
            [one] { $count } woord
           *[other] { $count } woorden
        }
    .da =
        { $count ->
            [one] { $count } ord
           *[other] { $count } ord
        }
    .nb =
        { $count ->
            [one] { $count } ord
           *[other] { $count } ord
        }
    .sv =
        { $count ->
            [one] { $count } ord
           *[other] { $count } ord
        }
    .fi =
        { $count ->
            [one] { $count } sana
           *[other] { $count } sanaa
        }
    .is =
        { $count ->
            [one] { $count } orð
           *[other] { $count } orð
        }
    .pl =
        { $count ->
            [one] { $count } słowo
            [few] { $count } słowa
            [many] { $count } słów
           *[other] { $count } słowa
        }
    .cs =
        { $count ->
            [one] { $count } slovo
            [few] { $count } slova
            [many] { $count } slova
           *[other] { $count } slov
        }
    .sk =
        { $count ->
            [one] { $count } slovo
            [few] { $count } slová
            [many] { $count } slova
           *[other] { $count } slov
        }
    .hu =
        { $count ->
            [one] { $count } szó
           *[other] { $count } szó
        }
    .hr =
        { $count ->
            [one] { $count } riječ
            [few] { $count } riječi
           *[other] { $count } riječi
        }
    .ro =
        { $count ->
            [one] { $count } cuvânt
            [few] { $count } cuvinte
           *[other] { $count } de cuvinte
        }
    .sq =
        { $count ->
            [one] { $count } fjalë
           *[other] { $count } fjalë
        }
    .el =
        { $count ->
            [one] { $count } λέξη
           *[other] { $count } λέξεις
        }
    .ru =
        { $count ->
            [one] { $count } слово
            [few] { $count } слова
            [many] { $count } слов
           *[other] { $count } слова
        }
    .uk =
        { $count ->
            [one] { $count } слово
            [few] { $count } слова
            [many] { $count } слів
           *[other] { $count } слова
        }
    .la =
        { $count ->
            [one] { $count } verbum
           *[other] { $count } verba
        }
    .grc =
        { $count ->
            [one] { $count } λέξις
           *[other] { $count } λέξεις
        }
    .zh = { $count } 个单词
    .ko = 단어 { $count }개
    .ja = { $count } 語
    .ar =
        { $count ->
            [zero] لا كلمات
            [one] كلمة واحدة
            [two] كلمتان
            [few] { $count } كلمات
            [many] { $count } كلمة
           *[other] { $count } كلمة
        }

new-project =
    .en = ➕ New project
    .de = ➕ Neues Projekt
    .bar = ➕ Neis Projekt
    .fr = ➕ Nouveau projet
    .es = ➕ Nuevo proyecto
    .pt = ➕ Novo projeto
    .it = ➕ Nuovo progetto
    .nl = ➕ Nieuw project
    .da = ➕ Nyt projekt
    .nb = ➕ Nytt prosjekt
    .sv = ➕ Nytt projekt
    .fi = ➕ Uusi projekti
    .is = ➕ Nýtt verkefni
    .pl = ➕ Nowy projekt
    .cs = ➕ Nový projekt
    .sk = ➕ Nový projekt
    .hu = ➕ Új projekt
    .hr = ➕ Novi projekt
    .ro = ➕ Proiect nou
    .sq = ➕ Projekt i ri
    .el = ➕ Νέο έργο
    .ru = ➕ Новый проект
    .uk = ➕ Новий проєкт
    .la = ➕ Novum opus
    .grc = ➕ Νέον ἔργον
    .zh = ➕ 新建单词本
    .ko = ➕ 새 단어장
    .ja = ➕ 新しい単語帳
    .ar = ➕ مشروع جديد

new-project-name-label =
    .en = Name of the new project:
    .de = Name des neuen Projekts:
    .bar = Wia soi des neie Projekt hoaßn?
    .fr = Nom du nouveau projet :
    .es = Nombre del nuevo proyecto:
    .pt = Nome do novo projeto:
    .it = Nome del nuovo progetto:
    .nl = Naam van het nieuwe project:
    .da = Navn på det nye projekt:
    .nb = Navn på det nye prosjektet:
    .sv = Namn på det nya projektet:
    .fi = Uuden projektin nimi:
    .is = Heiti nýja verkefnisins:
    .pl = Nazwa nowego projektu:
    .cs = Název nového projektu:
    .sk = Názov nového projektu:
    .hu = Az új projekt neve:
    .hr = Naziv novog projekta:
    .ro = Numele noului proiect:
    .sq = Emri i projektit të ri:
    .el = Όνομα του νέου έργου:
    .ru = Название нового проекта:
    .uk = Назва нового проєкту:
    .la = Nomen novi operis:
    .grc = Ὄνομα τοῦ νέου ἔργου:
    .zh = 新单词本的名称：
    .ko = 새 단어장 이름:
    .ja = 新しい単語帳の名前：
    .ar = اسم المشروع الجديد:

new-project-name-hint =
    .en = e.g. Animals
    .de = z. B. Tiere
    .bar = z. B. Viecherl
    .fr = p. ex. Animaux
    .es = p. ej. Animales
    .pt = p. ex. Animais
    .it = es. Animali
    .nl = bv. Dieren
    .da = f.eks. Dyr
    .nb = f.eks. Dyr
    .sv = t.ex. Djur
    .fi = esim. Eläimet
    .is = t.d. Dýr
    .pl = np. Zwierzęta
    .cs = např. Zvířata
    .sk = napr. Zvieratá
    .hu = pl. Állatok
    .hr = npr. Životinje
    .ro = de ex. Animale
    .sq = p.sh. Kafshët
    .el = π.χ. Ζώα
    .ru = напр. Животные
    .uk = напр. Тварини
    .la = e.g. Animalia
    .grc = οἷον Ζῷα
    .zh = 例如：动物
    .ko = 예: 동물
    .ja = 例：どうぶつ
    .ar = مثلا: حيوانات

create =
    .en = ✔ Create
    .de = ✔ Erstellen
    .bar = ✔ Oleng
    .fr = ✔ Créer
    .es = ✔ Crear
    .pt = ✔ Criar
    .it = ✔ Crea
    .nl = ✔ Maken
    .da = ✔ Opret
    .nb = ✔ Opprett
    .sv = ✔ Skapa
    .fi = ✔ Luo
    .is = ✔ Búa til
    .pl = ✔ Utwórz
    .cs = ✔ Vytvořit
    .sk = ✔ Vytvoriť
    .hu = ✔ Létrehozás
    .hr = ✔ Stvori
    .ro = ✔ Creează
    .sq = ✔ Krijo
    .el = ✔ Δημιουργία
    .ru = ✔ Создать
    .uk = ✔ Створити
    .la = ✔ Crea
    .grc = ✔ Ποίησον
    .zh = ✔ 创建
    .ko = ✔ 만들기
    .ja = ✔ 作成
    .ar = ✔ إنشاء

cancel =
    .en = Cancel
    .de = Abbrechen
    .bar = Lass guad sei
    .fr = Annuler
    .es = Cancelar
    .pt = Cancelar
    .it = Annulla
    .nl = Annuleren
    .da = Annuller
    .nb = Avbryt
    .sv = Avbryt
    .fi = Peruuta
    .is = Hætta við
    .pl = Anuluj
    .cs = Zrušit
    .sk = Zrušiť
    .hu = Mégse
    .hr = Odustani
    .ro = Anulează
    .sq = Anulo
    .el = Ακύρωση
    .ru = Отмена
    .uk = Скасувати
    .la = Omitte
    .grc = Ἔασον
    .zh = 取消
    .ko = 취소
    .ja = キャンセル
    .ar = إلغاء

rename =
    .en = ✏ Rename
    .de = ✏ Umbenennen
    .bar = ✏ Umtaufa
    .fr = ✏ Renommer
    .es = ✏ Renombrar
    .pt = ✏ Mudar o nome
    .it = ✏ Rinomina
    .nl = ✏ Hernoemen
    .da = ✏ Omdøb
    .nb = ✏ Gi nytt navn
    .sv = ✏ Byt namn
    .fi = ✏ Nimeä uudelleen
    .is = ✏ Endurnefna
    .pl = ✏ Zmień nazwę
    .cs = ✏ Přejmenovat
    .sk = ✏ Premenovať
    .hu = ✏ Átnevezés
    .hr = ✏ Preimenuj
    .ro = ✏ Redenumește
    .sq = ✏ Riemërto
    .el = ✏ Μετονομασία
    .ru = ✏ Переименовать
    .uk = ✏ Перейменувати
    .la = ✏ Muta nomen
    .grc = ✏ Μετονόμασον
    .zh = ✏ 重命名
    .ko = ✏ 이름 바꾸기
    .ja = ✏ 名前を変更
    .ar = ✏ إعادة تسمية

delete =
    .en = 🗑 Delete
    .de = 🗑 Löschen
    .bar = 🗑 Wegdoa
    .fr = 🗑 Supprimer
    .es = 🗑 Borrar
    .pt = 🗑 Apagar
    .it = 🗑 Elimina
    .nl = 🗑 Verwijderen
    .da = 🗑 Slet
    .nb = 🗑 Slett
    .sv = 🗑 Ta bort
    .fi = 🗑 Poista
    .is = 🗑 Eyða
    .pl = 🗑 Usuń
    .cs = 🗑 Smazat
    .sk = 🗑 Vymazať
    .hu = 🗑 Törlés
    .hr = 🗑 Izbriši
    .ro = 🗑 Șterge
    .sq = 🗑 Fshi
    .el = 🗑 Διαγραφή
    .ru = 🗑 Удалить
    .uk = 🗑 Видалити
    .la = 🗑 Dele
    .grc = 🗑 Ἀπάλειψον
    .zh = 🗑 删除
    .ko = 🗑 삭제
    .ja = 🗑 削除
    .ar = 🗑 حذف

## Delete dialog

delete-title =
    .en = Delete this project?
    .de = Projekt löschen?
    .bar = Des Projekt wegdoa?
    .fr = Supprimer ce projet ?
    .es = ¿Borrar este proyecto?
    .pt = Apagar este projeto?
    .it = Eliminare questo progetto?
    .nl = Dit project verwijderen?
    .da = Slet dette projekt?
    .nb = Slette dette prosjektet?
    .sv = Ta bort det här projektet?
    .fi = Poistetaanko tämä projekti?
    .is = Eyða þessu verkefni?
    .pl = Usunąć ten projekt?
    .cs = Smazat tento projekt?
    .sk = Vymazať tento projekt?
    .hu = Törlöd ezt a projektet?
    .hr = Izbrisati ovaj projekt?
    .ro = Ștergi acest proiect?
    .sq = Ta fshij këtë projekt?
    .el = Διαγραφή αυτού του έργου;
    .ru = Удалить этот проект?
    .uk = Видалити цей проєкт?
    .la = Hoc opus delere vis?
    .grc = Ἆρ' ἀπαλείψεις τοῦτο τὸ ἔργον;
    .zh = 删除这个单词本？
    .ko = 이 단어장을 삭제할까요?
    .ja = この単語帳を削除しますか？
    .ar = هل تريد حذف هذا المشروع؟

delete-body =
    .en = "{ $name }" and all its words will be gone forever.
    .de = „{ $name }“ und alle seine Wörter sind dann für immer weg.
    .bar = „{ $name }“ und olle seine Wörter san dann fia oiwei weg.
    .fr = « { $name } » et tous ses mots seront supprimés pour toujours.
    .es = «{ $name }» y todas sus palabras desaparecerán para siempre.
    .pt = "{ $name }" e todas as suas palavras vão desaparecer para sempre.
    .it = «{ $name }» e tutte le sue parole spariranno per sempre.
    .nl = "{ $name }" en al zijn woorden zijn dan voor altijd weg.
    .da = »{ $name }« og alle dets ord forsvinder for altid.
    .nb = «{ $name }» og alle ordene i det blir borte for alltid.
    .sv = ”{ $name }” och alla dess ord försvinner för alltid.
    .fi = ”{ $name }” ja kaikki sen sanat katoavat lopullisesti.
    .is = „{ $name }“ og öll orðin í því hverfa að eilífu.
    .pl = „{ $name }” i wszystkie jego słowa znikną na zawsze.
    .cs = „{ $name }“ a všechna jeho slova navždy zmizí.
    .sk = „{ $name }“ a všetky jeho slová navždy zmiznú.
    .hu = „{ $name }” és minden szava végleg eltűnik.
    .hr = „{ $name }” i sve njegove riječi zauvijek će nestati.
    .ro = „{ $name }” și toate cuvintele lui vor dispărea pentru totdeauna.
    .sq = „{ $name }“ dhe të gjitha fjalët e tij do të zhduken përgjithmonë.
    .el = Το «{ $name }» και όλες οι λέξεις του θα χαθούν για πάντα.
    .ru = «{ $name }» и все его слова исчезнут навсегда.
    .uk = «{ $name }» і всі його слова зникнуть назавжди.
    .la = "{ $name }" et omnia eius verba in perpetuum peribunt.
    .grc = Τὸ «{ $name }» καὶ πᾶσαι αἱ λέξεις αὐτοῦ εἰς ἀεὶ ἀπολοῦνται.
    .zh = “{ $name }”和其中所有单词将被永久删除。
    .ko = "{ $name }"와(과) 모든 단어가 영원히 사라져요.
    .ja = 「{ $name }」とすべての単語が完全に消えます。
    .ar = سيختفي «{ $name }» وكل كلماته إلى الأبد.

delete-confirm =
    .en = 🗑 Yes, delete
    .de = 🗑 Ja, löschen
    .bar = 🗑 Jo, weg damit
    .fr = 🗑 Oui, supprimer
    .es = 🗑 Sí, borrar
    .pt = 🗑 Sim, apagar
    .it = 🗑 Sì, elimina
    .nl = 🗑 Ja, verwijderen
    .da = 🗑 Ja, slet
    .nb = 🗑 Ja, slett
    .sv = 🗑 Ja, ta bort
    .fi = 🗑 Kyllä, poista
    .is = 🗑 Já, eyða
    .pl = 🗑 Tak, usuń
    .cs = 🗑 Ano, smazat
    .sk = 🗑 Áno, vymazať
    .hu = 🗑 Igen, törlöm
    .hr = 🗑 Da, izbriši
    .ro = 🗑 Da, șterge
    .sq = 🗑 Po, fshije
    .el = 🗑 Ναι, διαγραφή
    .ru = 🗑 Да, удалить
    .uk = 🗑 Так, видалити
    .la = 🗑 Ita, dele
    .grc = 🗑 Ναί, ἀπάλειψον
    .zh = 🗑 是的，删除
    .ko = 🗑 네, 삭제할게요
    .ja = 🗑 はい、削除します
    .ar = 🗑 نعم، احذف

delete-keep =
    .en = No, keep it
    .de = Nein, behalten
    .bar = Na, des bleibt
    .fr = Non, le garder
    .es = No, guardarlo
    .pt = Não, manter
    .it = No, tienilo
    .nl = Nee, bewaren
    .da = Nej, behold det
    .nb = Nei, behold det
    .sv = Nej, behåll det
    .fi = Ei, säilytä
    .is = Nei, halda því
    .pl = Nie, zostaw
    .cs = Ne, nechat
    .sk = Nie, nechať
    .hu = Nem, megtartom
    .hr = Ne, zadrži
    .ro = Nu, păstrează-l
    .sq = Jo, mbaje
    .el = Όχι, να μείνει
    .ru = Нет, оставить
    .uk = Ні, залишити
    .la = Minime, serva
    .grc = Οὐ δῆτα, φύλαξον
    .zh = 不，保留
    .ko = 아니요, 그대로 둘게요
    .ja = いいえ、残します
    .ar = لا، احتفظ به

## Share and import

share =
    .en = 📤 Share
    .de = 📤 Teilen
    .bar = 📤 Teiln
    .fr = 📤 Partager
    .es = 📤 Compartir
    .pt = 📤 Partilhar
    .it = 📤 Condividi
    .nl = 📤 Delen
    .da = 📤 Del
    .nb = 📤 Del
    .sv = 📤 Dela
    .fi = 📤 Jaa
    .is = 📤 Deila
    .pl = 📤 Udostępnij
    .cs = 📤 Sdílet
    .sk = 📤 Zdieľať
    .hu = 📤 Megosztás
    .hr = 📤 Podijeli
    .ro = 📤 Distribuie
    .sq = 📤 Ndaj
    .el = 📤 Κοινοποίηση
    .ru = 📤 Поделиться
    .uk = 📤 Поділитися
    .la = 📤 Communica
    .grc = 📤 Μετάδος
    .zh = 📤 分享
    .ko = 📤 공유
    .ja = 📤 共有
    .ar = 📤 مشاركة

import =
    .en = 📥 Import
    .de = 📥 Importieren
    .bar = 📥 Reiholn
    .fr = 📥 Importer
    .es = 📥 Importar
    .pt = 📥 Importar
    .it = 📥 Importa
    .nl = 📥 Importeren
    .da = 📥 Importér
    .nb = 📥 Importer
    .sv = 📥 Importera
    .fi = 📥 Tuo
    .is = 📥 Flytja inn
    .pl = 📥 Importuj
    .cs = 📥 Importovat
    .sk = 📥 Importovať
    .hu = 📥 Importálás
    .hr = 📥 Uvezi
    .ro = 📥 Importă
    .sq = 📥 Importo
    .el = 📥 Εισαγωγή
    .ru = 📥 Импорт
    .uk = 📥 Імпорт
    .la = 📥 Importa
    .grc = 📥 Εἰσάγαγε
    .zh = 📥 导入
    .ko = 📥 가져오기
    .ja = 📥 読み込み
    .ar = 📥 استيراد

share-title =
    .en = Share "{ $name }"
    .de = „{ $name }“ teilen
    .bar = „{ $name }“ teiln
    .fr = Partager « { $name } »
    .es = Compartir «{ $name }»
    .pt = Partilhar "{ $name }"
    .it = Condividi «{ $name }»
    .nl = "{ $name }" delen
    .da = Del »{ $name }«
    .nb = Del «{ $name }»
    .sv = Dela ”{ $name }”
    .fi = Jaa ”{ $name }”
    .is = Deila „{ $name }“
    .pl = Udostępnij „{ $name }”
    .cs = Sdílet „{ $name }“
    .sk = Zdieľať „{ $name }“
    .hu = „{ $name }” megosztása
    .hr = Podijeli „{ $name }”
    .ro = Distribuie „{ $name }”
    .sq = Ndaj „{ $name }“
    .el = Κοινοποίηση «{ $name }»
    .ru = Поделиться «{ $name }»
    .uk = Поділитися «{ $name }»
    .la = Communica "{ $name }"
    .grc = Μετάδος τὸ «{ $name }»
    .zh = 分享“{ $name }”
    .ko = "{ $name }" 공유
    .ja = 「{ $name }」を共有
    .ar = مشاركة «{ $name }»

share-body =
    .en = Copy it as text or as a QR picture and send it, e.g. via WhatsApp or Signal. The other person pastes the text or scans the QR code under 📥 Import.
    .de = Kopiere das Projekt als Text oder als QR-Bild und schicke es z. B. per WhatsApp oder Signal. Die andere Person fügt den Text ein oder scannt den QR-Code unter 📥 Importieren.
    .bar = Kopier's ois Text oder ois QR-Buidl und schick's, z. B. mit WhatsApp oder Signal. Da andere fügt an Text ei oder scannt an QR-Code unter 📥 Reiholn.
    .fr = Copie le projet en texte ou en image QR et envoie-le, par ex. via WhatsApp ou Signal. L'autre personne colle le texte ou scanne le QR code sous 📥 Importer.
    .es = Cópialo como texto o como imagen QR y envíalo, p. ej. por WhatsApp o Signal. La otra persona pega el texto o escanea el código QR en 📥 Importar.
    .pt = Copia-o como texto ou como imagem QR e envia-o, p. ex. pelo WhatsApp ou Signal. A outra pessoa cola o texto ou lê o código QR em 📥 Importar.
    .it = Copialo come testo o come immagine QR e invialo, ad es. con WhatsApp o Signal. L'altra persona incolla il testo o scansiona il codice QR in 📥 Importa.
    .nl = Kopieer het als tekst of als QR-afbeelding en stuur het, bv. via WhatsApp of Signal. De ander plakt de tekst of scant de QR-code onder 📥 Importeren.
    .da = Kopiér det som tekst eller som QR-billede og send det, f.eks. via WhatsApp eller Signal. Den anden indsætter teksten eller scanner QR-koden under 📥 Importér.
    .nb = Kopier det som tekst eller som QR-bilde og send det, f.eks. med WhatsApp eller Signal. Den andre limer inn teksten eller skanner QR-koden under 📥 Importer.
    .sv = Kopiera det som text eller som QR-bild och skicka det, t.ex. via WhatsApp eller Signal. Den andra klistrar in texten eller skannar QR-koden under 📥 Importera.
    .fi = Kopioi se tekstinä tai QR-kuvana ja lähetä se esim. WhatsAppilla tai Signalilla. Toinen liittää tekstin tai skannaa QR-koodin kohdassa 📥 Tuo.
    .is = Afritaðu það sem texta eða QR-mynd og sendu það, t.d. með WhatsApp eða Signal. Hinn aðilinn límir textann inn eða skannar QR-kóðann undir 📥 Flytja inn.
    .pl = Skopiuj go jako tekst albo jako obrazek QR i wyślij, np. przez WhatsApp lub Signal. Druga osoba wkleja tekst albo skanuje kod QR w sekcji 📥 Importuj.
    .cs = Zkopíruj ho jako text nebo jako QR obrázek a pošli ho, např. přes WhatsApp nebo Signal. Druhá osoba vloží text nebo naskenuje QR kód v části 📥 Importovat.
    .sk = Skopíruj ho ako text alebo ako QR obrázok a pošli ho, napr. cez WhatsApp alebo Signal. Druhá osoba vloží text alebo naskenuje QR kód v časti 📥 Importovať.
    .hu = Másold ki szövegként vagy QR-képként, és küldd el, pl. WhatsAppon vagy Signalon. A másik fél beilleszti a szöveget, vagy beolvassa a QR-kódot az 📥 Importálás alatt.
    .hr = Kopiraj ga kao tekst ili kao QR sliku i pošalji, npr. putem WhatsAppa ili Signala. Druga osoba zalijepi tekst ili skenira QR kôd pod 📥 Uvezi.
    .ro = Copiază-l ca text sau ca imagine QR și trimite-l, de ex. pe WhatsApp sau Signal. Cealaltă persoană lipește textul sau scanează codul QR la 📥 Importă.
    .sq = Kopjoje si tekst ose si figurë QR dhe dërgoje, p.sh. me WhatsApp ose Signal. Personi tjetër ngjit tekstin ose skanon kodin QR te 📥 Importo.
    .el = Αντίγραψέ το ως κείμενο ή ως εικόνα QR και στείλ' το, π.χ. μέσω WhatsApp ή Signal. Ο άλλος επικολλά το κείμενο ή σαρώνει τον κωδικό QR στην 📥 Εισαγωγή.
    .ru = Скопируй проект как текст или как QR-картинку и отправь, например, через WhatsApp или Signal. Другой человек вставляет текст или сканирует QR-код в разделе 📥 Импорт.
    .uk = Скопіюй проєкт як текст або як QR-зображення і надішли, наприклад, через WhatsApp або Signal. Інша людина вставляє текст або сканує QR-код у розділі 📥 Імпорт.
    .la = Exscribe ut textum aut ut imaginem QR et mitte, e.g. per WhatsApp aut Signal. Alter textum inserit aut codicem QR sub 📥 Importa legit.
    .grc = Ἀντίγραψον ὡς κείμενον ἢ ὡς εἰκόνα QR καὶ πέμψον, οἷον διὰ WhatsApp ἢ Signal. Ὁ ἕτερος ἢ τὸ κείμενον ἐντίθησιν ἢ τὸν κώδικα QR ἀναγιγνώσκει ἐν τῷ 📥 Εἰσάγαγε.
    .zh = 以文字或二维码图片的形式复制并发送，例如通过微信、WhatsApp 或 Signal。对方在 📥 导入 中粘贴文字或扫描二维码。
    .ko = 텍스트나 QR 그림으로 복사해서 보내세요. 예: 카카오톡, WhatsApp, Signal. 받는 사람은 📥 가져오기에서 텍스트를 붙여넣거나 QR 코드를 스캔해요.
    .ja = テキストまたはQRコードの画像としてコピーし、LINE・WhatsApp・Signal などで送ってください。相手は 📥 読み込み でテキストを貼り付けるか、QRコードを読み取ります。
    .ar = انسخه كنص أو كصورة QR وأرسله، مثلا عبر WhatsApp أو Signal. يلصق الشخص الآخر النص أو يمسح رمز QR من 📥 استيراد.

qr-too-big =
    .en = This project is too big for a QR code. Use the code below.
    .de = Dieses Projekt ist zu groß für einen QR-Code. Nimm den Code unten.
    .bar = Des Projekt is z'groß fia an QR-Code. Nimm an Code drunt.
    .fr = Ce projet est trop grand pour un QR code. Utilise le code ci-dessous.
    .es = Este proyecto es demasiado grande para un código QR. Usa el código de abajo.
    .pt = Este projeto é demasiado grande para um código QR. Usa o código abaixo.
    .it = Questo progetto è troppo grande per un codice QR. Usa il codice qui sotto.
    .nl = Dit project is te groot voor een QR-code. Gebruik de code hieronder.
    .da = Dette projekt er for stort til en QR-kode. Brug koden nedenfor.
    .nb = Dette prosjektet er for stort for en QR-kode. Bruk koden nedenfor.
    .sv = Det här projektet är för stort för en QR-kod. Använd koden nedan.
    .fi = Tämä projekti on liian suuri QR-koodiksi. Käytä alla olevaa koodia.
    .is = Þetta verkefni er of stórt fyrir QR-kóða. Notaðu kóðann hér fyrir neðan.
    .pl = Ten projekt jest za duży na kod QR. Użyj kodu poniżej.
    .cs = Tento projekt je na QR kód příliš velký. Použij kód níže.
    .sk = Tento projekt je na QR kód príliš veľký. Použi kód nižšie.
    .hu = Ez a projekt túl nagy egy QR-kódhoz. Használd a lenti kódot.
    .hr = Ovaj projekt je prevelik za QR kôd. Upotrijebi kôd ispod.
    .ro = Acest proiect este prea mare pentru un cod QR. Folosește codul de mai jos.
    .sq = Ky projekt është shumë i madh për një kod QR. Përdor kodin më poshtë.
    .el = Αυτό το έργο είναι πολύ μεγάλο για κωδικό QR. Χρησιμοποίησε τον κωδικό παρακάτω.
    .ru = Этот проект слишком большой для QR-кода. Используй код ниже.
    .uk = Цей проєкт завеликий для QR-коду. Використай код нижче.
    .la = Hoc opus maius est quam ut codice QR contineatur. Codice infra utere.
    .grc = Τοῦτο τὸ ἔργον μεῖζόν ἐστιν ἢ ὥστε κώδικι QR χωρεῖσθαι. Χρῶ τῷ κώδικι τῷ κάτω.
    .zh = 这个单词本太大，无法生成二维码。请使用下面的代码。
    .ko = 이 단어장은 QR 코드로 만들기에 너무 커요. 아래 코드를 사용하세요.
    .ja = この単語帳はQRコードにするには大きすぎます。下のコードを使ってください。
    .ar = هذا المشروع كبير جدا على رمز QR. استخدم الرمز أدناه.

scan-qr =
    .en = 📷 Scan QR code
    .de = 📷 QR-Code scannen
    .bar = 📷 QR-Code scanna
    .fr = 📷 Scanner le QR code
    .es = 📷 Escanear código QR
    .pt = 📷 Ler código QR
    .it = 📷 Scansiona il codice QR
    .nl = 📷 QR-code scannen
    .da = 📷 Scan QR-kode
    .nb = 📷 Skann QR-kode
    .sv = 📷 Skanna QR-kod
    .fi = 📷 Skannaa QR-koodi
    .is = 📷 Skanna QR-kóða
    .pl = 📷 Zeskanuj kod QR
    .cs = 📷 Naskenovat QR kód
    .sk = 📷 Naskenovať QR kód
    .hu = 📷 QR-kód beolvasása
    .hr = 📷 Skeniraj QR kôd
    .ro = 📷 Scanează codul QR
    .sq = 📷 Skano kodin QR
    .el = 📷 Σάρωση κωδικού QR
    .ru = 📷 Сканировать QR-код
    .uk = 📷 Сканувати QR-код
    .la = 📷 Codicem QR lege
    .grc = 📷 Ἀνάγνωθι κώδικα QR
    .zh = 📷 扫描二维码
    .ko = 📷 QR 코드 스캔
    .ja = 📷 QRコードを読み取る
    .ar = 📷 مسح رمز QR

scan-stop =
    .en = ✖ Stop camera
    .de = ✖ Kamera aus
    .bar = ✖ Kamera aus
    .fr = ✖ Arrêter la caméra
    .es = ✖ Apagar la cámara
    .pt = ✖ Desligar a câmara
    .it = ✖ Spegni la fotocamera
    .nl = ✖ Camera uit
    .da = ✖ Sluk kameraet
    .nb = ✖ Slå av kameraet
    .sv = ✖ Stäng av kameran
    .fi = ✖ Sammuta kamera
    .is = ✖ Slökkva á myndavél
    .pl = ✖ Wyłącz kamerę
    .cs = ✖ Vypnout kameru
    .sk = ✖ Vypnúť kameru
    .hu = ✖ Kamera kikapcsolása
    .hr = ✖ Isključi kameru
    .ro = ✖ Oprește camera
    .sq = ✖ Fik kamerën
    .el = ✖ Κλείσιμο κάμερας
    .ru = ✖ Выключить камеру
    .uk = ✖ Вимкнути камеру
    .la = ✖ Claude cameram
    .grc = ✖ Παῦσον τὴν μηχανήν
    .zh = ✖ 关闭摄像头
    .ko = ✖ 카메라 끄기
    .ja = ✖ カメラを止める
    .ar = ✖ إيقاف الكاميرا

camera-error =
    .en = The camera could not be started. Please allow camera access.
    .de = Die Kamera konnte nicht gestartet werden. Bitte erlaube den Kamerazugriff.
    .bar = De Kamera mog ned ogeh. Bittschön erlaub an Kamerazugriff.
    .fr = La caméra n'a pas pu démarrer. Autorise l'accès à la caméra.
    .es = No se pudo iniciar la cámara. Permite el acceso a la cámara, por favor.
    .pt = Não foi possível ligar a câmara. Por favor, permite o acesso à câmara.
    .it = Impossibile avviare la fotocamera. Consenti l'accesso alla fotocamera.
    .nl = De camera kon niet worden gestart. Geef alsjeblieft toegang tot de camera.
    .da = Kameraet kunne ikke startes. Giv adgang til kameraet.
    .nb = Kameraet kunne ikke startes. Gi tilgang til kameraet.
    .sv = Kameran kunde inte startas. Tillåt åtkomst till kameran.
    .fi = Kameraa ei voitu käynnistää. Salli kameran käyttö.
    .is = Ekki tókst að ræsa myndavélina. Vinsamlegast leyfðu aðgang að myndavélinni.
    .pl = Nie udało się włączyć kamery. Zezwól na dostęp do kamery.
    .cs = Kameru se nepodařilo spustit. Povol prosím přístup ke kameře.
    .sk = Kameru sa nepodarilo spustiť. Povoľ, prosím, prístup ku kamere.
    .hu = Nem sikerült elindítani a kamerát. Kérlek, engedélyezd a kamera használatát.
    .hr = Kamera se nije mogla pokrenuti. Molimo dopusti pristup kameri.
    .ro = Camera nu a putut porni. Te rog să permiți accesul la cameră.
    .sq = Kamera nuk u nis dot. Të lutem, lejo qasjen në kamerë.
    .el = Η κάμερα δεν μπόρεσε να ξεκινήσει. Επίτρεψε την πρόσβαση στην κάμερα.
    .ru = Не удалось включить камеру. Пожалуйста, разреши доступ к камере.
    .uk = Не вдалося увімкнути камеру. Будь ласка, дозволь доступ до камери.
    .la = Camera incipi non potuit. Quaeso, aditum ad cameram permitte.
    .grc = Ἡ φωτογραφικὴ μηχανὴ οὐκ ἠδυνήθη ἄρξασθαι. Ἐπίτρεψον τὴν πρόσοδον.
    .zh = 无法启动摄像头。请允许访问摄像头。
    .ko = 카메라를 켤 수 없어요. 카메라 접근을 허용해 주세요.
    .ja = カメラを起動できませんでした。カメラへのアクセスを許可してください。
    .ar = تعذر تشغيل الكاميرا. يرجى السماح بالوصول إلى الكاميرا.

copy-text =
    .en = 📋 Copy as text
    .de = 📋 Als Text kopieren
    .bar = 📋 Ois Text kopiern
    .fr = 📋 Copier en texte
    .es = 📋 Copiar como texto
    .pt = 📋 Copiar como texto
    .it = 📋 Copia come testo
    .nl = 📋 Kopiëren als tekst
    .da = 📋 Kopiér som tekst
    .nb = 📋 Kopier som tekst
    .sv = 📋 Kopiera som text
    .fi = 📋 Kopioi tekstinä
    .is = 📋 Afrita sem texta
    .pl = 📋 Kopiuj jako tekst
    .cs = 📋 Kopírovat jako text
    .sk = 📋 Kopírovať ako text
    .hu = 📋 Másolás szövegként
    .hr = 📋 Kopiraj kao tekst
    .ro = 📋 Copiază ca text
    .sq = 📋 Kopjo si tekst
    .el = 📋 Αντιγραφή ως κείμενο
    .ru = 📋 Копировать как текст
    .uk = 📋 Копіювати як текст
    .la = 📋 Exscribe ut textum
    .grc = 📋 Ἀντίγραψον ὡς κείμενον
    .zh = 📋 复制为文字
    .ko = 📋 텍스트로 복사
    .ja = 📋 テキストとしてコピー
    .ar = 📋 نسخ كنص

copy-qr =
    .en = 📋 Copy as QR picture
    .de = 📋 Als QR-Bild kopieren
    .bar = 📋 Ois QR-Buidl kopiern
    .fr = 📋 Copier en image QR
    .es = 📋 Copiar como imagen QR
    .pt = 📋 Copiar como imagem QR
    .it = 📋 Copia come immagine QR
    .nl = 📋 Kopiëren als QR-afbeelding
    .da = 📋 Kopiér som QR-billede
    .nb = 📋 Kopier som QR-bilde
    .sv = 📋 Kopiera som QR-bild
    .fi = 📋 Kopioi QR-kuvana
    .is = 📋 Afrita sem QR-mynd
    .pl = 📋 Kopiuj jako obrazek QR
    .cs = 📋 Kopírovat jako QR obrázek
    .sk = 📋 Kopírovať ako QR obrázok
    .hu = 📋 Másolás QR-képként
    .hr = 📋 Kopiraj kao QR sliku
    .ro = 📋 Copiază ca imagine QR
    .sq = 📋 Kopjo si figurë QR
    .el = 📋 Αντιγραφή ως εικόνα QR
    .ru = 📋 Копировать как QR-картинку
    .uk = 📋 Копіювати як QR-зображення
    .la = 📋 Exscribe ut imaginem QR
    .grc = 📋 Ἀντίγραψον ὡς εἰκόνα QR
    .zh = 📋 复制为二维码图片
    .ko = 📋 QR 그림으로 복사
    .ja = 📋 QRコード画像としてコピー
    .ar = 📋 نسخ كصورة QR

copied =
    .en = ✔ Copied!
    .de = ✔ Kopiert!
    .bar = ✔ Kopiert!
    .fr = ✔ Copié !
    .es = ✔ ¡Copiado!
    .pt = ✔ Copiado!
    .it = ✔ Copiato!
    .nl = ✔ Gekopieerd!
    .da = ✔ Kopieret!
    .nb = ✔ Kopiert!
    .sv = ✔ Kopierat!
    .fi = ✔ Kopioitu!
    .is = ✔ Afritað!
    .pl = ✔ Skopiowano!
    .cs = ✔ Zkopírováno!
    .sk = ✔ Skopírované!
    .hu = ✔ Kimásolva!
    .hr = ✔ Kopirano!
    .ro = ✔ Copiat!
    .sq = ✔ U kopjua!
    .el = ✔ Αντιγράφηκε!
    .ru = ✔ Скопировано!
    .uk = ✔ Скопійовано!
    .la = ✔ Exscriptum!
    .grc = ✔ Ἀντεγράφη!
    .zh = ✔ 已复制！
    .ko = ✔ 복사했어요!
    .ja = ✔ コピーしました！
    .ar = ✔ تم النسخ!

close =
    .en = Close
    .de = Schließen
    .bar = Zuamacha
    .fr = Fermer
    .es = Cerrar
    .pt = Fechar
    .it = Chiudi
    .nl = Sluiten
    .da = Luk
    .nb = Lukk
    .sv = Stäng
    .fi = Sulje
    .is = Loka
    .pl = Zamknij
    .cs = Zavřít
    .sk = Zavrieť
    .hu = Bezárás
    .hr = Zatvori
    .ro = Închide
    .sq = Mbyll
    .el = Κλείσιμο
    .ru = Закрыть
    .uk = Закрити
    .la = Claude
    .grc = Κλεῖσον
    .zh = 关闭
    .ko = 닫기
    .ja = 閉じる
    .ar = إغلاق

import-title =
    .en = Import a project
    .de = Projekt importieren
    .bar = A Projekt reiholn
    .fr = Importer un projet
    .es = Importar un proyecto
    .pt = Importar um projeto
    .it = Importa un progetto
    .nl = Een project importeren
    .da = Importér et projekt
    .nb = Importer et prosjekt
    .sv = Importera ett projekt
    .fi = Tuo projekti
    .is = Flytja inn verkefni
    .pl = Importuj projekt
    .cs = Importovat projekt
    .sk = Importovať projekt
    .hu = Projekt importálása
    .hr = Uvezi projekt
    .ro = Importă un proiect
    .sq = Importo një projekt
    .el = Εισαγωγή έργου
    .ru = Импорт проекта
    .uk = Імпорт проєкту
    .la = Opus importa
    .grc = Εἰσάγαγε ἔργον
    .zh = 导入单词本
    .ko = 단어장 가져오기
    .ja = 単語帳を読み込む
    .ar = استيراد مشروع

import-body =
    .en = Paste the code you received:
    .de = Füge den Code ein, den du bekommen hast:
    .bar = Füg an Code ei, den'st kriagt host:
    .fr = Colle le code que tu as reçu :
    .es = Pega el código que has recibido:
    .pt = Cola o código que recebeste:
    .it = Incolla il codice che hai ricevuto:
    .nl = Plak de code die je hebt gekregen:
    .da = Indsæt den kode, du har fået:
    .nb = Lim inn koden du har fått:
    .sv = Klistra in koden du har fått:
    .fi = Liitä saamasi koodi:
    .is = Límdu inn kóðann sem þú fékkst:
    .pl = Wklej otrzymany kod:
    .cs = Vlož kód, který jsi dostal(a):
    .sk = Vlož kód, ktorý si dostal(a):
    .hu = Illeszd be a kapott kódot:
    .hr = Zalijepi kôd koji si dobio/la:
    .ro = Lipește codul primit:
    .sq = Ngjit kodin që more:
    .el = Επικόλλησε τον κωδικό που έλαβες:
    .ru = Вставь полученный код:
    .uk = Встав отриманий код:
    .la = Insere codicem quem accepisti:
    .grc = Ἔνθες τὸν κώδικα ὃν ἔλαβες:
    .zh = 粘贴你收到的代码：
    .ko = 받은 코드를 붙여넣으세요:
    .ja = 受け取ったコードを貼り付けてください：
    .ar = الصق الرمز الذي وصلك:

import-hint =
    .en = Paste the code here
    .de = Code hier einfügen
    .bar = Code do eifüng
    .fr = Colle le code ici
    .es = Pega el código aquí
    .pt = Cola o código aqui
    .it = Incolla qui il codice
    .nl = Plak de code hier
    .da = Indsæt koden her
    .nb = Lim inn koden her
    .sv = Klistra in koden här
    .fi = Liitä koodi tähän
    .is = Límdu kóðann hér
    .pl = Wklej kod tutaj
    .cs = Sem vlož kód
    .sk = Sem vlož kód
    .hu = Illeszd be ide a kódot
    .hr = Ovdje zalijepi kôd
    .ro = Lipește codul aici
    .sq = Ngjit kodin këtu
    .el = Επικόλλησε τον κωδικό εδώ
    .ru = Вставь код сюда
    .uk = Встав код сюди
    .la = Hic codicem insere
    .grc = Ἐνθάδε ἔνθες τὸν κώδικα
    .zh = 在此粘贴代码
    .ko = 여기에 코드를 붙여넣으세요
    .ja = ここにコードを貼り付け
    .ar = الصق الرمز هنا

paste =
    .en = 📋 Paste
    .de = 📋 Einfügen
    .bar = 📋 Eifüng
    .fr = 📋 Coller
    .es = 📋 Pegar
    .pt = 📋 Colar
    .it = 📋 Incolla
    .nl = 📋 Plakken
    .da = 📋 Indsæt
    .nb = 📋 Lim inn
    .sv = 📋 Klistra in
    .fi = 📋 Liitä
    .is = 📋 Líma
    .pl = 📋 Wklej
    .cs = 📋 Vložit
    .sk = 📋 Vložiť
    .hu = 📋 Beillesztés
    .hr = 📋 Zalijepi
    .ro = 📋 Lipește
    .sq = 📋 Ngjit
    .el = 📋 Επικόλληση
    .ru = 📋 Вставить
    .uk = 📋 Вставити
    .la = 📋 Insere
    .grc = 📋 Ἔνθες
    .zh = 📋 粘贴
    .ko = 📋 붙여넣기
    .ja = 📋 貼り付け
    .ar = 📋 لصق

paste-text-or-qr =
    .en = 📋 Paste text or QR picture
    .de = 📋 Text oder QR-Bild einfügen
    .bar = 📋 Text oder QR-Buidl eifüng
    .fr = 📋 Coller le texte ou l'image QR
    .es = 📋 Pegar texto o imagen QR
    .pt = 📋 Colar texto ou imagem QR
    .it = 📋 Incolla testo o immagine QR
    .nl = 📋 Tekst of QR-afbeelding plakken
    .da = 📋 Indsæt tekst eller QR-billede
    .nb = 📋 Lim inn tekst eller QR-bilde
    .sv = 📋 Klistra in text eller QR-bild
    .fi = 📋 Liitä teksti tai QR-kuva
    .is = 📋 Líma texta eða QR-mynd
    .pl = 📋 Wklej tekst albo obrazek QR
    .cs = 📋 Vložit text nebo QR obrázek
    .sk = 📋 Vložiť text alebo QR obrázok
    .hu = 📋 Szöveg vagy QR-kép beillesztése
    .hr = 📋 Zalijepi tekst ili QR sliku
    .ro = 📋 Lipește text sau imagine QR
    .sq = 📋 Ngjit tekst ose figurë QR
    .el = 📋 Επικόλληση κειμένου ή εικόνας QR
    .ru = 📋 Вставить текст или QR-картинку
    .uk = 📋 Вставити текст або QR-зображення
    .la = 📋 Insere textum aut imaginem QR
    .grc = 📋 Ἔνθες κείμενον ἢ εἰκόνα QR
    .zh = 📋 粘贴文字或二维码图片
    .ko = 📋 텍스트 또는 QR 그림 붙여넣기
    .ja = 📋 テキストかQR画像を貼り付け
    .ar = 📋 لصق نص أو صورة QR

paste-empty =
    .en = There is nothing to paste.
    .de = Es gibt nichts zum Einfügen.
    .bar = Do gibt's nix zum Eifüng.
    .fr = Il n'y a rien à coller.
    .es = No hay nada que pegar.
    .pt = Não há nada para colar.
    .it = Non c'è niente da incollare.
    .nl = Er is niets om te plakken.
    .da = Der er intet at indsætte.
    .nb = Det er ingenting å lime inn.
    .sv = Det finns inget att klistra in.
    .fi = Ei mitään liitettävää.
    .is = Það er ekkert til að líma.
    .pl = Nie ma nic do wklejenia.
    .cs = Není co vložit.
    .sk = Nie je čo vložiť.
    .hu = Nincs mit beilleszteni.
    .hr = Nema ničega za lijepljenje.
    .ro = Nu e nimic de lipit.
    .sq = Nuk ka asgjë për të ngjitur.
    .el = Δεν υπάρχει τίποτα για επικόλληση.
    .ru = Нечего вставлять.
    .uk = Немає чого вставляти.
    .la = Nihil est quod inseras.
    .grc = Οὐδέν ἐστιν ὃ ἐνθήσεις.
    .zh = 没有可粘贴的内容。
    .ko = 붙여넣을 내용이 없어요.
    .ja = 貼り付けるものがありません。
    .ar = لا يوجد شيء للصق.

qr-not-found =
    .en = No QR code found in the copied picture.
    .de = Im kopierten Bild wurde kein QR-Code gefunden.
    .bar = Im kopiertn Buidl is koa QR-Code.
    .fr = Aucun QR code trouvé dans l'image copiée.
    .es = No se encontró ningún código QR en la imagen copiada.
    .pt = Não foi encontrado nenhum código QR na imagem copiada.
    .it = Nessun codice QR trovato nell'immagine copiata.
    .nl = Geen QR-code gevonden in de gekopieerde afbeelding.
    .da = Der blev ikke fundet nogen QR-kode i det kopierede billede.
    .nb = Fant ingen QR-kode i det kopierte bildet.
    .sv = Ingen QR-kod hittades i den kopierade bilden.
    .fi = Kopioidusta kuvasta ei löytynyt QR-koodia.
    .is = Enginn QR-kóði fannst í afrituðu myndinni.
    .pl = Na skopiowanym obrazku nie ma kodu QR.
    .cs = Na zkopírovaném obrázku není žádný QR kód.
    .sk = Na skopírovanom obrázku nie je žiadny QR kód.
    .hu = A kimásolt képen nincs QR-kód.
    .hr = Na kopiranoj slici nema QR kôda.
    .ro = Nu s-a găsit niciun cod QR în imaginea copiată.
    .sq = Në figurën e kopjuar nuk u gjet asnjë kod QR.
    .el = Δεν βρέθηκε κωδικός QR στην αντιγραμμένη εικόνα.
    .ru = На скопированной картинке нет QR-кода.
    .uk = На скопійованому зображенні немає QR-коду.
    .la = In imagine exscripta nullus codex QR inventus est.
    .grc = Ἐν τῇ ἀντιγραφείσῃ εἰκόνι οὐδεὶς κῶδιξ QR εὑρέθη.
    .zh = 复制的图片中没有找到二维码。
    .ko = 복사한 그림에서 QR 코드를 찾지 못했어요.
    .ja = コピーした画像にQRコードが見つかりません。
    .ar = لم يتم العثور على رمز QR في الصورة المنسوخة.

import-preview =
    .en =
        { $count ->
            [one] "{ $name }" with { $count } word
           *[other] "{ $name }" with { $count } words
        }
    .de =
        { $count ->
            [one] „{ $name }“ mit { $count } Wort
           *[other] „{ $name }“ mit { $count } Wörtern
        }
    .bar =
        { $count ->
            [one] „{ $name }“ mit { $count } Wort
           *[other] „{ $name }“ mit { $count } Wörter
        }
    .fr =
        { $count ->
            [one] « { $name } » avec { $count } mot
           *[other] « { $name } » avec { $count } mots
        }
    .es =
        { $count ->
            [one] «{ $name }» con { $count } palabra
           *[other] «{ $name }» con { $count } palabras
        }
    .pt =
        { $count ->
            [one] "{ $name }" com { $count } palavra
           *[other] "{ $name }" com { $count } palavras
        }
    .it =
        { $count ->
            [one] «{ $name }» con { $count } parola
           *[other] «{ $name }» con { $count } parole
        }
    .nl =
        { $count ->
            [one] "{ $name }" met { $count } woord
           *[other] "{ $name }" met { $count } woorden
        }
    .da =
        { $count ->
            [one] »{ $name }« med { $count } ord
           *[other] »{ $name }« med { $count } ord
        }
    .nb =
        { $count ->
            [one] «{ $name }» med { $count } ord
           *[other] «{ $name }» med { $count } ord
        }
    .sv =
        { $count ->
            [one] ”{ $name }” med { $count } ord
           *[other] ”{ $name }” med { $count } ord
        }
    .fi =
        { $count ->
            [one] ”{ $name }”, { $count } sana
           *[other] ”{ $name }”, { $count } sanaa
        }
    .is =
        { $count ->
            [one] „{ $name }“ með { $count } orði
           *[other] „{ $name }“ með { $count } orðum
        }
    .pl =
        { $count ->
            [one] „{ $name }” z { $count } słowem
           *[other] „{ $name }” z { $count } słowami
        }
    .cs =
        { $count ->
            [one] „{ $name }“ s { $count } slovem
           *[other] „{ $name }“ s { $count } slovy
        }
    .sk =
        { $count ->
            [one] „{ $name }“ s { $count } slovom
           *[other] „{ $name }“ s { $count } slovami
        }
    .hu =
        { $count ->
            [one] „{ $name }” – { $count } szó
           *[other] „{ $name }” – { $count } szó
        }
    .hr =
        { $count ->
            [one] „{ $name }” s { $count } riječju
           *[other] „{ $name }” s { $count } riječi
        }
    .ro =
        { $count ->
            [one] „{ $name }” cu { $count } cuvânt
            [few] „{ $name }” cu { $count } cuvinte
           *[other] „{ $name }” cu { $count } de cuvinte
        }
    .sq =
        { $count ->
            [one] „{ $name }“ me { $count } fjalë
           *[other] „{ $name }“ me { $count } fjalë
        }
    .el =
        { $count ->
            [one] «{ $name }» με { $count } λέξη
           *[other] «{ $name }» με { $count } λέξεις
        }
    .ru =
        { $count ->
            [one] «{ $name }» с { $count } словом
           *[other] «{ $name }» с { $count } словами
        }
    .uk =
        { $count ->
            [one] «{ $name }» з { $count } словом
           *[other] «{ $name }» з { $count } словами
        }
    .la =
        { $count ->
            [one] "{ $name }" cum { $count } verbo
           *[other] "{ $name }" cum { $count } verbis
        }
    .grc =
        { $count ->
            [one] «{ $name }» σὺν { $count } λέξει
           *[other] «{ $name }» σὺν { $count } λέξεσιν
        }
    .zh = “{ $name }”，共 { $count } 个单词
    .ko = "{ $name }" (단어 { $count }개)
    .ja = 「{ $name }」（{ $count } 語）
    .ar =
        «{ $name }» – { $count ->
            [zero] لا كلمات
            [one] كلمة واحدة
            [two] كلمتان
            [few] { $count } كلمات
            [many] { $count } كلمة
           *[other] { $count } كلمة
        }

import-invalid =
    .en = This code doesn't look right. Did you copy all of it?
    .de = Dieser Code stimmt nicht. Hast du alles kopiert?
    .bar = Der Code schaugt ned recht aus. Host'n ganz kopiert?
    .fr = Ce code n'est pas correct. As-tu tout copié ?
    .es = Este código no parece correcto. ¿Lo has copiado entero?
    .pt = Este código não parece correto. Copiaste-o todo?
    .it = Questo codice non sembra giusto. L'hai copiato tutto?
    .nl = Deze code lijkt niet te kloppen. Heb je alles gekopieerd?
    .da = Denne kode ser ikke rigtig ud. Kopierede du det hele?
    .nb = Denne koden ser ikke riktig ut. Kopierte du hele?
    .sv = Den här koden ser inte rätt ut. Kopierade du allt?
    .fi = Tämä koodi ei näytä oikealta. Kopioitko sen kokonaan?
    .is = Þessi kóði lítur ekki rétt út. Afritaðirðu hann allan?
    .pl = Ten kod nie wygląda dobrze. Czy skopiowano całość?
    .cs = Tento kód nevypadá správně. Zkopíroval(a) jsi ho celý?
    .sk = Tento kód nevyzerá správne. Skopíroval(a) si ho celý?
    .hu = Ez a kód nem tűnik helyesnek. Az egészet kimásoltad?
    .hr = Ovaj kôd ne izgleda ispravno. Jesi li ga kopirao/la cijelog?
    .ro = Codul acesta nu pare corect. L-ai copiat în întregime?
    .sq = Ky kod nuk duket i saktë. A e kopjove të gjithin?
    .el = Αυτός ο κωδικός δεν φαίνεται σωστός. Τον αντέγραψες ολόκληρο;
    .ru = Этот код выглядит неправильно. Ты скопировал его целиком?
    .uk = Цей код виглядає неправильно. Ти скопіював(ла) його повністю?
    .la = Hic codex rectus non videtur. Totumne exscripsisti?
    .grc = Οὗτος ὁ κῶδιξ οὐκ ὀρθὸς φαίνεται. Ἆρα ὅλον ἀντέγραψας;
    .zh = 这个代码好像不对。你复制完整了吗？
    .ko = 코드가 올바르지 않은 것 같아요. 전부 복사했나요?
    .ja = このコードは正しくないようです。全部コピーしましたか？
    .ar = يبدو أن هذا الرمز غير صحيح. هل نسخته كاملا؟

## Welcome screen

welcome-title =
    .en = Welcome to Vocadada!
    .de = Willkommen bei Vocadada!
    .bar = Servus bei Vocadada!
    .fr = Bienvenue dans Vocadada !
    .es = ¡Bienvenido a Vocadada!
    .pt = Bem-vindo ao Vocadada!
    .it = Benvenuto in Vocadada!
    .nl = Welkom bij Vocadada!
    .da = Velkommen til Vocadada!
    .nb = Velkommen til Vocadada!
    .sv = Välkommen till Vocadada!
    .fi = Tervetuloa Vocadadaan!
    .is = Velkomin í Vocadada!
    .pl = Witaj w Vocadadzie!
    .cs = Vítej ve Vocadadě!
    .sk = Vitaj vo Vocadade!
    .hu = Üdv a Vocadadában!
    .hr = Dobro došli u Vocadadu!
    .ro = Bun venit la Vocadada!
    .sq = Mirë se erdhe në Vocadada!
    .el = Καλώς ήρθες στο Vocadada!
    .ru = Добро пожаловать в Vocadada!
    .uk = Ласкаво просимо до Vocadada!
    .la = Salve! Bene venisti ad Vocadada!
    .grc = Χαῖρε! Καλῶς ἦλθες εἰς τὴν Vocadada!
    .zh = 欢迎来到 Vocadada！
    .ko = Vocadada에 오신 것을 환영해요!
    .ja = Vocadada へようこそ！
    .ar = مرحبا بك في Vocadada!

welcome-body =
    .en = Create your first project to start learning words.
    .de = Erstelle dein erstes Projekt und lerne neue Wörter.
    .bar = Leg dei erschts Projekt o, dann geht's los mit'm Wörterlerna.
    .fr = Crée ton premier projet pour commencer à apprendre des mots.
    .es = Crea tu primer proyecto para empezar a aprender palabras.
    .pt = Cria o teu primeiro projeto para começares a aprender palavras.
    .it = Crea il tuo primo progetto per iniziare a imparare le parole.
    .nl = Maak je eerste project om woordjes te gaan leren.
    .da = Opret dit første projekt for at begynde at lære ord.
    .nb = Lag ditt første prosjekt for å begynne å lære ord.
    .sv = Skapa ditt första projekt för att börja lära dig ord.
    .fi = Luo ensimmäinen projektisi ja aloita sanojen opettelu.
    .is = Búðu til fyrsta verkefnið þitt til að byrja að læra orð.
    .pl = Utwórz pierwszy projekt i zacznij uczyć się słówek.
    .cs = Vytvoř si první projekt a začni se učit slovíčka.
    .sk = Vytvor si prvý projekt a začni sa učiť slovíčka.
    .hu = Hozd létre az első projektedet, és kezdd el tanulni a szavakat!
    .hr = Napravi svoj prvi projekt i počni učiti riječi.
    .ro = Creează-ți primul proiect ca să începi să înveți cuvinte.
    .sq = Krijo projektin tënd të parë për të filluar të mësosh fjalë.
    .el = Δημιούργησε το πρώτο σου έργο για να αρχίσεις να μαθαίνεις λέξεις.
    .ru = Создай свой первый проект и начни учить слова.
    .uk = Створи свій перший проєкт і почни вивчати слова.
    .la = Primum opus tuum crea ut verba discere incipias.
    .grc = Ποίησον τὸ πρῶτον ἔργον σου, ἵνα λέξεις μανθάνειν ἄρξῃ.
    .zh = 创建你的第一个单词本，开始学单词吧。
    .ko = 첫 단어장을 만들고 단어를 배워 보세요.
    .ja = 最初の単語帳を作って、単語をおぼえはじめよう。
    .ar = أنشئ مشروعك الأول لتبدأ بتعلم الكلمات.

## Mode tabs

tab-edit =
    .en = ✏ Edit
    .de = ✏ Bearbeiten
    .bar = ✏ Bearbatn
    .fr = ✏ Modifier
    .es = ✏ Editar
    .pt = ✏ Editar
    .it = ✏ Modifica
    .nl = ✏ Bewerken
    .da = ✏ Rediger
    .nb = ✏ Rediger
    .sv = ✏ Redigera
    .fi = ✏ Muokkaa
    .is = ✏ Breyta
    .pl = ✏ Edytuj
    .cs = ✏ Upravit
    .sk = ✏ Upraviť
    .hu = ✏ Szerkesztés
    .hr = ✏ Uredi
    .ro = ✏ Editează
    .sq = ✏ Ndrysho
    .el = ✏ Επεξεργασία
    .ru = ✏ Изменить
    .uk = ✏ Редагувати
    .la = ✏ Muta
    .grc = ✏ Μεταβάλλε
    .zh = ✏ 编辑
    .ko = ✏ 편집
    .ja = ✏ 編集
    .ar = ✏ تعديل

tab-view =
    .en = 👀 View
    .de = 👀 Ansehen
    .bar = 👀 Oschaun
    .fr = 👀 Voir
    .es = 👀 Ver
    .pt = 👀 Ver
    .it = 👀 Guarda
    .nl = 👀 Bekijken
    .da = 👀 Se
    .nb = 👀 Se
    .sv = 👀 Visa
    .fi = 👀 Katso
    .is = 👀 Skoða
    .pl = 👀 Przeglądaj
    .cs = 👀 Prohlížet
    .sk = 👀 Prezerať
    .hu = 👀 Nézet
    .hr = 👀 Pregledaj
    .ro = 👀 Vezi
    .sq = 👀 Shiko
    .el = 👀 Προβολή
    .ru = 👀 Смотреть
    .uk = 👀 Переглянути
    .la = 👀 Specta
    .grc = 👀 Θεῶ
    .zh = 👀 浏览
    .ko = 👀 보기
    .ja = 👀 見る
    .ar = 👀 عرض

tab-test =
    .en = 🎯 Test
    .de = 🎯 Testen
    .bar = 🎯 Testn
    .fr = 🎯 Tester
    .es = 🎯 Prueba
    .pt = 🎯 Teste
    .it = 🎯 Verifica
    .nl = 🎯 Overhoren
    .da = 🎯 Test
    .nb = 🎯 Test
    .sv = 🎯 Förhör
    .fi = 🎯 Testaa
    .is = 🎯 Prófa
    .pl = 🎯 Test
    .cs = 🎯 Test
    .sk = 🎯 Test
    .hu = 🎯 Teszt
    .hr = 🎯 Provjera
    .ro = 🎯 Test
    .sq = 🎯 Provë
    .el = 🎯 Τεστ
    .ru = 🎯 Тест
    .uk = 🎯 Тест
    .la = 🎯 Proba
    .grc = 🎯 Πειρῶ
    .zh = 🎯 测试
    .ko = 🎯 테스트
    .ja = 🎯 テスト
    .ar = 🎯 اختبار

## Edit mode

languages =
    .en = 🌍 Languages
    .de = 🌍 Sprachen
    .bar = 🌍 Sprachn
    .fr = 🌍 Langues
    .es = 🌍 Idiomas
    .pt = 🌍 Línguas
    .it = 🌍 Lingue
    .nl = 🌍 Talen
    .da = 🌍 Sprog
    .nb = 🌍 Språk
    .sv = 🌍 Språk
    .fi = 🌍 Kielet
    .is = 🌍 Tungumál
    .pl = 🌍 Języki
    .cs = 🌍 Jazyky
    .sk = 🌍 Jazyky
    .hu = 🌍 Nyelvek
    .hr = 🌍 Jezici
    .ro = 🌍 Limbi
    .sq = 🌍 Gjuhët
    .el = 🌍 Γλώσσες
    .ru = 🌍 Языки
    .uk = 🌍 Мови
    .la = 🌍 Linguae
    .grc = 🌍 Γλῶτται
    .zh = 🌍 语言
    .ko = 🌍 언어
    .ja = 🌍 言語
    .ar = 🌍 اللغات

language-1-hint =
    .en = e.g. English
    .de = z. B. Deutsch
    .bar = z. B. Englisch
    .fr = p. ex. Français
    .es = p. ej. Inglés
    .pt = p. ex. Inglês
    .it = es. inglese
    .nl = bv. Engels
    .da = f.eks. engelsk
    .nb = f.eks. engelsk
    .sv = t.ex. engelska
    .fi = esim. englanti
    .is = t.d. enska
    .pl = np. angielski
    .cs = např. angličtina
    .sk = napr. angličtina
    .hu = pl. angol
    .hr = npr. engleski
    .ro = de ex. engleză
    .sq = p.sh. anglisht
    .el = π.χ. Αγγλικά
    .ru = напр. английский
    .uk = напр. англійська
    .la = e.g. Anglica
    .grc = οἷον Ἀγγλική
    .zh = 例如：英语
    .ko = 예: 영어
    .ja = 例：英語
    .ar = مثلا: الإنجليزية

language-2-hint =
    .en = e.g. French
    .de = z. B. Französisch
    .bar = z. B. Französisch
    .fr = p. ex. Anglais
    .es = p. ej. Francés
    .pt = p. ex. Francês
    .it = es. francese
    .nl = bv. Frans
    .da = f.eks. fransk
    .nb = f.eks. fransk
    .sv = t.ex. franska
    .fi = esim. ranska
    .is = t.d. franska
    .pl = np. francuski
    .cs = např. francouzština
    .sk = napr. francúzština
    .hu = pl. francia
    .hr = npr. francuski
    .ro = de ex. franceză
    .sq = p.sh. frëngjisht
    .el = π.χ. Γαλλικά
    .ru = напр. французский
    .uk = напр. французька
    .la = e.g. Francogallica
    .grc = οἷον Γαλλική
    .zh = 例如：法语
    .ko = 예: 프랑스어
    .ja = 例：フランス語
    .ar = مثلا: الفرنسية

default-language-1 =
    .en = Language 1
    .de = Sprache 1
    .bar = Sprach 1
    .fr = Langue 1
    .es = Idioma 1
    .pt = Língua 1
    .it = Lingua 1
    .nl = Taal 1
    .da = Sprog 1
    .nb = Språk 1
    .sv = Språk 1
    .fi = Kieli 1
    .is = Tungumál 1
    .pl = Język 1
    .cs = Jazyk 1
    .sk = Jazyk 1
    .hu = 1. nyelv
    .hr = Jezik 1
    .ro = Limba 1
    .sq = Gjuha 1
    .el = Γλώσσα 1
    .ru = Язык 1
    .uk = Мова 1
    .la = Lingua I
    .grc = Γλῶττα Αʹ
    .zh = 语言 1
    .ko = 언어 1
    .ja = 言語 1
    .ar = اللغة 1

default-language-2 =
    .en = Language 2
    .de = Sprache 2
    .bar = Sprach 2
    .fr = Langue 2
    .es = Idioma 2
    .pt = Língua 2
    .it = Lingua 2
    .nl = Taal 2
    .da = Sprog 2
    .nb = Språk 2
    .sv = Språk 2
    .fi = Kieli 2
    .is = Tungumál 2
    .pl = Język 2
    .cs = Jazyk 2
    .sk = Jazyk 2
    .hu = 2. nyelv
    .hr = Jezik 2
    .ro = Limba 2
    .sq = Gjuha 2
    .el = Γλώσσα 2
    .ru = Язык 2
    .uk = Мова 2
    .la = Lingua II
    .grc = Γλῶττα Βʹ
    .zh = 语言 2
    .ko = 언어 2
    .ja = 言語 2
    .ar = اللغة 2

add-word-title =
    .en = ➕ Add a new word
    .de = ➕ Neues Wort hinzufügen
    .bar = ➕ A neis Wort dazua
    .fr = ➕ Ajouter un mot
    .es = ➕ Añadir una palabra nueva
    .pt = ➕ Adicionar uma palavra nova
    .it = ➕ Aggiungi una nuova parola
    .nl = ➕ Nieuw woord toevoegen
    .da = ➕ Tilføj et nyt ord
    .nb = ➕ Legg til et nytt ord
    .sv = ➕ Lägg till ett nytt ord
    .fi = ➕ Lisää uusi sana
    .is = ➕ Bæta við nýju orði
    .pl = ➕ Dodaj nowe słowo
    .cs = ➕ Přidat nové slovo
    .sk = ➕ Pridať nové slovo
    .hu = ➕ Új szó hozzáadása
    .hr = ➕ Dodaj novu riječ
    .ro = ➕ Adaugă un cuvânt nou
    .sq = ➕ Shto një fjalë të re
    .el = ➕ Πρόσθεσε μια νέα λέξη
    .ru = ➕ Добавить новое слово
    .uk = ➕ Додати нове слово
    .la = ➕ Novum verbum adde
    .grc = ➕ Πρόσθες νέαν λέξιν
    .zh = ➕ 添加新单词
    .ko = ➕ 새 단어 추가
    .ja = ➕ 新しい単語を追加
    .ar = ➕ أضف كلمة جديدة

add =
    .en = Add
    .de = Hinzufügen
    .bar = Dazua
    .fr = Ajouter
    .es = Añadir
    .pt = Adicionar
    .it = Aggiungi
    .nl = Toevoegen
    .da = Tilføj
    .nb = Legg til
    .sv = Lägg till
    .fi = Lisää
    .is = Bæta við
    .pl = Dodaj
    .cs = Přidat
    .sk = Pridať
    .hu = Hozzáadás
    .hr = Dodaj
    .ro = Adaugă
    .sq = Shto
    .el = Προσθήκη
    .ru = Добавить
    .uk = Додати
    .la = Adde
    .grc = Πρόσθες
    .zh = 添加
    .ko = 추가
    .ja = 追加
    .ar = إضافة

add-word-tip =
    .en = Tip: press Enter to jump to the next box.
    .de = Tipp: Mit Enter springst du ins nächste Feld.
    .bar = Tipp: Mit Enter kimmst ins nächste Feld.
    .fr = Astuce : appuie sur Entrée pour passer à la case suivante.
    .es = Consejo: pulsa Intro para pasar a la siguiente casilla.
    .pt = Dica: carrega em Enter para passar para o campo seguinte.
    .it = Suggerimento: premi Invio per passare alla casella successiva.
    .nl = Tip: druk op Enter om naar het volgende vak te gaan.
    .da = Tip: tryk på Enter for at gå til næste felt.
    .nb = Tips: trykk Enter for å gå til neste felt.
    .sv = Tips: tryck på Enter för att gå till nästa ruta.
    .fi = Vinkki: paina Enter siirtyäksesi seuraavaan kenttään.
    .is = Ábending: ýttu á Enter til að fara í næsta reit.
    .pl = Wskazówka: naciśnij Enter, aby przejść do następnego pola.
    .cs = Tip: Enterem přeskočíš do dalšího pole.
    .sk = Tip: Enterom prejdeš do ďalšieho poľa.
    .hu = Tipp: Enterrel a következő mezőre ugorhatsz.
    .hr = Savjet: pritisni Enter za prelazak u sljedeće polje.
    .ro = Sfat: apasă Enter ca să treci la căsuța următoare.
    .sq = Këshillë: shtyp Enter për të kaluar në fushën tjetër.
    .el = Συμβουλή: πάτα Enter για να πας στο επόμενο πεδίο.
    .ru = Совет: нажми Enter, чтобы перейти к следующему полю.
    .uk = Порада: натисни Enter, щоб перейти до наступного поля.
    .la = Consilium: preme Enter ut ad proximam capsam transeas.
    .grc = Συμβουλή: πίεσον Enter, ἵνα εἰς τὸ ἑπόμενον πεδίον μεταβῇς.
    .zh = 提示：按 Enter 跳到下一个输入框。
    .ko = 팁: Enter를 누르면 다음 칸으로 넘어가요.
    .ja = ヒント：Enter で次の欄に進みます。
    .ar = نصيحة: اضغط Enter للانتقال إلى الخانة التالية.

add-word-tip-desktop =
    .en = Tip: press Enter to jump to the next box, Shift+Enter for a new line in the example.
    .de = Tipp: Mit Enter springst du ins nächste Feld, mit Umschalt+Enter gibt es eine neue Zeile im Beispiel.
    .bar = Tipp: Mit Enter kimmst ins nächste Feld, mit Umschalt+Enter gibt's a neie Zeil im Beispui.
    .fr = Astuce : appuie sur Entrée pour passer à la case suivante, Maj+Entrée pour une nouvelle ligne dans l'exemple.
    .es = Consejo: pulsa Intro para pasar a la siguiente casilla y Mayús+Intro para una línea nueva en el ejemplo.
    .pt = Dica: carrega em Enter para passar para o campo seguinte e em Shift+Enter para uma nova linha no exemplo.
    .it = Suggerimento: premi Invio per passare alla casella successiva e Maiusc+Invio per andare a capo nell'esempio.
    .nl = Tip: druk op Enter om naar het volgende vak te gaan, Shift+Enter voor een nieuwe regel in het voorbeeld.
    .da = Tip: tryk på Enter for at gå til næste felt og Shift+Enter for en ny linje i eksemplet.
    .nb = Tips: trykk Enter for å gå til neste felt, og Shift+Enter for en ny linje i eksempelet.
    .sv = Tips: tryck på Enter för att gå till nästa ruta och Shift+Enter för en ny rad i exemplet.
    .fi = Vinkki: paina Enter siirtyäksesi seuraavaan kenttään ja Shift+Enter saadaksesi uuden rivin esimerkkiin.
    .is = Ábending: ýttu á Enter til að fara í næsta reit og Shift+Enter fyrir nýja línu í dæminu.
    .pl = Wskazówka: naciśnij Enter, aby przejść do następnego pola, a Shift+Enter, aby zacząć nową linię w przykładzie.
    .cs = Tip: Enterem přeskočíš do dalšího pole, Shift+Enter vloží nový řádek do příkladu.
    .sk = Tip: Enterom prejdeš do ďalšieho poľa, Shift+Enter pridá nový riadok do príkladu.
    .hu = Tipp: Enterrel a következő mezőre ugorhatsz, Shift+Enterrel új sort kezdhetsz a példában.
    .hr = Savjet: pritisni Enter za prelazak u sljedeće polje, a Shift+Enter za novi red u primjeru.
    .ro = Sfat: apasă Enter ca să treci la căsuța următoare și Shift+Enter pentru un rând nou în exemplu.
    .sq = Këshillë: shtyp Enter për të kaluar në fushën tjetër dhe Shift+Enter për një rresht të ri në shembull.
    .el = Συμβουλή: πάτα Enter για να πας στο επόμενο πεδίο και Shift+Enter για νέα γραμμή στο παράδειγμα.
    .ru = Совет: нажми Enter, чтобы перейти к следующему полю, и Shift+Enter для новой строки в примере.
    .uk = Порада: натисни Enter, щоб перейти до наступного поля, і Shift+Enter для нового рядка в прикладі.
    .la = Consilium: preme Enter ut ad proximam capsam transeas, Shift+Enter ut novum versum in exemplo incipias.
    .grc = Συμβουλή: πίεσον Enter, ἵνα εἰς τὸ ἑπόμενον πεδίον μεταβῇς, Shift+Enter δέ, ἵνα νέον στίχον ἐν τῷ παραδείγματι ἄρξῃ.
    .zh = 提示：按 Enter 跳到下一个输入框，按 Shift+Enter 在例句中换行。
    .ko = 팁: Enter를 누르면 다음 칸으로, Shift+Enter를 누르면 예문에서 줄이 바뀌어요.
    .ja = ヒント：Enter で次の欄に進み、Shift+Enter で例文を改行します。
    .ar = نصيحة: اضغط Enter للانتقال إلى الخانة التالية، و Shift+Enter لسطر جديد في المثال.

no-words-edit =
    .en = No words yet! Add your first word below.
    .de = Noch keine Wörter! Füge unten dein erstes Wort hinzu.
    .bar = No koane Wörter! Schreib drunt dei erschts Wort nei.
    .fr = Pas encore de mots ! Ajoute ton premier mot ci-dessous.
    .es = ¡Todavía no hay palabras! Añade la primera abajo.
    .pt = Ainda não há palavras! Adiciona a primeira abaixo.
    .it = Ancora nessuna parola! Aggiungi la prima qui sotto.
    .nl = Nog geen woorden! Voeg hieronder je eerste woord toe.
    .da = Ingen ord endnu! Tilføj dit første ord nedenfor.
    .nb = Ingen ord ennå! Legg til det første ordet nedenfor.
    .sv = Inga ord än! Lägg till ditt första ord nedan.
    .fi = Ei vielä sanoja! Lisää ensimmäinen sana alla.
    .is = Engin orð enn! Bættu fyrsta orðinu við hér fyrir neðan.
    .pl = Nie ma jeszcze słów! Dodaj pierwsze słowo poniżej.
    .cs = Zatím žádná slova! Přidej první slovo dole.
    .sk = Zatiaľ žiadne slová! Pridaj prvé slovo dole.
    .hu = Még nincsenek szavak! Add hozzá lent az elsőt.
    .hr = Još nema riječi! Dodaj prvu riječ ispod.
    .ro = Încă nu există cuvinte! Adaugă primul cuvânt mai jos.
    .sq = Ende nuk ka fjalë! Shto fjalën e parë më poshtë.
    .el = Δεν υπάρχουν ακόμα λέξεις! Πρόσθεσε την πρώτη σου λέξη παρακάτω.
    .ru = Пока нет слов! Добавь первое слово ниже.
    .uk = Поки що немає слів! Додай перше слово нижче.
    .la = Nondum ulla verba! Primum verbum infra adde.
    .grc = Οὐδεμία λέξις ἔτι! Πρόσθες τὴν πρώτην κάτω.
    .zh = 还没有单词！在下面添加第一个单词吧。
    .ko = 아직 단어가 없어요! 아래에서 첫 단어를 추가하세요.
    .ja = まだ単語がありません！下で最初の単語を追加しましょう。
    .ar = لا توجد كلمات بعد! أضف أول كلمة في الأسفل.

remove-word =
    .en = Remove this word
    .de = Dieses Wort entfernen
    .bar = Des Wort wegdoa
    .fr = Supprimer ce mot
    .es = Quitar esta palabra
    .pt = Remover esta palavra
    .it = Rimuovi questa parola
    .nl = Dit woord verwijderen
    .da = Fjern dette ord
    .nb = Fjern dette ordet
    .sv = Ta bort det här ordet
    .fi = Poista tämä sana
    .is = Fjarlægja þetta orð
    .pl = Usuń to słowo
    .cs = Odebrat toto slovo
    .sk = Odstrániť toto slovo
    .hu = Szó eltávolítása
    .hr = Ukloni ovu riječ
    .ro = Elimină acest cuvânt
    .sq = Hiq këtë fjalë
    .el = Αφαίρεση αυτής της λέξης
    .ru = Удалить это слово
    .uk = Видалити це слово
    .la = Hoc verbum remove
    .grc = Ἄφελε ταύτην τὴν λέξιν
    .zh = 删除这个单词
    .ko = 이 단어 삭제
    .ja = この単語を削除
    .ar = احذف هذه الكلمة

example =
    .en = 💬 Example
    .de = 💬 Beispiel
    .bar = 💬 Beispui
    .fr = 💬 Exemple
    .es = 💬 Ejemplo
    .pt = 💬 Exemplo
    .it = 💬 Esempio
    .nl = 💬 Voorbeeld
    .da = 💬 Eksempel
    .nb = 💬 Eksempel
    .sv = 💬 Exempel
    .fi = 💬 Esimerkki
    .is = 💬 Dæmi
    .pl = 💬 Przykład
    .cs = 💬 Příklad
    .sk = 💬 Príklad
    .hu = 💬 Példa
    .hr = 💬 Primjer
    .ro = 💬 Exemplu
    .sq = 💬 Shembull
    .el = 💬 Παράδειγμα
    .ru = 💬 Пример
    .uk = 💬 Приклад
    .la = 💬 Exemplum
    .grc = 💬 Παράδειγμα
    .zh = 💬 例句
    .ko = 💬 예문
    .ja = 💬 例文
    .ar = 💬 مثال

example-hint =
    .en = Example (optional)
    .de = Beispiel (optional)
    .bar = Beispui (wennst magst)
    .fr = Exemple (facultatif)
    .es = Ejemplo (opcional)
    .pt = Exemplo (opcional)
    .it = Esempio (facoltativo)
    .nl = Voorbeeld (optioneel)
    .da = Eksempel (valgfrit)
    .nb = Eksempel (valgfritt)
    .sv = Exempel (valfritt)
    .fi = Esimerkki (valinnainen)
    .is = Dæmi (valfrjálst)
    .pl = Przykład (opcjonalnie)
    .cs = Příklad (nepovinné)
    .sk = Príklad (nepovinné)
    .hu = Példa (nem kötelező)
    .hr = Primjer (neobavezno)
    .ro = Exemplu (opțional)
    .sq = Shembull (opsional)
    .el = Παράδειγμα (προαιρετικό)
    .ru = Пример (необязательно)
    .uk = Приклад (необов'язково)
    .la = Exemplum (si vis)
    .grc = Παράδειγμα (εἰ βούλει)
    .zh = 例句（可选）
    .ko = 예문 (선택)
    .ja = 例文（任意）
    .ar = مثال (اختياري)

## View mode

no-words-view =
    .en = No words to look at yet. Add some in ✏ Edit mode!
    .de = Noch keine Wörter zum Ansehen. Füge im Modus ✏ Bearbeiten welche hinzu!
    .bar = No koane Wörter zum Oschaun. Schreib a paar unter ✏ Bearbatn nei!
    .fr = Pas encore de mots à voir. Ajoutes-en dans le mode ✏ Modifier !
    .es = Todavía no hay palabras que ver. ¡Añade algunas en ✏ Editar!
    .pt = Ainda não há palavras para ver. Adiciona algumas em ✏ Editar!
    .it = Ancora nessuna parola da guardare. Aggiungine qualcuna in ✏ Modifica!
    .nl = Nog geen woorden om te bekijken. Voeg er een paar toe bij ✏ Bewerken!
    .da = Ingen ord at se på endnu. Tilføj nogle under ✏ Rediger!
    .nb = Ingen ord å se på ennå. Legg til noen under ✏ Rediger!
    .sv = Inga ord att titta på än. Lägg till några under ✏ Redigera!
    .fi = Ei vielä katsottavia sanoja. Lisää niitä kohdassa ✏ Muokkaa!
    .is = Engin orð til að skoða enn. Bættu nokkrum við í ✏ Breyta!
    .pl = Nie ma jeszcze nic do oglądania. Dodaj słowa w trybie ✏ Edytuj!
    .cs = Zatím není co prohlížet. Přidej slova v režimu ✏ Upravit!
    .sk = Zatiaľ nie je čo prezerať. Pridaj slová v režime ✏ Upraviť!
    .hu = Még nincs mit nézni. Adj hozzá szavakat a ✏ Szerkesztés módban!
    .hr = Još nema riječi za pregled. Dodaj ih pod ✏ Uredi!
    .ro = Încă nu sunt cuvinte de văzut. Adaugă câteva la ✏ Editează!
    .sq = Ende nuk ka fjalë për të parë. Shto disa te ✏ Ndrysho!
    .el = Δεν υπάρχουν ακόμα λέξεις για προβολή. Πρόσθεσε μερικές στην ✏ Επεξεργασία!
    .ru = Пока нечего смотреть. Добавь слова в режиме ✏ Изменить!
    .uk = Поки що нічого переглядати. Додай слова в режимі ✏ Редагувати!
    .la = Nondum ulla verba spectanda. Adde aliqua in ✏ Muta!
    .grc = Οὐδεμία λέξις ἔτι θεατή. Πρόσθες τινὰς ἐν τῷ ✏ Μεταβάλλε!
    .zh = 还没有可浏览的单词。去 ✏ 编辑 里添加一些吧！
    .ko = 아직 볼 단어가 없어요. ✏ 편집에서 단어를 추가하세요!
    .ja = まだ見る単語がありません。✏ 編集 で追加しましょう！
    .ar = لا توجد كلمات لعرضها بعد. أضف بعضها في ✏ تعديل!

shuffle =
    .en = 🔀 Shuffle
    .de = 🔀 Mischen
    .bar = 🔀 Durchanandmischn
    .fr = 🔀 Mélanger
    .es = 🔀 Mezclar
    .pt = 🔀 Baralhar
    .it = 🔀 Mescola
    .nl = 🔀 Schudden
    .da = 🔀 Bland
    .nb = 🔀 Stokk
    .sv = 🔀 Blanda
    .fi = 🔀 Sekoita
    .is = 🔀 Stokka
    .pl = 🔀 Wymieszaj
    .cs = 🔀 Zamíchat
    .sk = 🔀 Zamiešať
    .hu = 🔀 Keverés
    .hr = 🔀 Promiješaj
    .ro = 🔀 Amestecă
    .sq = 🔀 Përziej
    .el = 🔀 Ανακάτεμα
    .ru = 🔀 Перемешать
    .uk = 🔀 Перемішати
    .la = 🔀 Misce
    .grc = 🔀 Μῖξον
    .zh = 🔀 打乱
    .ko = 🔀 섞기
    .ja = 🔀 シャッフル
    .ar = 🔀 خلط

original-order =
    .en = ↩ Original order
    .de = ↩ Ursprüngliche Reihenfolge
    .bar = ↩ Wia vorher
    .fr = ↩ Ordre d’origine
    .es = ↩ Orden original
    .pt = ↩ Ordem original
    .it = ↩ Ordine originale
    .nl = ↩ Oorspronkelijke volgorde
    .da = ↩ Oprindelig rækkefølge
    .nb = ↩ Opprinnelig rekkefølge
    .sv = ↩ Ursprunglig ordning
    .fi = ↩ Alkuperäinen järjestys
    .is = ↩ Upprunaleg röð
    .pl = ↩ Pierwotna kolejność
    .cs = ↩ Původní pořadí
    .sk = ↩ Pôvodné poradie
    .hu = ↩ Eredeti sorrend
    .hr = ↩ Izvorni redoslijed
    .ro = ↩ Ordinea inițială
    .sq = ↩ Rendi fillestar
    .el = ↩ Αρχική σειρά
    .ru = ↩ Исходный порядок
    .uk = ↩ Початковий порядок
    .la = ↩ Ordo pristinus
    .grc = ↩ Ἡ ἀρχαία τάξις
    .zh = ↩ 原始顺序
    .ko = ↩ 원래 순서
    .ja = ↩ 元の順番
    .ar = ↩ الترتيب الأصلي

hide =
    .en = 🙈 Hide
    .de = 🙈 Ausblenden
    .bar = 🙈 Versteckn
    .fr = 🙈 Masquer
    .es = 🙈 Ocultar
    .pt = 🙈 Esconder
    .it = 🙈 Nascondi
    .nl = 🙈 Verbergen
    .da = 🙈 Skjul
    .nb = 🙈 Skjul
    .sv = 🙈 Dölj
    .fi = 🙈 Piilota
    .is = 🙈 Fela
    .pl = 🙈 Ukryj
    .cs = 🙈 Skrýt
    .sk = 🙈 Skryť
    .hu = 🙈 Elrejtés
    .hr = 🙈 Sakrij
    .ro = 🙈 Ascunde
    .sq = 🙈 Fshih
    .el = 🙈 Απόκρυψη
    .ru = 🙈 Скрыть
    .uk = 🙈 Сховати
    .la = 🙈 Cela
    .grc = 🙈 Κρύψον
    .zh = 🙈 隐藏
    .ko = 🙈 가리기
    .ja = 🙈 かくす
    .ar = 🙈 إخفاء

tap-to-peek =
    .en = ❓ Tap to peek
    .de = ❓ Aufdecken
    .bar = ❓ Drucka zum Spitzln
    .fr = ❓ Révéler
    .es = ❓ Toca para ver
    .pt = ❓ Toca para espreitar
    .it = ❓ Tocca per sbirciare
    .nl = ❓ Tik om te spieken
    .da = ❓ Tryk for at kigge
    .nb = ❓ Trykk for å kikke
    .sv = ❓ Tryck för att kika
    .fi = ❓ Napauta kurkistaaksesi
    .is = ❓ Ýttu til að kíkja
    .pl = ❓ Dotknij, aby podejrzeć
    .cs = ❓ Klepni a nakoukni
    .sk = ❓ Ťukni a pozri sa
    .hu = ❓ Koppints, hogy megnézd
    .hr = ❓ Dodirni da proviriš
    .ro = ❓ Atinge ca să tragi cu ochiul
    .sq = ❓ Prek për të parë
    .el = ❓ Πάτα για να κρυφοκοιτάξεις
    .ru = ❓ Нажми, чтобы подсмотреть
    .uk = ❓ Натисни, щоб підглянути
    .la = ❓ Tange ut videas
    .grc = ❓ Ἅψαι, ἵνα ἴδῃς
    .zh = ❓ 点一下偷看
    .ko = ❓ 눌러서 살짝 보기
    .ja = ❓ タップしてのぞく
    .ar = ❓ المس لتلقي نظرة

show-example =
    .en = Show example
    .de = Beispiel zeigen
    .bar = Beispui zoang
    .fr = Afficher l'exemple
    .es = Mostrar ejemplo
    .pt = Mostrar exemplo
    .it = Mostra esempio
    .nl = Voorbeeld tonen
    .da = Vis eksempel
    .nb = Vis eksempel
    .sv = Visa exempel
    .fi = Näytä esimerkki
    .is = Sýna dæmi
    .pl = Pokaż przykład
    .cs = Ukázat příklad
    .sk = Ukázať príklad
    .hu = Példa mutatása
    .hr = Prikaži primjer
    .ro = Arată exemplul
    .sq = Shfaq shembullin
    .el = Εμφάνιση παραδείγματος
    .ru = Показать пример
    .uk = Показати приклад
    .la = Exemplum monstra
    .grc = Δεῖξον τὸ παράδειγμα
    .zh = 显示例句
    .ko = 예문 보기
    .ja = 例文を見る
    .ar = عرض المثال

## Test mode

no-words-test =
    .en = No words to test yet. Add some in ✏ Edit mode first!
    .de = Noch keine Wörter zum Testen. Füge zuerst im Modus ✏ Bearbeiten welche hinzu!
    .bar = No koane Wörter zum Testn. Schreib zerscht a paar unter ✏ Bearbatn nei!
    .fr = Pas encore de mots à tester. Ajoutes-en d’abord dans le mode ✏ Modifier !
    .es = Todavía no hay palabras para la prueba. ¡Añade algunas primero en ✏ Editar!
    .pt = Ainda não há palavras para o teste. Adiciona primeiro algumas em ✏ Editar!
    .it = Ancora nessuna parola da verificare. Prima aggiungine qualcuna in ✏ Modifica!
    .nl = Nog geen woorden om te overhoren. Voeg er eerst een paar toe bij ✏ Bewerken!
    .da = Ingen ord at teste endnu. Tilføj først nogle under ✏ Rediger!
    .nb = Ingen ord å teste ennå. Legg til noen under ✏ Rediger først!
    .sv = Inga ord att förhöra än. Lägg till några under ✏ Redigera först!
    .fi = Ei vielä testattavia sanoja. Lisää ensin sanoja kohdassa ✏ Muokkaa!
    .is = Engin orð til að prófa enn. Bættu fyrst nokkrum við í ✏ Breyta!
    .pl = Nie ma jeszcze słów do testu. Najpierw dodaj je w trybie ✏ Edytuj!
    .cs = Zatím nejsou slova k testu. Nejdřív je přidej v režimu ✏ Upravit!
    .sk = Zatiaľ nie sú slová na test. Najprv ich pridaj v režime ✏ Upraviť!
    .hu = Még nincs mit tesztelni. Előbb adj hozzá szavakat a ✏ Szerkesztés módban!
    .hr = Još nema riječi za provjeru. Najprije ih dodaj pod ✏ Uredi!
    .ro = Încă nu sunt cuvinte pentru test. Adaugă mai întâi câteva la ✏ Editează!
    .sq = Ende nuk ka fjalë për provë. Shto fillimisht disa te ✏ Ndrysho!
    .el = Δεν υπάρχουν ακόμα λέξεις για τεστ. Πρόσθεσε πρώτα μερικές στην ✏ Επεξεργασία!
    .ru = Пока нет слов для теста. Сначала добавь их в режиме ✏ Изменить!
    .uk = Поки що немає слів для тесту. Спочатку додай їх у режимі ✏ Редагувати!
    .la = Nondum ulla verba probanda. Adde prius aliqua in ✏ Muta!
    .grc = Οὐδεμία λέξις ἔτι πειρατέα. Πρῶτον πρόσθες τινὰς ἐν τῷ ✏ Μεταβάλλε!
    .zh = 还没有可测试的单词。先去 ✏ 编辑 里添加一些吧！
    .ko = 아직 테스트할 단어가 없어요. 먼저 ✏ 편집에서 단어를 추가하세요!
    .ja = まだテストする単語がありません。まず ✏ 編集 で追加しましょう！
    .ar = لا توجد كلمات للاختبار بعد. أضف بعضها أولا في ✏ تعديل!

test-direction-question =
    .en = Which way do you want to practise?
    .de = In welche Richtung möchtest du üben?
    .bar = In wos für a Richtung mogst üben?
    .fr = Dans quel sens veux-tu t’entraîner ?
    .es = ¿En qué dirección quieres practicar?
    .pt = Em que direção queres praticar?
    .it = In quale direzione vuoi esercitarti?
    .nl = Welke kant op wil je oefenen?
    .da = Hvilken vej vil du øve?
    .nb = Hvilken vei vil du øve?
    .sv = Åt vilket håll vill du öva?
    .fi = Kumpaan suuntaan haluat harjoitella?
    .is = Í hvora áttina viltu æfa þig?
    .pl = W którą stronę chcesz ćwiczyć?
    .cs = Kterým směrem chceš procvičovat?
    .sk = Ktorým smerom chceš precvičovať?
    .hu = Melyik irányban szeretnél gyakorolni?
    .hr = U kojem smjeru želiš vježbati?
    .ro = În ce direcție vrei să exersezi?
    .sq = Në cilin drejtim do të ushtrohesh?
    .el = Προς ποια κατεύθυνση θέλεις να εξασκηθείς;
    .ru = В каком направлении будем тренироваться?
    .uk = У якому напрямку будемо тренуватися?
    .la = Quam in partem exerceri vis?
    .grc = Ποῖ βούλει ἀσκεῖσθαι;
    .zh = 你想按哪个方向练习？
    .ko = 어느 방향으로 연습할까요?
    .ja = どちらの方向で練習しますか？
    .ar = في أي اتجاه تريد أن تتدرب؟

words-waiting =
    .en =
        { $count ->
            [one] One word is waiting for you!
           *[other] { $count } words are waiting for you!
        }
    .de =
        { $count ->
            [one] Ein Wort wartet auf dich!
           *[other] { $count } Wörter warten auf dich!
        }
    .bar =
        { $count ->
            [one] Oa Wort wart auf di!
           *[other] { $count } Wörter wartn auf di!
        }
    .fr =
        { $count ->
            [one] Un mot t’attend !
           *[other] { $count } mots t’attendent !
        }
    .es =
        { $count ->
            [one] ¡Una palabra te está esperando!
           *[other] ¡{ $count } palabras te están esperando!
        }
    .pt =
        { $count ->
            [one] Uma palavra está à tua espera!
           *[other] { $count } palavras estão à tua espera!
        }
    .it =
        { $count ->
            [one] Una parola ti aspetta!
           *[other] { $count } parole ti aspettano!
        }
    .nl =
        { $count ->
            [one] Er wacht één woord op je!
           *[other] Er wachten { $count } woorden op je!
        }
    .da =
        { $count ->
            [one] Et ord venter på dig!
           *[other] { $count } ord venter på dig!
        }
    .nb =
        { $count ->
            [one] Ett ord venter på deg!
           *[other] { $count } ord venter på deg!
        }
    .sv =
        { $count ->
            [one] Ett ord väntar på dig!
           *[other] { $count } ord väntar på dig!
        }
    .fi =
        { $count ->
            [one] Yksi sana odottaa sinua!
           *[other] { $count } sanaa odottaa sinua!
        }
    .is =
        { $count ->
            [one] { $count } orð bíður eftir þér!
           *[other] { $count } orð bíða eftir þér!
        }
    .pl =
        { $count ->
            [one] Czeka na ciebie { $count } słowo!
            [few] Czekają na ciebie { $count } słowa!
            [many] Czeka na ciebie { $count } słów!
           *[other] Czeka na ciebie { $count } słowa!
        }
    .cs =
        { $count ->
            [one] Čeká na tebe { $count } slovo!
            [few] Čekají na tebe { $count } slova!
            [many] Čeká na tebe { $count } slova!
           *[other] Čeká na tebe { $count } slov!
        }
    .sk =
        { $count ->
            [one] Čaká na teba { $count } slovo!
            [few] Čakajú na teba { $count } slová!
            [many] Čaká na teba { $count } slova!
           *[other] Čaká na teba { $count } slov!
        }
    .hu =
        { $count ->
            [one] Egy szó vár rád!
           *[other] { $count } szó vár rád!
        }
    .hr =
        { $count ->
            [one] Čeka te { $count } riječ!
            [few] Čekaju te { $count } riječi!
           *[other] Čeka te { $count } riječi!
        }
    .ro =
        { $count ->
            [one] Un cuvânt te așteaptă!
            [few] { $count } cuvinte te așteaptă!
           *[other] { $count } de cuvinte te așteaptă!
        }
    .sq =
        { $count ->
            [one] Një fjalë të pret!
           *[other] { $count } fjalë të presin!
        }
    .el =
        { $count ->
            [one] Μια λέξη σε περιμένει!
           *[other] { $count } λέξεις σε περιμένουν!
        }
    .ru =
        { $count ->
            [one] { $count } слово ждёт тебя!
            [few] { $count } слова ждут тебя!
            [many] { $count } слов ждут тебя!
           *[other] { $count } слова ждут тебя!
        }
    .uk =
        { $count ->
            [one] { $count } слово чекає на тебе!
            [few] { $count } слова чекають на тебе!
            [many] { $count } слів чекають на тебе!
           *[other] { $count } слова чекають на тебе!
        }
    .la =
        { $count ->
            [one] Unum verbum te exspectat!
           *[other] { $count } verba te exspectant!
        }
    .grc =
        { $count ->
            [one] Μία λέξις σε περιμένει!
           *[other] { $count } λέξεις σε περιμένουσιν!
        }
    .zh = { $count } 个单词在等你！
    .ko = 단어 { $count }개가 기다리고 있어요!
    .ja = { $count } 語があなたを待っています！
    .ar =
        { $count ->
            [zero] لا توجد كلمات بانتظارك!
            [one] كلمة واحدة بانتظارك!
            [two] كلمتان بانتظارك!
            [few] { $count } كلمات بانتظارك!
            [many] { $count } كلمة بانتظارك!
           *[other] { $count } كلمة بانتظارك!
        }

check-answer =
    .en = Check the answer
    .de = Antwort prüfen
    .bar = Antwort oschaun
    .fr = Voir la réponse
    .es = Comprobar la respuesta
    .pt = Ver a resposta
    .it = Controlla la risposta
    .nl = Antwoord bekijken
    .da = Tjek svaret
    .nb = Sjekk svaret
    .sv = Kolla svaret
    .fi = Tarkista vastaus
    .is = Athuga svarið
    .pl = Sprawdź odpowiedź
    .cs = Zkontrolovat odpověď
    .sk = Skontrolovať odpoveď
    .hu = Válasz ellenőrzése
    .hr = Provjeri odgovor
    .ro = Verifică răspunsul
    .sq = Kontrollo përgjigjen
    .el = Έλεγχος απάντησης
    .ru = Проверить ответ
    .uk = Перевірити відповідь
    .la = Responsum inspice
    .grc = Σκέψαι τὴν ἀπόκρισιν
    .zh = 查看答案
    .ko = 정답 확인
    .ja = 答えを見る
    .ar = تحقق من الإجابة

the-answer-is =
    .en = The answer is
    .de = Die Antwort ist
    .bar = De Antwort is
    .fr = La réponse est
    .es = La respuesta es
    .pt = A resposta é
    .it = La risposta è
    .nl = Het antwoord is
    .da = Svaret er
    .nb = Svaret er
    .sv = Svaret är
    .fi = Vastaus on
    .is = Svarið er
    .pl = Odpowiedź to
    .cs = Odpověď je
    .sk = Odpoveď je
    .hu = A válasz
    .hr = Odgovor je
    .ro = Răspunsul este
    .sq = Përgjigjja është
    .el = Η απάντηση είναι
    .ru = Правильный ответ
    .uk = Правильна відповідь
    .la = Responsum est
    .grc = Ἡ ἀπόκρισίς ἐστιν
    .zh = 答案是
    .ko = 정답은
    .ja = 答えは
    .ar = الإجابة هي

answer-knew =
    .en = ✔ I knew
    .de = ✔ Gewusst
    .bar = ✔ Hob i gwusst
    .fr = ✔ Je savais
    .es = ✔ Lo sabía
    .pt = ✔ Eu sabia
    .it = ✔ Lo sapevo
    .nl = ✔ Wist ik
    .da = ✔ Det vidste jeg
    .nb = ✔ Jeg kunne det
    .sv = ✔ Jag kunde det
    .fi = ✔ Osasin
    .is = ✔ Ég vissi það
    .pl = ✔ Wiedziałem/am
    .cs = ✔ Věděl(a) jsem
    .sk = ✔ Vedel(a) som
    .hu = ✔ Tudtam
    .hr = ✔ Znao/la sam
    .ro = ✔ Am știut
    .sq = ✔ E dija
    .el = ✔ Το ήξερα
    .ru = ✔ Я знал(а)
    .uk = ✔ Я знав(ла)
    .la = ✔ Sciebam
    .grc = ✔ Ἤιδειν
    .zh = ✔ 我会
    .ko = ✔ 알았어요
    .ja = ✔ わかった
    .ar = ✔ كنت أعرفها

answer-did-not-know =
    .en = ✖ I did not know
    .de = ✖ Nicht gewusst
    .bar = ✖ Hob i ned gwusst
    .fr = ✖ Je ne savais pas
    .es = ✖ No lo sabía
    .pt = ✖ Eu não sabia
    .it = ✖ Non lo sapevo
    .nl = ✖ Wist ik niet
    .da = ✖ Det vidste jeg ikke
    .nb = ✖ Jeg kunne det ikke
    .sv = ✖ Jag kunde det inte
    .fi = ✖ En osannut
    .is = ✖ Ég vissi það ekki
    .pl = ✖ Nie wiedziałem/am
    .cs = ✖ Nevěděl(a) jsem
    .sk = ✖ Nevedel(a) som
    .hu = ✖ Nem tudtam
    .hr = ✖ Nisam znao/la
    .ro = ✖ N-am știut
    .sq = ✖ Nuk e dija
    .el = ✖ Δεν το ήξερα
    .ru = ✖ Я не знал(а)
    .uk = ✖ Я не знав(ла)
    .la = ✖ Nesciebam
    .grc = ✖ Οὐκ ᾔδειν
    .zh = ✖ 我不会
    .ko = ✖ 몰랐어요
    .ja = ✖ わからなかった
    .ar = ✖ لم أكن أعرفها

finish =
    .en = 🏁 Finish
    .de = 🏁 Beenden
    .bar = 🏁 Feierabend
    .fr = 🏁 Terminer
    .es = 🏁 Terminar
    .pt = 🏁 Terminar
    .it = 🏁 Fine
    .nl = 🏁 Stoppen
    .da = 🏁 Færdig
    .nb = 🏁 Ferdig
    .sv = 🏁 Avsluta
    .fi = 🏁 Lopeta
    .is = 🏁 Ljúka
    .pl = 🏁 Zakończ
    .cs = 🏁 Konec
    .sk = 🏁 Koniec
    .hu = 🏁 Befejezés
    .hr = 🏁 Završi
    .ro = 🏁 Gata
    .sq = 🏁 Mbaro
    .el = 🏁 Τέλος
    .ru = 🏁 Закончить
    .uk = 🏁 Завершити
    .la = 🏁 Fini
    .grc = 🏁 Τέλος
    .zh = 🏁 结束
    .ko = 🏁 끝내기
    .ja = 🏁 終わる
    .ar = 🏁 إنهاء

good-answers =
    .en = Good answers
    .de = Gewusst
    .bar = Richtige Antwortn
    .fr = Bonnes réponses
    .es = Respuestas correctas
    .pt = Respostas certas
    .it = Risposte giuste
    .nl = Goede antwoorden
    .da = Rigtige svar
    .nb = Riktige svar
    .sv = Rätta svar
    .fi = Oikeat vastaukset
    .is = Rétt svör
    .pl = Dobre odpowiedzi
    .cs = Správné odpovědi
    .sk = Správne odpovede
    .hu = Jó válaszok
    .hr = Točni odgovori
    .ro = Răspunsuri corecte
    .sq = Përgjigje të sakta
    .el = Σωστές απαντήσεις
    .ru = Правильные ответы
    .uk = Правильні відповіді
    .la = Recte responsa
    .grc = Ὀρθαὶ ἀποκρίσεις
    .zh = 答对
    .ko = 맞힌 답
    .ja = 正解
    .ar = إجابات صحيحة

mistakes-label =
    .en = Mistakes
    .de = Fehler
    .bar = Fehler
    .fr = Erreurs
    .es = Errores
    .pt = Erros
    .it = Errori
    .nl = Fouten
    .da = Fejl
    .nb = Feil
    .sv = Fel
    .fi = Virheet
    .is = Villur
    .pl = Błędy
    .cs = Chyby
    .sk = Chyby
    .hu = Hibák
    .hr = Pogreške
    .ro = Greșeli
    .sq = Gabime
    .el = Λάθη
    .ru = Ошибки
    .uk = Помилки
    .la = Errores
    .grc = Ἁμαρτήματα
    .zh = 错误
    .ko = 틀린 답
    .ja = まちがい
    .ar = أخطاء

## Test results

result-perfect =
    .en = PERFECT! You are a superstar!
    .de = PERFEKT! Du bist ein Superstar!
    .bar = PFUNDIG! Du bist a Superstar!
    .fr = PARFAIT ! Tu es une superstar !
    .es = ¡PERFECTO! ¡Eres una superestrella!
    .pt = PERFEITO! És uma superestrela!
    .it = PERFETTO! Sei una superstar!
    .nl = PERFECT! Je bent een superster!
    .da = PERFEKT! Du er en superstjerne!
    .nb = PERFEKT! Du er en superstjerne!
    .sv = PERFEKT! Du är en superstjärna!
    .fi = TÄYDELLISTÄ! Olet supertähti!
    .is = FULLKOMIÐ! Þú ert stórstjarna!
    .pl = IDEALNIE! Jesteś supergwiazdą!
    .cs = DOKONALÉ! Jsi superhvězda!
    .sk = DOKONALÉ! Si superhviezda!
    .hu = TÖKÉLETES! Igazi szupersztár vagy!
    .hr = SAVRŠENO! Ti si superzvijezda!
    .ro = PERFECT! Ești un superstar!
    .sq = PERFEKT! Je një superyll!
    .el = ΤΕΛΕΙΑ! Είσαι σούπερ σταρ!
    .ru = ИДЕАЛЬНО! Ты суперзвезда!
    .uk = ІДЕАЛЬНО! Ти суперзірка!
    .la = PERFECTUM! Stella es!
    .grc = ΤΕΛΕΙΟΝ! Ἀστὴρ εἶ!
    .zh = 完美！你是超级明星！
    .ko = 완벽해요! 당신은 슈퍼스타!
    .ja = パーフェクト！あなたはスーパースター！
    .ar = ممتاز! أنت نجم!

result-all-known =
    .en = Hooray! You learned all the words!
    .de = Hurra! Du hast alle Wörter gelernt!
    .bar = Juchhe! Du host olle Wörter glernt!
    .fr = Hourra ! Tu as appris tous les mots !
    .es = ¡Hurra! ¡Has aprendido todas las palabras!
    .pt = Viva! Aprendeste todas as palavras!
    .it = Evviva! Hai imparato tutte le parole!
    .nl = Hoera! Je hebt alle woorden geleerd!
    .da = Hurra! Du har lært alle ordene!
    .nb = Hurra! Du har lært alle ordene!
    .sv = Hurra! Du har lärt dig alla orden!
    .fi = Hurraa! Opit kaikki sanat!
    .is = Húrra! Þú lærðir öll orðin!
    .pl = Hurra! Znasz już wszystkie słowa!
    .cs = Hurá! Naučil(a) ses všechna slova!
    .sk = Hurá! Naučil(a) si sa všetky slová!
    .hu = Hurrá! Megtanultad az összes szót!
    .hr = Hura! Naučio/la si sve riječi!
    .ro = Ura! Ai învățat toate cuvintele!
    .sq = Urra! I mësove të gjitha fjalët!
    .el = Ζήτω! Έμαθες όλες τις λέξεις!
    .ru = Ура! Ты выучил(а) все слова!
    .uk = Ура! Ти вивчив(ла) всі слова!
    .la = Io! Omnia verba didicisti!
    .grc = Εὖγε! Πάσας τὰς λέξεις ἔμαθες!
    .zh = 太棒了！你学会了所有单词！
    .ko = 만세! 모든 단어를 배웠어요!
    .ja = やったね！すべての単語をおぼえました！
    .ar = رائع! لقد تعلمت كل الكلمات!

result-good =
    .en = Well done! Keep it up!
    .de = Gut gemacht! Weiter so!
    .bar = Sauber! Mach weida so!
    .fr = Bien joué ! Continue comme ça !
    .es = ¡Muy bien! ¡Sigue así!
    .pt = Muito bem! Continua assim!
    .it = Bravo! Continua così!
    .nl = Goed gedaan! Ga zo door!
    .da = Godt klaret! Bliv ved sådan!
    .nb = Bra jobbet! Fortsett sånn!
    .sv = Bra jobbat! Fortsätt så!
    .fi = Hienoa! Jatka samaan malliin!
    .is = Vel gert! Haltu áfram svona!
    .pl = Brawo! Tak trzymaj!
    .cs = Výborně! Jen tak dál!
    .sk = Výborne! Len tak ďalej!
    .hu = Szép munka! Csak így tovább!
    .hr = Bravo! Samo tako nastavi!
    .ro = Bravo! Continuă tot așa!
    .sq = Të lumtë! Vazhdo kështu!
    .el = Μπράβο! Συνέχισε έτσι!
    .ru = Молодец! Так держать!
    .uk = Молодець! Так тримати!
    .la = Bene fecisti! Perge!
    .grc = Καλῶς ἐποίησας! Οὕτω πρόβαινε!
    .zh = 做得好！继续加油！
    .ko = 잘했어요! 계속 이렇게 해요!
    .ja = よくできました！その調子！
    .ar = أحسنت! استمر هكذا!

result-start =
    .en = Good start! Practice makes perfect!
    .de = Guter Anfang! Übung macht den Meister!
    .bar = Guad ogfangt! Übung macht'n Meister!
    .fr = Bon début ! C’est en forgeant qu’on devient forgeron !
    .es = ¡Buen comienzo! ¡La práctica hace al maestro!
    .pt = Bom começo! A prática leva à perfeição!
    .it = Buon inizio! La pratica rende perfetti!
    .nl = Goed begin! Oefening baart kunst!
    .da = God start! Øvelse gør mester!
    .nb = God start! Øvelse gjør mester!
    .sv = Bra början! Övning ger färdighet!
    .fi = Hyvä alku! Harjoitus tekee mestarin!
    .is = Góð byrjun! Æfingin skapar meistarann!
    .pl = Dobry początek! Praktyka czyni mistrza!
    .cs = Dobrý začátek! Opakování je matka moudrosti!
    .sk = Dobrý začiatok! Opakovanie je matka múdrosti!
    .hu = Jó kezdés! Gyakorlat teszi a mestert!
    .hr = Dobar početak! Vježba čini majstora!
    .ro = Un început bun! Exercițiul te face maestru!
    .sq = Fillim i mirë! Ushtrimi të bën mjeshtër!
    .el = Καλή αρχή! Η εξάσκηση φέρνει την τελειότητα!
    .ru = Хорошее начало! Повторение — мать учения!
    .uk = Гарний початок! Повторення — мати навчання!
    .la = Bonum initium! Usus est magister optimus!
    .grc = Ἀρχὴ ἥμισυ παντός! Μελέτη τὸ πᾶν!
    .zh = 好的开始！熟能生巧！
    .ko = 좋은 시작이에요! 연습이 완벽을 만들어요!
    .ja = いいスタート！練習あるのみ！
    .ar = بداية جيدة! التمرين يصنع الإتقان!

known-of-total =
    .en = { $known } of { $total }
    .de = { $known } von { $total }
    .bar = { $known } vo { $total }
    .fr = { $known } sur { $total }
    .es = { $known } de { $total }
    .pt = { $known } de { $total }
    .it = { $known } su { $total }
    .nl = { $known } van { $total }
    .da = { $known } af { $total }
    .nb = { $known } av { $total }
    .sv = { $known } av { $total }
    .fi = { $known } / { $total }
    .is = { $known } af { $total }
    .pl = { $known } z { $total }
    .cs = { $known } z { $total }
    .sk = { $known } z { $total }
    .hu = { $known } / { $total }
    .hr = { $known } od { $total }
    .ro = { $known } din { $total }
    .sq = { $known } nga { $total }
    .el = { $known } από { $total }
    .ru = { $known } из { $total }
    .uk = { $known } з { $total }
    .la = { $known } ex { $total }
    .grc = { $known } ἐκ { $total }
    .zh = { $known } / { $total }
    .ko = { $total }개 중 { $known }개
    .ja = { $total } 語中 { $known } 語
    .ar = { $known } من { $total }

first-try =
    .en = Right on the first try: { $count } of { $total }
    .de = Beim ersten Versuch richtig: { $count } von { $total }
    .bar = Glei beim erschtn Moi richtig: { $count } vo { $total }
    .fr = Juste du premier coup : { $count } sur { $total }
    .es = Correctas al primer intento: { $count } de { $total }
    .pt = Certas à primeira tentativa: { $count } de { $total }
    .it = Giuste al primo tentativo: { $count } su { $total }
    .nl = In één keer goed: { $count } van { $total }
    .da = Rigtigt i første forsøg: { $count } af { $total }
    .nb = Riktig på første forsøk: { $count } av { $total }
    .sv = Rätt på första försöket: { $count } av { $total }
    .fi = Oikein ensimmäisellä yrityksellä: { $count } / { $total }
    .is = Rétt í fyrstu tilraun: { $count } af { $total }
    .pl = Dobrze za pierwszym razem: { $count } z { $total }
    .cs = Napoprvé správně: { $count } z { $total }
    .sk = Na prvý pokus správne: { $count } z { $total }
    .hu = Elsőre jó: { $count } / { $total }
    .hr = Točno iz prvog pokušaja: { $count } od { $total }
    .ro = Corect din prima: { $count } din { $total }
    .sq = Saktë në provën e parë: { $count } nga { $total }
    .el = Σωστά με την πρώτη: { $count } από { $total }
    .ru = С первой попытки: { $count } из { $total }
    .uk = З першої спроби: { $count } з { $total }
    .la = Primo conatu recte: { $count } ex { $total }
    .grc = Τῇ πρώτῃ πείρᾳ ὀρθῶς: { $count } ἐκ { $total }
    .zh = 第一次就答对：{ $count } / { $total }
    .ko = 한 번에 맞힌 단어: { $total }개 중 { $count }개
    .ja = 1回目で正解：{ $total } 語中 { $count } 語
    .ar = صحيحة من المحاولة الأولى: { $count } من { $total }

mistakes-count =
    .en =
        { $count ->
            [0] No mistakes at all!
            [one] 1 mistake
           *[other] { $count } mistakes
        }
    .de =
        { $count ->
            [0] Gar keine Fehler!
            [one] 1 Fehler
           *[other] { $count } Fehler
        }
    .bar =
        { $count ->
            [0] Gor koa Fehler!
            [one] 1 Fehler
           *[other] { $count } Fehler
        }
    .fr =
        { $count ->
            [0] Aucune erreur !
            [one] 1 erreur
           *[other] { $count } erreurs
        }
    .es =
        { $count ->
            [0] ¡Ningún error!
            [one] 1 error
           *[other] { $count } errores
        }
    .pt =
        { $count ->
            [0] Nenhum erro!
            [one] 1 erro
           *[other] { $count } erros
        }
    .it =
        { $count ->
            [0] Nessun errore!
            [one] 1 errore
           *[other] { $count } errori
        }
    .nl =
        { $count ->
            [0] Helemaal geen fouten!
            [one] 1 fout
           *[other] { $count } fouten
        }
    .da =
        { $count ->
            [0] Ingen fejl overhovedet!
            [one] 1 fejl
           *[other] { $count } fejl
        }
    .nb =
        { $count ->
            [0] Ingen feil i det hele tatt!
            [one] 1 feil
           *[other] { $count } feil
        }
    .sv =
        { $count ->
            [0] Inga fel alls!
            [one] 1 fel
           *[other] { $count } fel
        }
    .fi =
        { $count ->
            [0] Ei yhtään virhettä!
            [one] 1 virhe
           *[other] { $count } virhettä
        }
    .is =
        { $count ->
            [0] Engar villur!
            [one] { $count } villa
           *[other] { $count } villur
        }
    .pl =
        { $count ->
            [0] Ani jednego błędu!
            [one] 1 błąd
            [few] { $count } błędy
            [many] { $count } błędów
           *[other] { $count } błędu
        }
    .cs =
        { $count ->
            [0] Žádná chyba!
            [one] 1 chyba
            [few] { $count } chyby
            [many] { $count } chyby
           *[other] { $count } chyb
        }
    .sk =
        { $count ->
            [0] Žiadna chyba!
            [one] 1 chyba
            [few] { $count } chyby
            [many] { $count } chyby
           *[other] { $count } chýb
        }
    .hu =
        { $count ->
            [0] Egy hiba sincs!
            [one] 1 hiba
           *[other] { $count } hiba
        }
    .hr =
        { $count ->
            [0] Nijedna pogreška!
            [one] { $count } pogreška
            [few] { $count } pogreške
           *[other] { $count } pogrešaka
        }
    .ro =
        { $count ->
            [0] Nicio greșeală!
            [one] 1 greșeală
            [few] { $count } greșeli
           *[other] { $count } de greșeli
        }
    .sq =
        { $count ->
            [0] Asnjë gabim!
            [one] 1 gabim
           *[other] { $count } gabime
        }
    .el =
        { $count ->
            [0] Κανένα λάθος!
            [one] 1 λάθος
           *[other] { $count } λάθη
        }
    .ru =
        { $count ->
            [0] Ни одной ошибки!
            [one] { $count } ошибка
            [few] { $count } ошибки
            [many] { $count } ошибок
           *[other] { $count } ошибки
        }
    .uk =
        { $count ->
            [0] Жодної помилки!
            [one] { $count } помилка
            [few] { $count } помилки
            [many] { $count } помилок
           *[other] { $count } помилки
        }
    .la =
        { $count ->
            [0] Nullus error!
            [one] { $count } error
           *[other] { $count } errores
        }
    .grc =
        { $count ->
            [0] Οὐδὲν ἁμάρτημα!
            [one] 1 ἁμάρτημα
           *[other] { $count } ἁμαρτήματα
        }
    .zh =
        { $count ->
            [0] 一个错误也没有！
           *[other] { $count } 个错误
        }
    .ko =
        { $count ->
            [0] 하나도 안 틀렸어요!
           *[other] { $count }개 틀렸어요
        }
    .ja =
        { $count ->
            [0] まちがいはひとつもありません！
           *[other] まちがい { $count } 回
        }
    .ar =
        { $count ->
            [0] ولا خطأ واحد!
            [one] خطأ واحد
            [two] خطآن
            [few] { $count } أخطاء
            [many] { $count } خطأ
           *[other] { $count } خطأ
        }

words-to-practise =
    .en = Words to practise again
    .de = Diese Wörter noch einmal üben
    .bar = Wörter zum nomoi Üben
    .fr = Mots à revoir
    .es = Palabras para practicar otra vez
    .pt = Palavras para praticar outra vez
    .it = Parole da ripassare
    .nl = Woorden om opnieuw te oefenen
    .da = Ord, der skal øves igen
    .nb = Ord å øve på igjen
    .sv = Ord att öva på igen
    .fi = Harjoiteltavat sanat
    .is = Orð til að æfa aftur
    .pl = Słowa do powtórki
    .cs = Slova k procvičení
    .sk = Slová na precvičenie
    .hu = Újra gyakorlandó szavak
    .hr = Riječi za ponavljanje
    .ro = Cuvinte de exersat din nou
    .sq = Fjalë për t'u ushtruar përsëri
    .el = Λέξεις για επανάληψη
    .ru = Слова для повторения
    .uk = Слова для повторення
    .la = Verba iterum exercenda
    .grc = Λέξεις αὖθις ἀσκητέαι
    .zh = 需要再练习的单词
    .ko = 다시 연습할 단어
    .ja = もう一度練習する単語
    .ar = كلمات للتدرب عليها مرة أخرى

play-again =
    .en = 🔁 Play again
    .de = 🔁 Nochmal spielen
    .bar = 🔁 Nomoi
    .fr = 🔁 Rejouer
    .es = 🔁 Jugar otra vez
    .pt = 🔁 Jogar outra vez
    .it = 🔁 Gioca ancora
    .nl = 🔁 Nog een keer
    .da = 🔁 Spil igen
    .nb = 🔁 Spill igjen
    .sv = 🔁 Spela igen
    .fi = 🔁 Uudestaan
    .is = 🔁 Spila aftur
    .pl = 🔁 Jeszcze raz
    .cs = 🔁 Znovu
    .sk = 🔁 Znova
    .hu = 🔁 Újra
    .hr = 🔁 Ponovno
    .ro = 🔁 Joacă din nou
    .sq = 🔁 Luaj përsëri
    .el = 🔁 Ξανά
    .ru = 🔁 Ещё раз
    .uk = 🔁 Ще раз
    .la = 🔁 Iterum lude
    .grc = 🔁 Αὖθις
    .zh = 🔁 再玩一次
    .ko = 🔁 다시 하기
    .ja = 🔁 もう一度
    .ar = 🔁 العب مرة أخرى

practise-hard-words =
    .en = 💪 Practise hard words
    .de = 💪 Schwierige Wörter üben
    .bar = 💪 De schwaarn Wörter üben
    .fr = 💪 Revoir les mots difficiles
    .es = 💪 Practicar las palabras difíciles
    .pt = 💪 Praticar as palavras difíceis
    .it = 💪 Ripassa le parole difficili
    .nl = 💪 Moeilijke woorden oefenen
    .da = 💪 Øv de svære ord
    .nb = 💪 Øv på de vanskelige ordene
    .sv = 💪 Öva på de svåra orden
    .fi = 💪 Harjoittele vaikeita sanoja
    .is = 💪 Æfa erfiðu orðin
    .pl = 💪 Ćwicz trudne słowa
    .cs = 💪 Procvičit těžká slova
    .sk = 💪 Precvičiť ťažké slová
    .hu = 💪 Nehéz szavak gyakorlása
    .hr = 💪 Vježbaj teške riječi
    .ro = 💪 Exersează cuvintele grele
    .sq = 💪 Ushtro fjalët e vështira
    .el = 💪 Εξάσκηση στις δύσκολες λέξεις
    .ru = 💪 Повторить трудные слова
    .uk = 💪 Повторити складні слова
    .la = 💪 Difficilia verba exerce
    .grc = 💪 Ἄσκει τὰς χαλεπὰς λέξεις
    .zh = 💪 练习难词
    .ko = 💪 어려운 단어 연습
    .ja = 💪 むずかしい単語を練習
    .ar = 💪 تدرب على الكلمات الصعبة

back =
    .en = ⬅ Back
    .de = ⬅ Zurück
    .bar = ⬅ Zruck
    .fr = ⬅ Retour
    .es = ⬅ Volver
    .pt = ⬅ Voltar
    .it = ⬅ Indietro
    .nl = ⬅ Terug
    .da = ⬅ Tilbage
    .nb = ⬅ Tilbake
    .sv = ⬅ Tillbaka
    .fi = ⬅ Takaisin
    .is = ⬅ Til baka
    .pl = ⬅ Wróć
    .cs = ⬅ Zpět
    .sk = ⬅ Späť
    .hu = ⬅ Vissza
    .hr = ⬅ Natrag
    .ro = ⬅ Înapoi
    .sq = ⬅ Kthehu
    .el = ⬅ Πίσω
    .ru = ⬅ Назад
    .uk = ⬅ Назад
    .la = ⬅ Redi
    .grc = ⬅ Ἐπάνελθε
    .zh = ⬅ 返回
    .ko = ⬅ 뒤로
    .ja = ⬅ もどる
    .ar = ⬅ رجوع

## Messages

ok =
    .en = OK
    .de = OK
    .bar = Passt
    .fr = OK
    .es = Vale
    .pt = OK
    .it = OK
    .nl = OK
    .da = OK
    .nb = OK
    .sv = OK
    .fi = OK
    .is = Í lagi
    .pl = OK
    .cs = OK
    .sk = OK
    .hu = OK
    .hr = U redu
    .ro = OK
    .sq = OK
    .el = OK
    .ru = ОК
    .uk = OK
    .la = Bene
    .grc = Εὖ ἔχει
    .zh = 好的
    .ko = 확인
    .ja = OK
    .ar = حسنا

error-save =
    .en = Could not save: { $error }
    .de = Speichern fehlgeschlagen: { $error }
    .bar = Speichern hod ned highaut: { $error }
    .fr = Impossible d’enregistrer : { $error }
    .es = No se pudo guardar: { $error }
    .pt = Não foi possível guardar: { $error }
    .it = Impossibile salvare: { $error }
    .nl = Opslaan is mislukt: { $error }
    .da = Kunne ikke gemme: { $error }
    .nb = Kunne ikke lagre: { $error }
    .sv = Kunde inte spara: { $error }
    .fi = Tallennus epäonnistui: { $error }
    .is = Ekki tókst að vista: { $error }
    .pl = Nie udało się zapisać: { $error }
    .cs = Nepodařilo se uložit: { $error }
    .sk = Nepodarilo sa uložiť: { $error }
    .hu = Nem sikerült menteni: { $error }
    .hr = Spremanje nije uspjelo: { $error }
    .ro = Nu s-a putut salva: { $error }
    .sq = Ruajtja nuk u krye: { $error }
    .el = Η αποθήκευση απέτυχε: { $error }
    .ru = Не удалось сохранить: { $error }
    .uk = Не вдалося зберегти: { $error }
    .la = Servari non potuit: { $error }
    .grc = Οὐκ ἠδυνήθη σῴζεσθαι: { $error }
    .zh = 无法保存：{ $error }
    .ko = 저장할 수 없어요: { $error }
    .ja = 保存できませんでした：{ $error }
    .ar = تعذر الحفظ: { $error }

error-read =
    .en = Could not read { $path }: { $error }
    .de = { $path } konnte nicht gelesen werden: { $error }
    .bar = { $path } konn ned glesn wern: { $error }
    .fr = Impossible de lire { $path } : { $error }
    .es = No se pudo leer { $path }: { $error }
    .pt = Não foi possível ler { $path }: { $error }
    .it = Impossibile leggere { $path }: { $error }
    .nl = Kan { $path } niet lezen: { $error }
    .da = Kunne ikke læse { $path }: { $error }
    .nb = Kunne ikke lese { $path }: { $error }
    .sv = Kunde inte läsa { $path }: { $error }
    .fi = Tiedostoa { $path } ei voitu lukea: { $error }
    .is = Ekki tókst að lesa { $path }: { $error }
    .pl = Nie udało się odczytać { $path }: { $error }
    .cs = Nepodařilo se přečíst { $path }: { $error }
    .sk = Nepodarilo sa prečítať { $path }: { $error }
    .hu = Nem sikerült beolvasni ezt: { $path } ({ $error })
    .hr = Nije moguće pročitati { $path }: { $error }
    .ro = Nu s-a putut citi { $path }: { $error }
    .sq = { $path } nuk u lexua dot: { $error }
    .el = Δεν ήταν δυνατή η ανάγνωση του { $path }: { $error }
    .ru = Не удалось прочитать { $path }: { $error }
    .uk = Не вдалося прочитати { $path }: { $error }
    .la = { $path } legi non potuit: { $error }
    .grc = Τὸ { $path } οὐκ ἠδυνήθη ἀναγνωσθῆναι: { $error }
    .zh = 无法读取 { $path }：{ $error }
    .ko = { $path }을(를) 읽을 수 없어요: { $error }
    .ja = { $path } を読み込めませんでした：{ $error }
    .ar = تعذرت قراءة { $path }: { $error }

error-broken-file =
    .en = Saved projects could not be read ({ $error }). A copy was kept at { $path }
    .de = Die gespeicherten Projekte konnten nicht gelesen werden ({ $error }). Eine Kopie liegt unter { $path }
    .bar = De gspeichertn Projekte kenna ned glesn wern ({ $error }). A Kopie liegt in { $path }
    .fr = Les projets enregistrés n’ont pas pu être lus ({ $error }). Une copie a été gardée ici : { $path }
    .es = No se pudieron leer los proyectos guardados ({ $error }). Se guardó una copia en { $path }
    .pt = Não foi possível ler os projetos guardados ({ $error }). Foi guardada uma cópia em { $path }
    .it = Impossibile leggere i progetti salvati ({ $error }). Una copia è stata conservata in { $path }
    .nl = De opgeslagen projecten konden niet worden gelezen ({ $error }). Er is een kopie bewaard in { $path }
    .da = De gemte projekter kunne ikke læses ({ $error }). En kopi blev gemt i { $path }
    .nb = De lagrede prosjektene kunne ikke leses ({ $error }). En kopi ble lagret i { $path }
    .sv = De sparade projekten kunde inte läsas ({ $error }). En kopia sparades i { $path }
    .fi = Tallennettuja projekteja ei voitu lukea ({ $error }). Kopio jäi tiedostoon { $path }
    .is = Ekki tókst að lesa vistuð verkefni ({ $error }). Afrit var geymt í { $path }
    .pl = Nie udało się odczytać zapisanych projektów ({ $error }). Kopia została zachowana w { $path }
    .cs = Uložené projekty se nepodařilo přečíst ({ $error }). Kopie zůstala v { $path }
    .sk = Uložené projekty sa nepodarilo prečítať ({ $error }). Kópia zostala v { $path }
    .hu = A mentett projekteket nem sikerült beolvasni ({ $error }). Egy másolat itt maradt: { $path }
    .hr = Spremljeni projekti nisu se mogli pročitati ({ $error }). Kopija je sačuvana u { $path }
    .ro = Proiectele salvate nu au putut fi citite ({ $error }). O copie a fost păstrată în { $path }
    .sq = Projektet e ruajtura nuk u lexuan dot ({ $error }). Një kopje u ruajt te { $path }
    .el = Τα αποθηκευμένα έργα δεν μπόρεσαν να διαβαστούν ({ $error }). Ένα αντίγραφο κρατήθηκε στο { $path }
    .ru = Не удалось прочитать сохранённые проекты ({ $error }). Копия сохранена в { $path }
    .uk = Не вдалося прочитати збережені проєкти ({ $error }). Копію збережено в { $path }
    .la = Opera servata legi non potuerunt ({ $error }). Exemplar servatum est in { $path }
    .grc = Τὰ σῳζόμενα ἔργα οὐκ ἠδυνήθη ἀναγνωσθῆναι ({ $error }). Ἀντίγραφον ἐφυλάχθη ἐν { $path }
    .zh = 无法读取已保存的单词本（{ $error }）。已在 { $path } 保留一份副本
    .ko = 저장된 단어장을 읽을 수 없어요({ $error }). 복사본을 { $path }에 남겨 두었어요
    .ja = 保存された単語帳を読み込めませんでした（{ $error }）。コピーを { $path } に残しました
    .ar = تعذرت قراءة المشاريع المحفوظة ({ $error }). تم الاحتفاظ بنسخة في { $path }

error-no-data-folder =
    .en = No data folder found
    .de = Kein Datenordner gefunden
    .bar = Koa Datenordner gfundn
    .fr = Aucun dossier de données trouvé
    .es = No se encontró ninguna carpeta de datos
    .pt = Não foi encontrada nenhuma pasta de dados
    .it = Nessuna cartella dati trovata
    .nl = Geen gegevensmap gevonden
    .da = Ingen datamappe fundet
    .nb = Fant ingen datamappe
    .sv = Ingen datamapp hittades
    .fi = Datakansiota ei löytynyt
    .is = Engin gagnamappa fannst
    .pl = Nie znaleziono folderu z danymi
    .cs = Nebyla nalezena složka s daty
    .sk = Nenašiel sa priečinok s údajmi
    .hu = Nem található adatmappa
    .hr = Mapa s podacima nije pronađena
    .ro = Nu s-a găsit niciun folder de date
    .sq = Nuk u gjet asnjë dosje të dhënash
    .el = Δεν βρέθηκε φάκελος δεδομένων
    .ru = Папка с данными не найдена
    .uk = Папку з даними не знайдено
    .la = Nullum scrinium datorum inventum
    .grc = Οὐδεμία θήκη δεδομένων εὑρέθη
    .zh = 找不到数据文件夹
    .ko = 데이터 폴더를 찾을 수 없어요
    .ja = データフォルダが見つかりません
    .ar = لم يتم العثور على مجلد البيانات

error-storage-unavailable =
    .en = Browser storage is not available
    .de = Der Browserspeicher ist nicht verfügbar
    .bar = Da Browserspeicher geht ned
    .fr = Le stockage du navigateur n’est pas disponible
    .es = El almacenamiento del navegador no está disponible
    .pt = O armazenamento do navegador não está disponível
    .it = La memoria del browser non è disponibile
    .nl = De opslag van de browser is niet beschikbaar
    .da = Browserens lager er ikke tilgængeligt
    .nb = Nettleserlagringen er ikke tilgjengelig
    .sv = Webbläsarens lagring är inte tillgänglig
    .fi = Selaimen tallennustila ei ole käytettävissä
    .is = Geymsla vafrans er ekki tiltæk
    .pl = Pamięć przeglądarki jest niedostępna
    .cs = Úložiště prohlížeče není dostupné
    .sk = Úložisko prehliadača nie je dostupné
    .hu = A böngésző tárhelye nem érhető el
    .hr = Pohrana preglednika nije dostupna
    .ro = Spațiul de stocare al browserului nu este disponibil
    .sq = Hapësira ruajtëse e shfletuesit nuk është e disponueshme
    .el = Ο χώρος αποθήκευσης του προγράμματος περιήγησης δεν είναι διαθέσιμος
    .ru = Хранилище браузера недоступно
    .uk = Сховище браузера недоступне
    .la = Repositorium navigatri praesto non est
    .grc = Ἡ ἀποθήκη τοῦ περιηγητοῦ οὐ πάρεστιν
    .zh = 浏览器存储不可用
    .ko = 브라우저 저장소를 사용할 수 없어요
    .ja = ブラウザのストレージが使えません
    .ar = تخزين المتصفح غير متاح

error-broken-storage =
    .en = Saved projects could not be read ({ $error }). A copy was kept in browser storage.
    .de = Die gespeicherten Projekte konnten nicht gelesen werden ({ $error }). Eine Kopie wurde im Browserspeicher behalten.
    .bar = De gspeichertn Projekte kenna ned glesn wern ({ $error }). A Kopie liegt im Browserspeicher.
    .fr = Les projets enregistrés n’ont pas pu être lus ({ $error }). Une copie a été gardée dans le stockage du navigateur.
    .es = No se pudieron leer los proyectos guardados ({ $error }). Se guardó una copia en el almacenamiento del navegador.
    .pt = Não foi possível ler os projetos guardados ({ $error }). Foi guardada uma cópia no armazenamento do navegador.
    .it = Impossibile leggere i progetti salvati ({ $error }). Una copia è stata conservata nella memoria del browser.
    .nl = De opgeslagen projecten konden niet worden gelezen ({ $error }). Er is een kopie bewaard in de opslag van de browser.
    .da = De gemte projekter kunne ikke læses ({ $error }). En kopi blev gemt i browserens lager.
    .nb = De lagrede prosjektene kunne ikke leses ({ $error }). En kopi ble lagret i nettleserlagringen.
    .sv = De sparade projekten kunde inte läsas ({ $error }). En kopia sparades i webbläsarens lagring.
    .fi = Tallennettuja projekteja ei voitu lukea ({ $error }). Kopio jäi selaimen tallennustilaan.
    .is = Ekki tókst að lesa vistuð verkefni ({ $error }). Afrit var geymt í geymslu vafrans.
    .pl = Nie udało się odczytać zapisanych projektów ({ $error }). Kopia została zachowana w pamięci przeglądarki.
    .cs = Uložené projekty se nepodařilo přečíst ({ $error }). Kopie zůstala v úložišti prohlížeče.
    .sk = Uložené projekty sa nepodarilo prečítať ({ $error }). Kópia zostala v úložisku prehliadača.
    .hu = A mentett projekteket nem sikerült beolvasni ({ $error }). Egy másolat a böngésző tárhelyén maradt.
    .hr = Spremljeni projekti nisu se mogli pročitati ({ $error }). Kopija je sačuvana u pohrani preglednika.
    .ro = Proiectele salvate nu au putut fi citite ({ $error }). O copie a fost păstrată în spațiul de stocare al browserului.
    .sq = Projektet e ruajtura nuk u lexuan dot ({ $error }). Një kopje u ruajt në hapësirën ruajtëse të shfletuesit.
    .el = Τα αποθηκευμένα έργα δεν μπόρεσαν να διαβαστούν ({ $error }). Ένα αντίγραφο κρατήθηκε στον χώρο αποθήκευσης του προγράμματος περιήγησης.
    .ru = Не удалось прочитать сохранённые проекты ({ $error }). Копия сохранена в хранилище браузера.
    .uk = Не вдалося прочитати збережені проєкти ({ $error }). Копію збережено у сховищі браузера.
    .la = Opera servata legi non potuerunt ({ $error }). Exemplar in repositorio navigatri servatum est.
    .grc = Τὰ σῳζόμενα ἔργα οὐκ ἠδυνήθη ἀναγνωσθῆναι ({ $error }). Ἀντίγραφον ἐφυλάχθη ἐν τῇ ἀποθήκῃ τοῦ περιηγητοῦ.
    .zh = 无法读取已保存的单词本（{ $error }）。已在浏览器存储中保留一份副本。
    .ko = 저장된 단어장을 읽을 수 없어요({ $error }). 복사본을 브라우저 저장소에 남겨 두었어요.
    .ja = 保存された単語帳を読み込めませんでした（{ $error }）。コピーをブラウザのストレージに残しました。
    .ar = تعذرت قراءة المشاريع المحفوظة ({ $error }). تم الاحتفاظ بنسخة في تخزين المتصفح.

error-storage-full =
    .en = Browser storage is full or blocked
    .de = Der Browserspeicher ist voll oder gesperrt
    .bar = Da Browserspeicher is voi oder gsperrt
    .fr = Le stockage du navigateur est plein ou bloqué
    .es = El almacenamiento del navegador está lleno o bloqueado
    .pt = O armazenamento do navegador está cheio ou bloqueado
    .it = La memoria del browser è piena o bloccata
    .nl = De opslag van de browser is vol of geblokkeerd
    .da = Browserens lager er fuldt eller blokeret
    .nb = Nettleserlagringen er full eller blokkert
    .sv = Webbläsarens lagring är full eller blockerad
    .fi = Selaimen tallennustila on täynnä tai estetty
    .is = Geymsla vafrans er full eða lokuð
    .pl = Pamięć przeglądarki jest pełna lub zablokowana
    .cs = Úložiště prohlížeče je plné nebo zablokované
    .sk = Úložisko prehliadača je plné alebo zablokované
    .hu = A böngésző tárhelye megtelt vagy le van tiltva
    .hr = Pohrana preglednika je puna ili blokirana
    .ro = Spațiul de stocare al browserului este plin sau blocat
    .sq = Hapësira ruajtëse e shfletuesit është plot ose e bllokuar
    .el = Ο χώρος αποθήκευσης του προγράμματος περιήγησης είναι γεμάτος ή αποκλεισμένος
    .ru = Хранилище браузера заполнено или заблокировано
    .uk = Сховище браузера заповнене або заблоковане
    .la = Repositorium navigatri plenum aut clausum est
    .grc = Ἡ ἀποθήκη τοῦ περιηγητοῦ πλήρης ἐστὶν ἢ κεκλεισμένη
    .zh = 浏览器存储已满或被禁用
    .ko = 브라우저 저장소가 가득 찼거나 차단되었어요
    .ja = ブラウザのストレージがいっぱいか、ブロックされています
    .ar = تخزين المتصفح ممتلئ أو محظور

