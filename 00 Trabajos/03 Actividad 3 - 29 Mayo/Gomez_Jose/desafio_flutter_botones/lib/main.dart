import 'package:flutter/material.dart';
import 'package:desafio_flutter_botones/ElevatedButtonModulo.dart';
import 'package:desafio_flutter_botones/GestureDetectorModulo.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Index()
    );
  }
}

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           ElevatedButtonModulo(),
          GestureDetectorModulo(),
         ],
     ),
    ),);
  }
}