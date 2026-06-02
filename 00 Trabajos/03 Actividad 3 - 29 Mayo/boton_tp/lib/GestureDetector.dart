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
