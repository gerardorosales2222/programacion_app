# 📝 Primer Parcial: Resolución y Material de Estudio

¡Hola a todos! En este apartado encontrarán la resolución oficial del **Primer Parcial**. Este repositorio tiene como objetivo principal servir como material didáctico de apoyo y repaso para que puedan consolidar los conceptos evaluados en clase.

---
A continuación, se presenta un código en Dart que servirá de **código de ejemplo** sobre el cual se realizarán preguntas:


```Dart
Column(
  children: [
    Text(
      'Resultado: $resultado',
      style: const TextStyle(fontSize: 24),
    ),
    GestureDetector(
      onTap: () {
        setState(() {
          resultado = numeroA + numeroB;
        });
      },
      child: Container(
        height: 100,
        width: 200,
        color: Colors.blue,
        child: const Center(
          child: Text(
            'Calcular Suma',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    ),
  ],
)
```
# Preguntas
## 1 -  Escriba en su examen la palabra que falta: style es una __________ de Text?
**Respuesta:** Propiedad

## 2 - ¿Qué concepto se ve en el siguiente fragmento de código, el cuál pertenece al ejemplo? Aparece dos veces. Explíquelo.
```Dart
onTap: () {
            setState(() {
              resultado = numeroA + numeroB;
            });
        }
```

**Respuesta:** El concepto que aparece dos veces es el de Funciones Anónimas (también conocidas como lambdas o closures).

Una función anónima es, fundamentalmente, una función que no tiene un nombre asociado. En lugar de declararse formalmente para ser reutilizada en cualquier parte del código, se define y se ejecuta directamente en el lugar y momento exacto donde se necesita.

### ¿Dónde aparecen las dos veces en el ejemplo?

**En la propiedad onTap: () { ... }:** Se define una función anónima que contiene el bloque de código que se ejecutará únicamente cuando el usuario presione el GestureDetector.

**Dentro del argumento de setState(() { ... }):** Se le pasa como parámetro a setState otra función anónima que contiene la lógica de la operación (resultado = numeroA + numeroB;). Al hacerlo, Flutter ejecuta ese bloque interno y sabe que debe redibujar la pantalla con los nuevos valores.

## 3 - Dibuje cómo se vería la interfaz gráfica programada en el código de ejemplo.

![Imagen de cómo quedaría](https://github.com/gerardorosales2222/programacion_app/blob/main/img/03_parcial.png)

>Importante aclarar que al lado de Resultado está el número 0. Eso solamente si inicializamos el resultado con ese valor y fuera la primera vez que ejecutamos la app. Viene de esta línea de código 'Resultado: $resultado'.

## 4 - ¿Qué es setState()? ¿Qué hace en el código de ejemplo?

**Respuesta:**
`setState()` es un método fundamental en Flutter que pertenece a la clase `State` (de los `StatefulWidgets`). Su función principal es **notificar al framework que el estado interno de un objeto ha cambiado**, lo que obliga a Flutter a programar el redibujo (reconstrucción) del widget y de sus hijos en la pantalla.

### **¿Qué hace en el código de ejemplo?**
```dart
onTap: () {
  setState(() {
    resultado = numeroA + numeroB;
  });
}
```
En el ejemplo, cuando el usuario presiona el botón (`onTap`), se ejecuta la operación matemática `numeroA + numeroB` dentro de `setState()`. 
* **Si no usáramos `setState()`:** La variable `resultado` cambiaría su valor en la memoria, pero el usuario seguiría viendo el valor viejo en la pantalla porque el widget `Text` no se habría enterado de que debe actualizarse.
* **Al usar `setState()`:** Flutter toma el nuevo valor de `resultado` y vuelve a renderizar la interfaz en milisegundos, mostrando el resultado real en la pantalla.

---

## 5 - ¿Qué es un Container?

### **Respuesta:**
Un `Container` es un widget de conveniencia estructural y visual en Flutter. Funciona como una **"caja" contenedora** que combina capacidades comunes de pintura, posicionamiento y dimensionamiento de widgets en un solo lugar.

Se utiliza principalmente para:
* **Dimensionar:** Definir un ancho (`width`) y un alto (`height`) específicos para un componente.
* **Decorar:** Añadir colores de fondo (`color` o `decoration`), bordes, esquinas redondeadas o sombras.
* **Márgenes y Relleno:** Espaciar el contenido por dentro (`padding`) o por fuera (`margin`).

En el ejemplo, se usa para darle cuerpo al botón: una caja azul de 100x200 píxeles que contiene el texto centrado.

---

## 6 - ¿Para qué sirve const?

### **Respuesta:**
La palabra clave `const` se utiliza para declarar **constantes en tiempo de compilación**. En el contexto de Flutter, cuando anteponemos `const` a un widget (por ejemplo, `const TextStyle(...)` o `const Center(...)`), le estamos diciendo al framework que ese elemento y todo su contenido **nunca van a cambiar durante la ejecución de la app**.

### **¿Para qué sirve? (Beneficio principal):**
Sirve para la **optimización del rendimiento**. Cuando Flutter necesita redibujar la pantalla (por ejemplo, al llamar a un `setState`), **ignora por completo** los widgets marcados con `const`, ya que sabe que son idénticos a los que ya están dibujados. Esto ahorra memoria RAM, ciclos de CPU y evita la reconstrucción innecesaria de interfaces fijas.

---

## 7 - ¿Cuál es la diferencia entre un child y un children?

### **Respuesta:**
La diferencia radica en la **cantidad de widgets hijos** que un componente está diseñado para albergar dentro del árbol de interfaces:

* **`child` (Hijo único):** Es una propiedad que acepta **un solo widget**. Se utiliza en componentes cuya estructura está pensada para envolver, estilizar o alinear un único elemento. 
  * *Ejemplos:* `Center`, `Container`, `GestureDetector`.
* **`children` (Múltiples hijos):** Es una propiedad que acepta **una lista de widgets** (`List<Widget>`). Se utiliza en componentes cuyo propósito es organizar y distribuir múltiples elementos en el espacio.
  * *Ejemplos:* `Column` (organiza hacia abajo), `Row` (organiza hacia los lados), `ListView`.

---

## 8.- ¿Qué es el estado interno de un Widget?

### **Respuesta:**
El **estado** (*state*) es la información o los datos que un widget puede leer de forma sincrónica cuando se construye y que **puede cambiar o modificarse a lo largo de la vida útil del widget**. 

Es el "bloque de memoria viva" de la interfaz. Incluye variables de lógica de negocio, datos ingresados por el usuario, el estado de un interruptor (on/off), animaciones activas o, como en nuestro ejemplo, el valor dinámico de una variable matemática (`resultado`). El estado determina exactamente cómo debe verse la interfaz en un momento dado.

---

## 9.- ¿Qué es un Widget y cómo se clasifican de acuerdo a su estado interno?

### **Respuesta:**
En Flutter, **un Widget es la unidad básica de construcción de la interfaz de usuario**. Prácticamente todo en Flutter es un widget: un texto, un color, un botón, una alineación e incluso la aplicación entera. Los widgets describen cómo debería verse su vista según su configuración y estado actual.

De acuerdo a su estado interno, se clasifican en dos grandes grupos:

1. **StatelessWidget (Widgets sin estado):** Son widgets **inmutables y estáticos**. Una vez que se dibujan con las propiedades que recibieron en su constructor, no pueden cambiar por sí mismos ni modificar su información interna durante su ciclo de vida. Si se quiere actualizar un `StatelessWidget`, hay que destruir el viejo y crear uno nuevo con datos diferentes. *(Ejemplo: `Text`, `Icon`)*.
2. **StatefulWidget (Widgets con estado):** Son widgets **dinámicos y mutables**. Tienen asociada una clase secundaria llamada `State` que les permite almacenar datos que cambian con el tiempo o la interacción del usuario. Pueden redibujarse a sí mismos tantas veces como sea necesario utilizando `setState()`. *(Ejemplo: `Checkbox`, `TextField`, o la pantalla del ejemplo que calcula la suma)*.

---

## 10.- ¿Qué es el Scaffold?

### **Respuesta:**
El `Scaffold` (que en español significa *andamio*) es un widget especial en Flutter que implementa la **estructura visual y el diseño arquitectónico básico de Material Design**. 

Proporciona un armazón preconfigurado con "huecos" específicos para colocar de manera estándar los componentes más comunes de una aplicación móvil moderna, tales como:
* `appBar`: La barra superior de navegación.
* `body`: El cuerpo o contenido principal de la pantalla.
* `floatingActionButton`: El botón flotante de acción principal.
* `drawer`: El menú lateral desplegable.
* `bottomNavigationBar`: La barra de navegación inferior.

Es, fundamentalmente, el lienzo en blanco que organiza la estructura visual de casi cualquier pantalla de una app en Flutter.