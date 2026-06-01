import 'package:detector_button/gesture_detector.dart';
import 'package:flutter/material.dart';

class boton2 extends StatefulWidget {
  const boton2({super.key});

  @override
  State<boton2> createState() => _boton2State();
}

class _boton2State extends State<boton2> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Boton tocado!"))
        );
      },
      child: Container(
        width: 150,
        height: 50,
        color: Colors.red,
        alignment: Alignment.center,
        child: Text(
          'tocá aqui',
          style:  TextStyle(color: Colors.amberAccent, fontSize: 18)
          
        ),
      ),
    );
  }
}