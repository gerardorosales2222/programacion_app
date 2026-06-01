# gestor_basico
 A new Flutter project.<br>
**import 'package:flutter/material.dart';**<br>
**import 'package:gestor_basico/ElevatedButton.dart';**<br>
**import 'package:gestor_basico/GestureDetector.dart';**

## void main() {
  runApp(const MainApp());
}

**class MainApp extends StatelessWidget {**
  const MainApp({super.key});

  **@override**
 ## Widget build(BuildContext context) {
    return const MaterialApp(
      title: "ejemplo",
        home: Index(),
   );
  }
}
## class Index extends StatelessWidget {
  const Index({super.key});<br>
   **@override**
  ## Widget build(BuildContext context) {
    return Scaffold(
    **appBar**:AppBar(
      backgrou
      **Color**: Colors.grey,
      **title**: const Text("GestureDetector vs. ElevatedButton"), 
     );
      **body**: const Padding( 
        **padding**: EdgeInsets.all(16.0)),
          **child**: Row(
            **mainAxisAlignment**: MainAxisAlignment.center,
            **children**: [
              Expanded(child: GestureDetector()),
              SizedBox(height: 20),
              Expanded(child: ElevatedButton()),
            ],
          )
        );
  }
}
# GestorDetector
**import 'package:flutter/material.dart';**
**import 'package:flutter/rendering.dart';**<br>
## class ejemplo_gesture extends StatefulWidget {
  const ejemplo_gesture({super.key});

  **@override**<br>
  State<ejemplo_gesture> createState() => _ejemplo_gestureState();
}

## class _ejemplo_gestureState extends State<ejemplo_gesture> {
  **@override**<br>
  Widget build(BuildContext context) {<br>
    return GestureDetector(<br>
      **onTap**: () {<br>
        ScaffoldMessenger.of(context).showSnackBar(<br>
          const SnackBar(content: Text('Container tocado')),<br>
        );<br>
      },<br>
      **child**: Container(<br>
      **width**: 150,<br>
      **height**: 50,<br>
      **color**: Color.fromARGB(0, 214, 66, 66),<br>
      **child**: Row(<br>
          **mainAxisSize**: MainAxisSize.min,<br>
         **children**: [<br>
            Image.asset('asset/mi_icono.pnd', width: 24,<br> **height**: 24),<br>
            **const** SizedBox(width: 10),<br>
            **const** Text('toque con imagen', style: **TextStyle<(color: Colors.white)),)**
          ],<br>
        ),<br>
      ),<br>
    );<br>
  }<br>
} <br>

# ElevatedButton
**import 'package:flutter/material.dart';**

## class elevated_ejemplo extends StatefulWidget {
  const elevated_ejemplo({super.key});

  **@override>**<br>
  State<elevated_ejemplo> createState() => _elevated_ejemploState();
}

## class _elevated_ejemploState extends State<elevated_ejemplo> {<br>
  **@override**<br>
  **Widget build(BuildContext context)** {
    return ElevatedButton(<br>
      **onPressed**: (){ScaffoldMessenger.of(context).showSnackBar(<br>
        const SnackBar(content: Text('Botón Presionado'))<br>
      );},<br>
      **child**: Text("Botón"));
  }
}

