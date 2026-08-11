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
