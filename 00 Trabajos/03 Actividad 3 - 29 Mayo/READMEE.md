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
```
