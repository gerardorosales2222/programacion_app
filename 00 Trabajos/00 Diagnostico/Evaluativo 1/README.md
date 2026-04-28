![Static Badge](https://img.shields.io/badge/Conceptos_Clave-Gu%C3%ADa_de_referencia-blue)

# Guia de referencia sobre Conceptos Clave

## 1. ¿A qué nos referimos cuando hablamos de APP?

El término APP (abreviatura de application) define a un tipo de software diseñado para realizar **tareas específicas**. Su característica principal es que es **software orientado al usuario final**: a diferencia de un sistema operativo o un servicio de red, una App existe para que una persona interactúe con ella de forma directa para resolver una necesidad.
>[!IMPORTANT]
>Una App exitosa no es solo la que funciona técnicamente, sino la que logra una interacción fluida y natural con el usuario final.

### Dependiendo del entorno donde se ejecutan, se distinguen tres tipos principales:

+ **App de Escritorio:** Se instalan y ejecutan localmente en computadoras (PC o Mac). Están diseñadas para tareas complejas que requieren mayor potencia de procesamiento y el uso de periféricos como mouse y teclado (ej: Adobe Photoshop, Microsoft Excel).

+ **App Web:** Se ejecutan dentro de un navegador y no requieren instalación. Son multiplataforma, ya que dependen de la conectividad a internet y funcionan igual en cualquier sistema (ej: Google Docs, Canva).

+ **App Móvil:** Diseñadas específicamente para smartphones y tablets. Su foco es la movilidad, la interacción táctil y el aprovechamiento de sensores del hardware (GPS, cámara, notificaciones push).

**Punto clave:** Sin importar la plataforma, el propósito de toda App es servir como interfaz entre la tecnología y las necesidades del usuario.

## 2. ¿Qué es el Frontend y qué es el Backend? De una definición con sus palabras y explique cómo se comunican habitualmente.
En el desarrollo de aplicaciones, dividimos el trabajo en dos capas fundamentales que funcionan en conjunto:

**Frontend (El lado del cliente):** Es todo lo que el usuario ve y con lo que interactúa directamente. Incluye el diseño visual, los botones, las animaciones y la lógica de presentación[^1]. Su objetivo es ofrecer una experiencia intuitiva y atractiva.
**Backend (El lado del servidor):** Es la "arquitectura invisible" que ocurre detrás de escena. Se encarga de procesar los datos, gestionar la seguridad, comunicarse con bases de datos y ejecutar la lógica de negocio compleja.

### ¿Cómo se comunican habitualmente?
El Frontend y el Backend funcionan de manera desacoplada; es decir, son entidades independientes que necesitan un lenguaje común para intercambiar información. Esta comunicación se realiza mediante API (Application Programming Interface).

Aunque existen otras alternativas (como GraphQL o WebSockets), en esta materia utilizaremos API REST por ser el estándar más extendido y compatible en el desarrollo profesional.

## 3. ¿Qué es una API REST? ¿Cuál es su función principal cuando desarrollamos una aplicación para dispositivos móviles?

Una **API REST** (REpresentational State Transfer) es un conjunto de reglas y estándares que permiten que el Frontend y el Backend se comuniquen entre sí a través del protocolo HTTP. 

Una API REST es el puente de comunicación que conecta la app con el servidor. Sus funciones clave son:

* Desacoplamiento: Separa la interfaz del usuario de la lógica del servidor mediante URLs.

* Eficiencia: Delega procesos pesados (pagos, búsquedas masivas) al servidor para ahorrar recursos del móvil.

* Sincronización: Centraliza y actualiza los datos en la nube para que sean accesibles desde cualquier dispositivo.

**Datos técnicos:** En una arquitectura REST, la comunicación suele basarse en cuatro operaciones principales conocidas como CRUD: POST (Crear), GET (Leer/Obtener), PUT (Actualizar) y DELETE (Eliminar).

El **Servicio** es el Software que está en el servidor esperando peticiones. La **API REST** es la interfaz o manual de instrucciones que define como se debe pedir. Define: los puntos de entrada: Las URLs (ej. /usuarios/login). El lenguaje: Generalmente JSON. Las reglas: Qué datos son obligatorios enviar y qué respuesta esperar.

### El proceso funciona así:

**Petición (Request):** El Frontend le pide algo al Backend (por ejemplo: "Dame la lista de productos").

**Procesamiento:** El Backend recibe el pedido, busca en la base de datos y prepara la respuesta.

**Respuesta (Response):** El Backend envía los datos de vuelta al Frontend, usualmente en un formato liviano llamado JSON, para que el móvil los dibuje en pantalla.


## 4. ¿Qué es el formato JSON? Escribe un ejemplo simple de cómo se vería un objeto "Alumno" con nombre, apellido y una lista de 3 notas en este formato.
Json es un **formato de texto** que es utilizado para el intercambio de datos. 

```json
{
  "nombre": "Román",
  "apellido": "Maldonado",
  "notas": [7.5, 9.0, 8.5]
}
```
### ¿Cómo funciona la relación Clave-Valor?
En JSON, los datos no se tiran al azar; siempre vienen en parejas. La clave sirve como el identificador y el valor es el dato asociado.

**Clave:** Es el nombre del atributo. Siempre es una cadena de texto por lo tanto lleva comillas.

**Valor:** Es el contenido. Puede ser un texto, un número, un booleano (true/false), una lista o incluso otro objeto.

## 5. ¿Qué es una librería (o biblioteca) y qué es un Framework? ¿Son lo mismo? Justifique su respuesta.
No son lo mismo. La diferencia fundamental radica en quién tiene el control del flujo del programa (concepto conocido como *Inversión de Control*).

**Librería:** Es un paquete de código pre-escrito por terceros que un programador puede integrar en su proyecto para resolver una tarea puntual (como procesar una imagen o conectar a una base de datos).

**Framework:** Es una estructura o esqueleto. El Framework define la arquitectura y el flujo de la aplicación; el programador solo rellena los huecos con su lógica específica siguiendo las reglas del Framework.

## 6. ¿Qué es un sistema de control de versiones y para qué sirve? Explique qué sucede si dos desarrolladores modifican la misma línea de código en el mismo archivo y cómo se resuelve.
Un Sistema de Control de Versiones es una herramienta que registra los cambios realizados en los archivos de un proyecto a lo largo del tiempo. Permite recuperar versiones específicas, comparar cambios y trabajar en equipo de forma organizada.
### ¿Para qué sirve?

* **Historial:** Crea una "línea de tiempo" del proyecto para volver atrás si algo falla.

* **Colaboración:** Permite que varias personas trabajen en el mismo código simultáneamente sin borrarse el trabajo entre sí.

* **Ramificación:** Facilita la creación de ramas (branches) para probar funciones nuevas sin alterar el código principal.

Si dos desarrolladores modifican exactamente lo mismo, se produce un conflicto. Aquí es donde el sistema muestra sus límites:
La herramienta no tiene criterio para saber cuál código es mejor o cuál debe quedar. No decide por su cuenta para evitar borrar trabajo importante. Git simplemente detiene el proceso y "ensucia" el archivo con marcas especiales para señalar dónde está la disputa.Un programador debe abrir el archivo, leer ambas versiones, decidir manualmente cuál dejar (o mezclar ambas) y avisarle a Git que el conflicto está resuelto.

## 7. ¿Qué es la Programación Orientada a Objetos (POO)? Defina brevemente los conceptos de Clase, Objeto y Herencia.
La Programación Orientada a Objetos (POO) es un paradigma de programación que organiza el código basándose en "objetos" de la vida real, en lugar de solo en funciones y lógica. Su objetivo es hacer que el software sea más ordenado, reutilizable y fácil de mantener.

**Clase:** Es el molde o plano. Define las características (atributos) y acciones (métodos) que tendrán los objetos. Por ejemplo, la clase Auto.

**Objeto:** Es la instancia real creada a partir del molde. Es el auto físico con un color y modelo específicos (ej. "Fiat Cronos blanco").

**Herencia:** Es la capacidad de crear una clase nueva a partir de una existente para **reutilizar** código. La clase "hija" hereda todo de la "padre" y añade lo suyo. Por ejemplo, una clase Camión hereda de Vehículo pero suma la característica "capacidad de carga".


## 8. ¿Cuál es el propósito de los modificadores de acceso public y private en el contexto de la programación orientada a objetos?
El propósito de los modificadores de acceso es controlar la visibilidad y la seguridad de los datos dentro de una clase (un concepto llamado Encapsulamiento).

+ **public (+) :** El atributo o método es accesible desde cualquier parte del programa. Se usa para lo que queremos exponer al exterior.

+ **private (-) :** El atributo o método solo es accesible dentro de la misma clase. Se usa para proteger datos sensibles y evitar que se modifiquen por error desde afuera.

### ¿Para qué sirven?

**Seguridad:** Evitan que se altere el estado interno de un objeto de forma incorrecta.

**Abstracción:** El usuario del objeto solo ve lo necesario (lo público) y no necesita entender la complejidad interna (lo privado).

> **protected (#) :** Es un punto medio. El atributo o método es accesible dentro de la misma clase y también por sus clases hijas (las que heredan de ella), pero sigue estando oculto para el resto del programa.

## 9. Explique las principales diferencias entre los sistemas operativos iOS (iPhone) y Android desde el punto de vista del desarrollo (lenguajes nativos, tiendas de aplicaciones y tipos de dispositivos). Además, mencione si conoce algún otro sistema operativo para móviles que exista o haya existido en el mercado.

| Característica | **Android** | **iOS (iPhone)** |
| :--- | :--- | :--- |
| **Lenguajes Nativos** | Kotlin / Java | Swift / Objective-C |
| **Tienda Oficial** | Google Play Store | Apple App Store |
| **Dispositivos** | Multimarca (mucha variedad) | Exclusivo de Apple (pocos modelos) |
| **Sistema de Desarrollo** | Android Studio (Libre) | Xcode (Solo en computadoras Mac) |

### Otros Sistemas Operativos (Actuales e Históricos)
Además de los líderes, han existido o existen:

+ Windows Phone / Mobile: El ecosistema de Microsoft (descontinuado).

+ BlackBerry OS: Centrado en seguridad y teclado físico (descontinuado).

+ Symbian: El sistema dominante en los antiguos Nokia (descontinuado).

+ HarmonyOS: El sistema actual de Huawei.

+ Firefox OS / Ubuntu Touch: Alternativas basadas en código abierto.

## 10. ¿Cómo piensa que una aplicación móvil podría facilitar la vida de una persona con discapacidad visual en Las Lajitas?

La clave está en usar la IA y los sensores del teléfono móvil para transformar información visual en auditiva, permitiendo una mayor autonomía en las actividades cotidianas dentro de la comunidad. Ejemplos podrían ser: Guiado por GPS con referencias locales, reconocimiento de imágenes o una función para conectar a usuarios no videntes con voluntarios locales que puedan "prestar sus ojos".

### Notas al pie

[^1]: **Lógica de presentación:** Se refiere al código encargado de decidir cómo y qué se muestra en la pantalla en función del estado de la aplicación o de las acciones del usuario. No es la "estética", sino el comportamiento funcional de la interfaz (ej: mostrar un indicador de carga o formatear una moneda).