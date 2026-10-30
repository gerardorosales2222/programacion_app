CUESTIONARIO
# 1.- ¿Cuál es el stack que usamos en la materia?
	Lenguaje de programación: Dart
	Framework: Flutter
	IDE: VSC
# 2.- Hable sobre el estado interno de los widgets.
Es un conjunto de variables pertenecientes a un widget. Solamente pueden cambiar su estado interno los StateFull Widgets. 
# 3.- ¿Qué es setState( )?
	Es un método que se usa para cambiar el estado interno de un Widget. Solamente se puede cambiar el estado interno de los StateFull Widgets.
# 4.- ¿Para qué se usa child?
	Es una propiedad de un widgets que permite envolver un único Widget hijo.

# 5. ¿Qué es una API REST y cuál es su función en una APP?
¿Qué es?

Una API REST (Representational State Transfer) es un estilo de arquitectura de software para diseñar servicios web. Utiliza el protocolo HTTP estándar para la transferencia de datos y se basa en operaciones sin estado (stateless), empleando métodos habituales como GET (consultar), POST (crear), PUT/PATCH (actualizar) y DELETE (eliminar).

Función en una app:

Funciona como el "puente" o intermediario de comunicación entre la aplicación móvil o web (el cliente) y el servidor o base de datos. Permite que la app solicite información, envíe datos de formularios, gestione sesiones de usuarios y reciba respuestas actualizadas sin necesidad de recargar toda la interfaz.

# 6. ¿Qué es el formato JSON?
Definición:

JSON (JavaScript Object Notation) es un formato ligero de intercambio de datos. Es texto plano, fácil de leer y escribir para los seres humanos, y fácil de parsear y generar para las máquinas.

Características principales:

Está estructurado principalmente en pares de clave-valor (similares a los diccionarios o mapas) y en listas o arreglos ordenados.

Aunque su sintaxis deriva de JavaScript, es totalmente independiente del lenguaje y hoy en día es el estándar universal para la transmisión de datos en las APIs web y móviles.

# 7. Definición de Frontend y Backend y ¿Cómo se comunican habitualmente?
Frontend (Cliente):

Es la capa de la aplicación con la que el usuario interactúa de manera directa (la interfaz gráfica, pantallas, botones, formularios, animaciones). En aplicaciones móviles se desarrolla con tecnologías como Flutter, Kotlin o Swift; en web, con HTML, CSS, JavaScript, React, etc.

Backend (Servidor):

Es la lógica oculta del sistema que opera en el servidor. Se encarga de procesar las reglas de negocio, gestionar la autenticación y seguridad, conectarse con las bases de datos y procesar operaciones complejas. Se desarrolla con tecnologías como Java (Spring Boot), Node.js, Python, PHP, entre otras.

¿Cómo se comunican habitualmente?

Se comunican a través de solicitudes y respuestas HTTP/HTTPS mediante una API (por lo general REST).

El Frontend realiza una petición al servidor (por ejemplo, al pulsar un botón de inicio de sesión).

El Backend procesa los datos recibidos, consulta la base de datos y genera una respuesta.

El Backend devuelve la respuesta empaquetada habitualmente en formato JSON a través de la red.

El Frontend recibe ese JSON, lo interpreta y actualiza la interfaz visual para mostrársela al usuario.