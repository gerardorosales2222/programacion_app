import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}
class mi_aplicación extends StatefulWidget {
  const mi_aplicación({super.key});

  @override
  State<mi_aplicación> createState() => _mi_aplicaciónState();
}

class _mi_aplicaciónState extends State<mi_aplicación> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "EL BOTON ",
      home: Index(),
    );
  }
}
