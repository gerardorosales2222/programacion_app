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