import 'package:flutter/material.dart';

// GestureDetector.dart
class MiGestureDetector extends StatefulWidget {   // ← nombre único
  const MiGestureDetector({super.key});

  @override
  State<MiGestureDetector> createState() => _MiGestureDetectorState();
}

class _MiGestureDetectorState extends State<MiGestureDetector> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap se ejecuta cuando el usuario toca el boton
      onTap: () {
        
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(

            // content es el contenido del SnackBar
            content: Text("GestureDetector")
          )
        );
      },

      child: Container(

        // width es el ancho que va a tener el contenedor
        width: 175,

        // height es la altura
        height: 35,

        // alignment centra el contenido interno
        alignment: Alignment.center,

        // margin agrega espacio externo
        margin: EdgeInsets.symmetric(vertical: 8),

        // decoration sirve para decorar el Container
        // como color, bordes y sombras
        decoration: BoxDecoration(

          // color de fondo
          color: Color.fromARGB(255, 16, 108, 184),

          // borderRadius redondea esquinas
          borderRadius: BorderRadius.circular(20),

          // boxShadow agrega sombra
          boxShadow: [

            // BoxShadow define la sombra
            BoxShadow(
              color: const Color.fromARGB(66, 0, 0, 0),
              spreadRadius: 2,
              blurRadius: 4,

              // posición de la sombra
              offset: Offset(0, 2),
            ),
          ],
        ),

         child: Text(  "GestureDetector",
          style: TextStyle( color: Colors.white, fontSize: 18,
          ),
        ),
      ),
    );
  }
}