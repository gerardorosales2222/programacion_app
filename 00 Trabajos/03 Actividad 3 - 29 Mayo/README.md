![Static Badge](https://img.shields.io/badge/Prog._de_APP_para_Dispositivos_M%C3%B3viles-Actividad_3-brightgreen)

# Botones 📱
**Fecha de entrega y defensa oral grupal:** Lunes 1 de Junio

>Realizar la entrega mediante un Pull Request

# Desafío Flutter: Stateless Widgets e Interacción 📱

## Objetivo
Desarrollar una app de pantalla única en Flutter usando **Stateless Widgets** y dos formas de capturar clics.

## Requisitos Técnicos
1. **Estructura:** Todo el código debe estar dentro de un `StatelessWidget`.
2. **Botón 1:** Un `ElevatedButton` estándar.
3. **Botón 2:** Un `GestureDetector` que envuelva a un `Container` personalizado.
4. **Acción:** Al presionar cada botón, debe mostrarse un mensaje (`print` o `SnackBar`) indicando cuál se tocó.
5. **Código:** Uso correcto de `const` y formato limpio y modular.

## Entrega (Requisito Excluyente)
1. Subir el código a GitHub en una rama secundaria.
2. Crear un **Pull Request (PR)** hacia mi rama principal (`main`/`master`).
3. **Plazo:** El PR debe estar creado antes del lunes.

## Evaluación Oral (El Lunes)
Defensa individual **línea por línea** del código. Deben saber explicar:
* El ciclo de vida de un `StatelessWidget` y el método `build`.
* Qué es y para qué sirve el `BuildContext`.
* La diferencia entre `ElevatedButton` y `GestureDetector`.


## TRABAJO PRACTICO DE MALDONADO ROMAN OMAR
## CODIGO DE ARCHIVO MAIN

```dart
// Importa el paquete principal de Flutter para usar widgets visuales
import 'package:flutter/material.dart';

// Importa el widget ElevatedButton desde su archivo separado
import 'package:trabajo_practico/Elevatedbutton.dart';

// Importa el widget MiGestureDetector desde su archivo separado
import 'package:trabajo_practico/GestureDetector.dart';

// Función principal que inicia la aplicación Flutter
void main() {
  // runApp lanza la app y coloca MainApp como widget raíz
  runApp(const MainApp());
}

// MainApp es el widget raíz de la aplicación, no maneja estado
class MainApp extends StatelessWidget {
  // Constructor constante para optimización en tiempo de compilación
  const MainApp({super.key});

  // build describe la interfaz visual de este widget
  @override
  Widget build(BuildContext context) {
    // MaterialApp provee la estructura base con tema y navegación de Material Design
    return const MaterialApp(
      // home define la pantalla inicial de la aplicación
      home: Index(),
    );
  }
}

// Index es la pantalla principal de la app, no necesita manejar estado
class Index extends StatelessWidget {
  // Constructor constante para optimización en tiempo de compilación
  const Index({super.key});

  // build construye la interfaz visual cada vez que el widget se dibuja
  @override
  Widget build(BuildContext context) {
    // Scaffold provee la estructura visual básica: fondo, appbar, body, etc.
    return Scaffold(
      // body es el contenido principal de la pantalla
      body: Center(
        // Center centra su hijo horizontal y verticalmente en la pantalla
        child: Column(
          // mainAxisAlignment centra los hijos verticalmente en la columna
          mainAxisAlignment: MainAxisAlignment.center,
          // children es la lista de widgets que se muestran en la columna
          children: [
            // Muestra el widget del botón elevado
            Elevatedbutton(),
            // Muestra el widget del gesto detector personalizado
            MiGestureDetector(),
          ],
        ),
      ),
    );
  }
}
```
## CODIGO DEL MODULO ELEVATEDBUTTON
```dart
import 'package:flutter/material.dart';// Importa el paquete principal de Flutter para usar widgets visuales

// Clase que representa el widget del botón elevado, maneja estado interno
// StatefulWidget se usa cuando el widget puede cambiar su estado

class Elevatedbutton extends StatefulWidget {
  // Constructor constante para optimización en tiempo de compilación
  const Elevatedbutton({super.key});

 @override
  // @override significa que estamos sobrescribiendo
  // un método que ya existe en StatefulWidget

  // createState() es un método de todos los StatefulWidget
  // Este método devuelve el estado asociado al widget

  // Hay polimorfismo porque el método existe en la clase padre
  // pero aquí lo personalizamos

  // => es una Arrow Function (forma corta de función)
  State<Elevatedbutton> createState() => _ElevatedbuttonState();
}

class _ElevatedbuttonState extends State<Elevatedbutton> {
  @override
  // build describe la interfaz visual del widget y se ejecuta cada vez que se dibuja
  Widget build(BuildContext context) {
    // ElevatedButton es un botón con sombra y estilo Material Design
    return ElevatedButton(
      // onPressed detecta cuando el usuario toca el botón
      // (){} es una función anónima
      // no tiene nombre pero ejecuta instrucciones
      onPressed: () {
        // ScaffoldMessenger muestra mensajes temporales en la pantalla
        ScaffoldMessenger.of(context).showSnackBar(
          // SnackBar muestra una barra inferior con texto
          const SnackBar(
            // content es el contenido del SnackBar
            content: Text('ElevatedBooton')
        )
      );
    },
    // child es el contenido interno del botón
      child: Text(
        // Texto visible del botón
        "Elevated Button",
        // style modifica el diseño del texto
        style: TextStyle(
          // color define el color del texto en formato ARGB
          color: Color.fromARGB(255, 244, 8, 8),
          // fontSize define el tamaño del texto en puntos lógicos
          fontSize: 18, 
          // fontWeight pone el texto en negrita
          fontWeight: FontWeight.bold, 
        ),
      ),
    );
  }
}
```
## CODIGO DEL MODULO GESTUREDETECTOR
```dart
import 'package:flutter/material.dart';

// GestureDetector.dart
class MiGestureDetector extends StatefulWidget {   // ← nombre único
  const MiGestureDetector({super.key});

  @override
  State<MiGestureDetector> createState() => _MiGestureDetectorState();
}

class _MiGestureDetectorState extends State<MiGestureDetector> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap se ejecuta cuando el usuario toca el boton
      onTap: () {
        
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(

            // content es el contenido del SnackBar
            content: Text("GestureDetector")
          )
        );
      },

      child: Container(

        // width es el ancho que va a tener el contenedor
        width: 175,

        // height es la altura
        height: 35,

        // alignment centra el contenido interno
        alignment: Alignment.center,

        // margin agrega espacio externo
        margin: EdgeInsets.symmetric(vertical: 8),

        // decoration sirve para decorar el Container
        // como color, bordes y sombras
        decoration: BoxDecoration(

          // color de fondo
          color: Color.fromARGB(255, 16, 108, 184),

          // borderRadius redondea esquinas
          borderRadius: BorderRadius.circular(20),

          // boxShadow agrega sombra
          boxShadow: [

            // BoxShadow define la sombra
            BoxShadow(
              color: const Color.fromARGB(66, 0, 0, 0),
              spreadRadius: 2,
              blurRadius: 4,

              // posición de la sombra
              offset: Offset(0, 2),
            ),
          ],
        ),

         child: Text(  "GestureDetector",
          style: TextStyle( color: Colors.white, fontSize: 18,
          ),
        ),
      ),
    );
  }
}
```