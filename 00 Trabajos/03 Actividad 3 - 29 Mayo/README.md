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

## Desarrollo (clase main,gesture_detector,elevat_button)
### main
```dart
import 'package:flutter/material.dart';
import 'gesture_boton.dart';
import 'elevated_ejemplo.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Index(),
    );
  }
}

class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Row(
        children: [
          Expanded(child: ejemplo_gesture(),),
          Expanded(child: elevated_ejemplo(),),
        ],
      )
    );
  }
}
```

---
## gesture_boton.dart
```dart
import 'package:flutter/material.dart';

class ejemplo_gesture extends StatefulWidget {
  const ejemplo_gesture({super.key});

  @override
  State<ejemplo_gesture> createState() => _ejemplo_gestureState();
}

class _ejemplo_gestureState extends State<ejemplo_gesture> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:  (){ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Botón Tocado')),
      );},
      child: Container(
        height: 100,
        width: 200,
        color: Colors.blue,
        child: Center(
          child: Text(
            'Tocar',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
```
## elevated_ejemplo.dart
```dart
import 'package:flutter/material.dart';

class elevated_ejemplo extends StatefulWidget {
  const elevated_ejemplo({super.key});

  @override
  State<elevated_ejemplo> createState() => _elevated_ejemploState();
}

class _elevated_ejemploState extends State<elevated_ejemplo> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Botón Presionado'))
      );},
      child: Text("Botón"));
  }
}
```
