import 'package:flutter/material.dart';


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