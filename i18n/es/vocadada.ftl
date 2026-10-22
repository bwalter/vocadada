## Side panel

app-tagline = ¡Aprende palabras de forma divertida!
language = Idioma
my-projects = 📚 Mis proyectos
no-projects = Todavía no hay proyectos.
word-count =
    { $count ->
        [one] { $count } palabra
       *[other] { $count } palabras
    }
new-project = ➕ Nuevo proyecto
new-project-name-label = Nombre del nuevo proyecto:
new-project-name-hint = p. ej. Animales
create = ✔ Crear
cancel = Cancelar
rename = ✏ Renombrar
delete = 🗑 Borrar

## Delete dialog

delete-title = ¿Borrar este proyecto?
delete-body = «{ $name }» y todas sus palabras desaparecerán para siempre.
delete-confirm = 🗑 Sí, borrar
delete-keep = No, guardarlo

## Share and import

share = 📤 Compartir
import = 📥 Importar
share-title = Compartir «{ $name }»
share-body = Cópialo como texto o como imagen QR y envíalo, p. ej. por WhatsApp o Signal. La otra persona pega el texto o escanea el código QR en 📥 Importar.
qr-too-big = Este proyecto es demasiado grande para un código QR. Usa el código de abajo.
scan-qr = 📷 Escanear código QR
scan-stop = ✖ Apagar la cámara
camera-error = No se pudo iniciar la cámara. Permite el acceso a la cámara, por favor.
copy-text = 📋 Copiar como texto
copy-qr = 📋 Copiar como imagen QR
copied = ✔ ¡Copiado!
close = Cerrar
import-title = Importar un proyecto
import-body = Pega el código que has recibido:
import-hint = Pega el código aquí
paste = 📋 Pegar
paste-text-or-qr = 📋 Pegar texto o imagen QR
paste-empty = No hay nada que pegar.
qr-not-found = No se encontró ningún código QR en la imagen copiada.
import-preview =
    { $count ->
        [one] «{ $name }» con { $count } palabra
       *[other] «{ $name }» con { $count } palabras
    }
import-invalid = Este código no parece correcto. ¿Lo has copiado entero?

## Welcome screen

welcome-title = ¡Bienvenido a Vocadada!
welcome-body = Crea tu primer proyecto para empezar a aprender palabras.

## Mode tabs

tab-edit = ✏ Editar
tab-view = 👀 Ver
tab-test = 🎯 Prueba

## Edit mode

languages = 🌍 Idiomas
language-1-hint = p. ej. Inglés
language-2-hint = p. ej. Francés
default-language-1 = Idioma 1
default-language-2 = Idioma 2
add-word-title = ➕ Añadir una palabra nueva
add = Añadir
add-word-tip = Consejo: pulsa Intro para pasar a la siguiente casilla.
add-word-tip-desktop = Consejo: pulsa Intro para pasar a la siguiente casilla y Mayús+Intro para una línea nueva en el ejemplo.
no-words-edit = ¡Todavía no hay palabras! Añade la primera abajo.
remove-word = Quitar esta palabra
example = 💬 Ejemplo
example-hint = Ejemplo (opcional)

## View mode

no-words-view = Todavía no hay palabras que ver. ¡Añade algunas en ✏ Editar!
shuffle = 🔀 Mezclar
original-order = ↩ Orden original
hide = 🙈 Ocultar
tap-to-peek = ❓ Toca para ver
show-example = Mostrar ejemplo

## Test mode

no-words-test = Todavía no hay palabras para la prueba. ¡Añade algunas primero en ✏ Editar!
test-direction-question = ¿En qué dirección quieres practicar?
words-waiting =
    { $count ->
        [one] ¡Una palabra te está esperando!
       *[other] ¡{ $count } palabras te están esperando!
    }
check-answer = Comprobar la respuesta
the-answer-is = La respuesta es
answer-knew = ✔ Lo sabía
answer-did-not-know = ✖ No lo sabía
finish = 🏁 Terminar
good-answers = Respuestas correctas
mistakes-label = Errores

## Test results

result-perfect = ¡PERFECTO! ¡Eres una superestrella!
result-all-known = ¡Hurra! ¡Has aprendido todas las palabras!
result-good = ¡Muy bien! ¡Sigue así!
result-start = ¡Buen comienzo! ¡La práctica hace al maestro!
known-of-total = { $known } de { $total }
first-try = Correctas al primer intento: { $count } de { $total }
mistakes-count =
    { $count ->
        [0] ¡Ningún error!
        [one] 1 error
       *[other] { $count } errores
    }
words-to-practise = Palabras para practicar otra vez
play-again = 🔁 Jugar otra vez
practise-hard-words = 💪 Practicar las palabras difíciles
back = ⬅ Volver

## Messages

ok = Vale
error-save = No se pudo guardar: { $error }
error-read = No se pudo leer { $path }: { $error }
error-broken-file = No se pudieron leer los proyectos guardados ({ $error }). Se guardó una copia en { $path }
error-no-data-folder = No se encontró ninguna carpeta de datos
error-storage-unavailable = El almacenamiento del navegador no está disponible
error-broken-storage = No se pudieron leer los proyectos guardados ({ $error }). Se guardó una copia en el almacenamiento del navegador.
error-storage-full = El almacenamiento del navegador está lleno o bloqueado
