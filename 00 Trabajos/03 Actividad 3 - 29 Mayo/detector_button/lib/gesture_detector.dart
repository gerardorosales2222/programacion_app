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
