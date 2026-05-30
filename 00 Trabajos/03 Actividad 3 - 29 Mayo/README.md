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

## Resolución de trabajo.

### clase main.

```dart
import 'package:detector_button/elevated_button.dart';
import 'package:detector_button/gesture_detector.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: index(),
    );
  }
}

class index extends StatefulWidget {
  const index({super.key});

  @override
  State<index> createState() => _indexState();
}

class _indexState extends State<index> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.amberAccent,
      title: Center(
        child: Text(
          "DETECTOR VS BUTTON",
          style: TextStyle(color: Colors.deepOrange),
        ),
      ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10),
        child: Row( mainAxisAlignment: MainAxisAlignment.center,
        children: [
          boton(),
          boton2(),
        ],
      ),
      )
      );
  }
}

```
### Clase elevated_button
```dart
import 'package:detector_button/gesture_detector.dart';
import 'package:flutter/material.dart';

class boton2 extends StatefulWidget {
  const boton2({super.key});

  @override
  State<boton2> createState() => _boton2State();
}

class _boton2State extends State<boton2> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Boton tocado!"))
        );
      },
      child: Container(
        width: 150,
        height: 50,
        color: Colors.red,
        alignment: Alignment.center,
        child: Text(
          'tocá aqui',
          style:  TextStyle(color: Colors.amberAccent, fontSize: 18)
          
        ),
      ),
    );
  }
}
```
### Clase elevated_button
```dart
import 'package:flutter/material.dart';

class boton extends StatefulWidget {
  const boton({super.key});

  @override
  State<boton> createState() => _botonState();
}

class _botonState extends State<boton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('container tocado!'))
        );
      },
      child: Container(
        width: 150,
        height: 50,
        color: Colors.blue,
        alignment: Alignment.center,
        child: Text(
          'tocá aqui',
          style:  TextStyle(color: Colors.amberAccent, fontSize: 18),
        ),
      ),
    );
  }
}

```