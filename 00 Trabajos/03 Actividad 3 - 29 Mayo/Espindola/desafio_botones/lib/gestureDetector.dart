import 'package:flutter/material.dart';

class BotonGesto extends StatefulWidget {
  const BotonGesto({super.key});

  @override
  State<BotonGesto> createState() => _BotonGestoState();
}

class _BotonGestoState extends State<BotonGesto> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:  (){ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Botón Tocado')),
      );},
      child: Container (
        height:100,
        width: 200 , 
        color: Colors.blue,
        child:Center(
          child: Text(
            'Tocar',
            style: TextStyle(color: Colors.green, fontSize: 20),
          ),
    ),
      ),
    ) ;
     }
 }