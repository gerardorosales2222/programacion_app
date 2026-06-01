// Importa el paquete principal de Flutter para usar widgets visuales
import 'package:flutter/material.dart';

// Importa el widget ElevatedButton desde su archivo separado
import 'package:trabajo_practico/Elevatedbutton.dart';

// Importa el widget MiGestureDetector desde su archivo separado
import 'package:trabajo_practico/GestureDetector.dart';

// Función principal que inicia la aplicación Flutter
void main() {
  // runApp lanza la app y coloca MainApp como widget raíz
  runApp(const MainApp());
}

// MainApp es el widget raíz de la aplicación, no maneja estado
class MainApp extends StatelessWidget {
  // Constructor constante para optimización en tiempo de compilación
  const MainApp({super.key});

  // build describe la interfaz visual de este widget
  @override
  Widget build(BuildContext context) {
    // MaterialApp provee la estructura base con tema y navegación de Material Design
    return const MaterialApp(
      // home define la pantalla inicial de la aplicación
      home: Index(),
    );
  }
}

// Index es la pantalla principal de la app, no necesita manejar estado
class Index extends StatelessWidget {
  // Constructor constante para optimización en tiempo de compilación
  const Index({super.key});

  // build construye la interfaz visual cada vez que el widget se dibuja
  @override
  Widget build(BuildContext context) {
    // Scaffold provee la estructura visual básica: fondo, appbar, body, etc.
    return Scaffold(
      // body es el contenido principal de la pantalla
      body: Center(
        // Center centra su hijo horizontal y verticalmente en la pantalla
        child: Column(
          // mainAxisAlignment centra los hijos verticalmente en la columna
          mainAxisAlignment: MainAxisAlignment.center,
          // children es la lista de widgets que se muestran en la columna
          children: [
            // Muestra el widget del botón elevado
            Elevatedbutton(),
            // Muestra el widget del gesto detector personalizado
            MiGestureDetector(),
          ],
        ),
      ),
    );
  }
}