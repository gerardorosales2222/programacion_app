import 'package:flutter/material.dart';// Importa el paquete principal de Flutter para usar widgets visuales

// Clase que representa el widget del botón elevado, maneja estado interno
// StatefulWidget se usa cuando el widget puede cambiar su estado

class Elevatedbutton extends StatefulWidget {
  // Constructor constante para optimización en tiempo de compilación
  const Elevatedbutton({super.key});

 @override
  // @override significa que estamos sobrescribiendo
  // un método que ya existe en StatefulWidget

  // createState() es un método de todos los StatefulWidget
  // Este método devuelve el estado asociado al widget

  // Hay polimorfismo porque el método existe en la clase padre
  // pero aquí lo personalizamos

  // => es una Arrow Function (forma corta de función)
  State<Elevatedbutton> createState() => _ElevatedbuttonState();
}

class _ElevatedbuttonState extends State<Elevatedbutton> {
  @override
  // build describe la interfaz visual del widget y se ejecuta cada vez que se dibuja
  Widget build(BuildContext context) {
    // ElevatedButton es un botón con sombra y estilo Material Design
    return ElevatedButton(
      // onPressed detecta cuando el usuario toca el botón
      // (){} es una función anónima
      // no tiene nombre pero ejecuta instrucciones
      onPressed: () {
        // ScaffoldMessenger muestra mensajes temporales en la pantalla
        ScaffoldMessenger.of(context).showSnackBar(
          // SnackBar muestra una barra inferior con texto
          const SnackBar(
            // content es el contenido del SnackBar
            content: Text('ElevatedBooton')
        )
      );
    },
    // child es el contenido interno del botón
      child: Text(
        // Texto visible del botón
        "Elevated Button",
        // style modifica el diseño del texto
        style: TextStyle(
          // color define el color del texto en formato ARGB
          color: Color.fromARGB(255, 244, 8, 8),
          // fontSize define el tamaño del texto en puntos lógicos
          fontSize: 18, 
          // fontWeight pone el texto en negrita
          fontWeight: FontWeight.bold, 
        ),
      ),
    );
  }
}