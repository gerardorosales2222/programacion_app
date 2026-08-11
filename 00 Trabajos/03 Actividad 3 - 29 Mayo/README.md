
# Botones 📱


  ## Trabajo solucionado

  # Class main
```dart
import 'package:flutter/material.dart';
import 'package:boton_tp/GestureDetector.dart';
import 'package:boton_tp/ElevatedButton.dart';

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
      backgroundColor: Colors.purple,
      title: Center(
        child: Text(
          "BOTON TP.",
          style: TextStyle(color: Colors.black),
        ),
      ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 300),
        child: Row( mainAxisAlignment: MainAxisAlignment.center,
        children: [
          boton1(),
          boton2(),
        ],
      ),
      )
      );
  }
}
```

#Class ElevatedButton
```dart

import 'package:flutter/material.dart';
import 'package:boton_tp/GestureDetector.dart';

class boton1 extends StatefulWidget {
  const boton1({super.key});

  @override
  State<boton1> createState() => _boton1State();
}

class _boton1State extends State<boton1> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Boton N°1 tocado!"))
        );
      },
      child: Container(
        width: 150,
        height: 70,
        color: Colors.indigo,
        alignment: Alignment.center,
        child: Text(
          'Toca Aqui',
          style:  TextStyle(color: Colors.white, fontSize: 15)
          
        ),
      ),
    );
  }
}
```

# Class GestureDetector
```dart

import 'package:flutter/material.dart';

class boton2 extends StatefulWidget {
  const boton2({super.key});

  @override
  State<boton2> createState() => _boton2State();
}

class _boton2State extends State<boton2> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Boton N°2 Tocado!'))
        );
      },
      child: Container(
        width: 150,
        height: 70,
        color: Colors.blueGrey,
        alignment: Alignment.center,
        child: Text(
          'Toca Aqui',
          style:  TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
    );
  }
}
```