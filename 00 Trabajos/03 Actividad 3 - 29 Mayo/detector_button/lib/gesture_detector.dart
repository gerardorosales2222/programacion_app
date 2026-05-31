import 'package:flutter/material.dart';

class name extends StatefulWidget {
  const name({super.key});

  @override
  State<name> createState() => _nameState();
}

class _nameState extends State<name> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.amber,
            content: Text(
              "Container tocado!",
              style: TextStyle(color: Colors.black),
            ),
          ),
        );
      },
      child: Container(
        width: 150,
        height: 50,
        color: const Color(0xFFF57F17),
        alignment: Alignment.center,
        child: Text(
          "Toca aqui!",
          style: TextStyle(color: Color(0xFF004D40), fontSize: 18),
        ),
      ),
    );
  }
}
