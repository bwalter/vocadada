## Side panel

app-tagline = Aprende palavras de forma divertida!
language = Língua
my-projects = 📚 Os meus projetos
no-projects = Ainda não há projetos.
word-count =
    { $count ->
        [one] { $count } palavra
       *[other] { $count } palavras
    }
new-project = ➕ Novo projeto
new-project-name-label = Nome do novo projeto:
new-project-name-hint = p. ex. Animais
create = ✔ Criar
cancel = Cancelar
rename = ✏ Mudar o nome
delete = 🗑 Apagar

## Delete dialog

delete-title = Apagar este projeto?
delete-body = "{ $name }" e todas as suas palavras vão desaparecer para sempre.
delete-confirm = 🗑 Sim, apagar
delete-keep = Não, manter

## Share and import

share = 📤 Partilhar
import = 📥 Importar
share-title = Partilhar "{ $name }"
share-body = Copia-o como texto ou como imagem QR e envia-o, p. ex. pelo WhatsApp ou Signal. A outra pessoa cola o texto ou lê o código QR em 📥 Importar.
qr-too-big = Este projeto é demasiado grande para um código QR. Usa o código abaixo.
scan-qr = 📷 Ler código QR
scan-stop = ✖ Desligar a câmara
camera-error = Não foi possível ligar a câmara. Por favor, permite o acesso à câmara.
copy-text = 📋 Copiar como texto
copy-qr = 📋 Copiar como imagem QR
copied = ✔ Copiado!
close = Fechar
import-title = Importar um projeto
import-body = Cola o código que recebeste:
import-hint = Cola o código aqui
paste = 📋 Colar
paste-text-or-qr = 📋 Colar texto ou imagem QR
paste-empty = Não há nada para colar.
qr-not-found = Não foi encontrado nenhum código QR na imagem copiada.
import-preview =
    { $count ->
        [one] "{ $name }" com { $count } palavra
       *[other] "{ $name }" com { $count } palavras
    }
import-invalid = Este código não parece correto. Copiaste-o todo?

## Welcome screen

welcome-title = Bem-vindo ao Vocadada!
welcome-body = Cria o teu primeiro projeto para começares a aprender palavras.

## Mode tabs

tab-edit = ✏ Editar
tab-view = 👀 Ver
tab-test = 🎯 Teste

## Edit mode

languages = 🌍 Línguas
language-1-hint = p. ex. Inglês
language-2-hint = p. ex. Francês
default-language-1 = Língua 1
default-language-2 = Língua 2
add-word-title = ➕ Adicionar uma palavra nova
add = Adicionar
add-word-tip = Dica: carrega em Enter para passar para o campo seguinte.
add-word-tip-desktop = Dica: carrega em Enter para passar para o campo seguinte e em Shift+Enter para uma nova linha no exemplo.
no-words-edit = Ainda não há palavras! Adiciona a primeira abaixo.
remove-word = Remover esta palavra
example = 💬 Exemplo
example-hint = Exemplo (opcional)

## View mode

no-words-view = Ainda não há palavras para ver. Adiciona algumas em ✏ Editar!
shuffle = 🔀 Baralhar
original-order = ↩ Ordem original
hide = 🙈 Esconder
tap-to-peek = ❓ Toca para espreitar
show-example = Mostrar exemplo

## Test mode

no-words-test = Ainda não há palavras para o teste. Adiciona primeiro algumas em ✏ Editar!
test-direction-question = Em que direção queres praticar?
words-waiting =
    { $count ->
        [one] Uma palavra está à tua espera!
       *[other] { $count } palavras estão à tua espera!
    }
check-answer = Ver a resposta
the-answer-is = A resposta é
answer-knew = ✔ Eu sabia
answer-did-not-know = ✖ Eu não sabia
finish = 🏁 Terminar
good-answers = Respostas certas
mistakes-label = Erros

## Test results

result-perfect = PERFEITO! És uma superestrela!
result-all-known = Viva! Aprendeste todas as palavras!
result-good = Muito bem! Continua assim!
result-start = Bom começo! A prática leva à perfeição!
known-of-total = { $known } de { $total }
first-try = Certas à primeira tentativa: { $count } de { $total }
mistakes-count =
    { $count ->
        [0] Nenhum erro!
        [one] 1 erro
       *[other] { $count } erros
    }
words-to-practise = Palavras para praticar outra vez
play-again = 🔁 Jogar outra vez
practise-hard-words = 💪 Praticar as palavras difíceis
back = ⬅ Voltar

## Messages

ok = OK
error-save = Não foi possível guardar: { $error }
error-read = Não foi possível ler { $path }: { $error }
error-broken-file = Não foi possível ler os projetos guardados ({ $error }). Foi guardada uma cópia em { $path }
error-no-data-folder = Não foi encontrada nenhuma pasta de dados
error-storage-unavailable = O armazenamento do navegador não está disponível
error-broken-storage = Não foi possível ler os projetos guardados ({ $error }). Foi guardada uma cópia no armazenamento do navegador.
error-storage-full = O armazenamento do navegador está cheio ou bloqueado
