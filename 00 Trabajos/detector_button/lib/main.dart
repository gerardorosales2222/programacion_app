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
