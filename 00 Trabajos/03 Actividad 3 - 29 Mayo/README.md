# main
**import 'package:flutter/material.dart';**<br>
**import 'elevared_boton.dart';**

void main() {<br>
  runApp(const MainApp());<br>
}

class MainApp extends StatelessWidget {<br>
  const MainApp({super.key});

 @override<br>
  Widget build(BuildContext context) {<br>
    return const MaterialApp(<br>
      home: Index(),<br>
   );
  }
}
class Index extends StatelessWidget {<br>
  const Index({super.key});<br>

  @override<br>
  Widget build(BuildContext context) {<br>
    return Scaffold(<br>
    body:<br>
    Row(
      children: [<br>
              Expanded(child: GestureDetector()),<br>
              SizedBox(height: 20),<br>
              Expanded(child: elevated_ejemplo()),<br>
            ],
        )     
    );
  }
}
# gesture_boton
**import 'package:flutter/material.dart';**<br>
**import 'package:flutter/rendering.dart';**<br>
class gesture_boton extends StatefulWidget {
  const gesture_boton({super.key});

  @override<br>
  State<gesture_boton> createState() => _gesture_botonState();
}

class _gesture_botonState extends State<gesture_boton> <br{
  @override<br>
  Widget build(BuildContext context) {<br>
    return GestureDetector(<br>
      onTap: () {<br>
        ScaffoldMessenger.of(context).showSnackBar(<br>
          const SnackBar(content: Text('Container tocado')),<br>
        );<br>
      },<br>
      child: Container(<br>
        width: 150,<br>
        height: 50,<br>
        color: Color.fromARGB(0, 214, 66, 66),<br>
        child: Center(<br>
          child: Text(<br>
            "toca aqui",<br>
            style: TextStyle(color: Color.fromARGB(0, 223, 10, 10),fontSize: 18),<br>
        ),
      ),
      ),
    );
  }
}  
# elevated_ejemplo
**import 'package:flutter/material.dart';**

class elevated_ejemplo extends StatefulWidget {
  const elevated_ejemplo({super.key});

  @override
  State<elevated_ejemplo> createState() => _elevated_ejemploState();
}

class _elevated_ejemploState extends State<elevated_ejemplo> {<br>
  @override<br>
  Widget build(BuildContext context) {<br>
    return ElevatedButton(<br>
      onPressed: (){ScaffoldMessenger.of(context).<br>showSnackBar(<br>
        const SnackBar(content: Text('Botón Presionado'))<br>
      );},<br>
      child: Text("Botón"));<br>
  }
}
