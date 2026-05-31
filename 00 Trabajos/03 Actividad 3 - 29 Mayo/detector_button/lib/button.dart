import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}
//1- Permite actualizar el estado asociado al statefullwidget.
//2- createState() es un metodo de todos los StatefulWidgets.
//3- Este metodo retorna un State asociado.
//4- Hay polimorfismo (Subtipo) ya que createState() es un metodo de todos los StatefulWidget, y aqui se sobre escribe
//5- El metodo esta escrito de forma Arrow Funtion. Su retorno seria _ButtonState().

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text("Boton tocado")));
      },
      child: const Text("Presionar"),
    );
  }
}
