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



## Trabajo Practico sobre Botones
### main
``` dart
import 'package:detector_button/button.dart';
import 'package:detector_button/gesture_detector.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Index());
  }
}

class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Center(
          child: Text(
            "DETECTOR VS BUTTON",
            style: TextStyle(color: Colors.deepOrange),
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: name()),
            SizedBox(height: 20),
            Expanded(child: Button()),
          ],
        ),
      ),
    );
  }
}
```
### clase conteiner
``` dart
import 'package:flutter/material.dart';

class name extends StatefulWidget {
  const name({super.key});

  @override
  State<name> createState() => _nameState();
}

class _nameState extends State<name> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.amber,
            content: Text(
              "Container tocado!",
              style: TextStyle(color: Colors.black),
            ),
          ),
        );
      },
      child: Container(
        width: 150,
        height: 50,
        color: const Color(0xFFF57F17),
        alignment: Alignment.center,
        child: Text(
          "Toca aqui!",
          style: TextStyle(color: Color(0xFF004D40), fontSize: 18),
        ),
      ),
    );
  }
}

```
### clase boton 
``` dart
import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text("Boton tocado")));
      },
      child: const Text("Presionar"),
    );
  }
}
