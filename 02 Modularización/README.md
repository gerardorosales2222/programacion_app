# Guía de Flutter: Modularización y Separación de Responsabilidades

Este documento sirve como material de apoyo para la cátedra. Trata sobre *Modularización en Flutter*. El objetivo será separar la lógica de diseño, los estilos y los componentes en diferentes archivos para crear aplicaciones escalables, legibles y fáciles de mantener.

## Conceptos Fundamentales

1. *Encapsulamiento de UI:* Extraer estructuras de widgets (como Rows, Columns y Containers) a clases independientes (StatelessWidgets personalizados).
2. *Centralización de Estilos:* Crear una clase de utilidad para manejar colores, tamaños de fuente y temas de forma global.
3. *Invocación de Miembros:* Cómo el archivo main.dart actúa como orquestador, llamando a métodos y constructores de otras clases.

---

## Ejemplo Práctico: Sistema Académico

### 1. Definición de Colores Propios (app_colores.dart)
En este archivo centralizamos la identidad visual de colores. Usamos static const para acceder a los valores mediante el nombre de la clase, sin necesidad de crear una instancia (objeto).

```dart
import 'package:flutter/material.dart';

class Mis_Colores{

  static const Color primario = Color(0xFF8319A7);
  static const Color secundario = Color(0xFF00E5FF);
  
  // Colores de soporte
  static const Color fondo = Color(0xFFF5F5F7);
  static const Color superficie = Color(0xFFFFFFFF);
  
  // Colores de texto
  static const Color textoPrincipal = Color(0xFF1D1D1F);
  static const Color textoSecundario = Color(0xFF757575);

  // Ejemplo de uso en un gradiente para banners
  static const Gradient gradientePrimario = LinearGradient(
    colors: [primario, Color(0xFFA14FCF)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
```
### 2. Definición de figuras (app_figuras.dart)
En este archivo centralizamos la identidad visual de formas de nuestra App. Usamos static const para acceder a los valores mediante el nombre de la clase, sin necesidad de crear una instancia (objeto).

```dart
import 'package:flutter/material.dart';

class Figuras {
  static Widget rectangulo(double ancho, double alto, Color color) {
    return Container(
      width: ancho,
      height: alto,
      margin: const EdgeInsets.symmetric(
        horizontal: 12.0, 
        vertical: 8.0
      ),
      decoration: BoxDecoration(
        color: color, // El color va dentro de la decoración
        borderRadius: BorderRadius.circular(8), // Opcional: para redondear bordes
      ),
    );
  }
}
```
### 3. Main( )
En este archivo centralizamos la ejecución de la App. Su responsabilidad no es definir colores ni diseñar formas, sino importar las herramientas que creamos en los otros archivos y organizarlas dentro de la estructura de la aplicación.

#### Aspectos clave:
+ Imports: Permiten "traer" las clases de otros archivos para que estén disponibles.

+ Invocación Estática: Accedemos a los miembros de Mis_Colores y Figuras usando el nombre de la clase seguido de un punto (ej. Mis_Colores.primario), lo cual es eficiente ya que no requiere crear objetos en memoria.

+ Legibilidad: El cuerpo del Scaffold queda limpio y es fácil entender qué estamos mostrando sin perdernos en detalles de implementación.

```dart
import 'package:flutter/material.dart';
import 'app_colores.dart';
import 'app_figuras.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Index(),
    );
  }
}

class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: MisColores.primario),
      body: Center(
        child: Figuras.rectangulo(100,120, MisColores.secundario),
      ),
    );
  }
}
```