# Desafío Flutter: Stateless Widgets e Interacción

## Main: 

```dart
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
```
## ElevatedButtonModulo:
```dart
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
```

## GestureDetectorModulo:
```dart
import 'package:flutter/material.dart';

class GestureDetectorModulo extends StatefulWidget {
  const GestureDetectorModulo({super.key});

  @override
  State<GestureDetectorModulo> createState() => _GestureDetectorModuloState();
}

class _GestureDetectorModuloState extends State<GestureDetectorModulo> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("GestureDetector"))
        );
      },
  child: Container(
  width: 175,
  height: 35,
  alignment: Alignment.center,
  margin: EdgeInsets.symmetric(vertical: 8),

  decoration: BoxDecoration(
    color: Color.fromARGB(255, 20, 92, 151),
    borderRadius: BorderRadius.circular(20),
    boxShadow: [
      BoxShadow(
        color: Colors.black26,
        spreadRadius: 2,
        blurRadius: 4,
        offset: Offset(0, 2),
      ),
          ],
        ),
        child:  Text( "GestureDetector", style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
```