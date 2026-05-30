import 'package:flutter/material.dart';

class ElevatedButtonModulo extends StatefulWidget {
  const ElevatedButtonModulo({super.key});

  @override
  State<ElevatedButtonModulo> createState() => _ElevatedButtonModuloState();
}
class _ElevatedButtonModuloState extends State<ElevatedButtonModulo> {

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('ElevatedButton') )
        ); },
    
        child:  Text(  "Elevated Button", style: TextStyle( color: Color.fromARGB(255, 244, 8, 8),
          fontSize: 18, fontWeight: FontWeight.bold,  ), ),);
      
  }
}
