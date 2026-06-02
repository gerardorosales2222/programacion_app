import 'package:flutter/material.dart';
import 'package:desafio_botones/elevatedButton.dart';
import 'package:desafio_botones/gestureDetector.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Index()
    );
  }
}
class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State <Index> createState() => IndexState();
}

class IndexState extends State <Index> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children:[
        ButtonElevated(),
        BotonGesto(),
        ],
      ),
      );
  }
}