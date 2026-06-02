## Actividad 3 Espíndola Daniel
## Main 
```dart
import 'package:flutter/material.dart';
import 'package:desafio_botones/elevatedButton.dart';
import 'package:desafio_botones/gestureDetector.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
```
## Elevated Button
```dart 
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
    
    , child: Text("Elevado o... abajado?", style: TextStyle(color: Colors.amber, fontSize:10),
    ),
    );
  }
}

```
## Gesture Detector
```dart 
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
```