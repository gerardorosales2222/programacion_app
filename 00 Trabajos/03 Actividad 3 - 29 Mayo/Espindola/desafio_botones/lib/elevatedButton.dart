import 'package:flutter/material.dart';

class ButtonElevated extends StatefulWidget {
  const ButtonElevated({super.key});

  @override
  State<ButtonElevated> createState() => _ButtonElevatedState();
}

class _ButtonElevatedState extends State<ButtonElevated> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Boton Elevado..?'))
        );
      }
    
    , child: Text("Elevado o..?", style: TextStyle(color: Colors.amber, fontSize:10),
    ),
    );
  }
}