# Guía Práctica: Interatividad en Flutter — GestureDetector vs. ElevatedButton

### 1. ElevatedButton
Es un botón prediseñado que sigue las especificaciones de **Material Design**. 
* **Ventajas:** Ya incluye feedback visual por defecto (efecto de onda o *ripple* al presionar, elevación, sombras) y estados automáticos (como el estado deshabilitado si `onPressed` es `null`).
* **Uso ideal:** Botones estándar de formularios, acciones principales de la app y elementos que requieran consistencia visual con el sistema operativo.

### 2. GestureDetector (Control Absoluto)
No es un botón en sí, sino un widget invisible que detecta interacciones físicas en la pantalla sobre cualquier widget hijo (`child`).
* **Ventajas:** Permite capturar decenas de eventos avanzados (`onDoubleTap`, `onLongPress`, `onPan`, etc.) y no impone ninguna restricción de diseño.
* **Uso ideal:** Convertir imágenes, contenedores, tarjetas (`Card`) o cualquier diseño personalizado en un elemento interactivo.
---
## Ejemplo del uso de ambos

Usaremos una estructura modular.

## elevated_ejemplo.dart
```dart
import 'package:flutter/material.dart';

class elevated_ejemplo extends StatefulWidget {
  const elevated_ejemplo({super.key});

  @override
  State<elevated_ejemplo> createState() => _elevated_ejemploState();
}

class _elevated_ejemploState extends State<elevated_ejemplo> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Botón Presionado'))
      );},
      child: Text("Botón"));
  }
}
```
## gesture_boton.dart
```dart
import 'package:flutter/material.dart';

class ejemplo_gesture extends StatefulWidget {
  const ejemplo_gesture({super.key});

  @override
  State<ejemplo_gesture> createState() => _ejemplo_gestureState();
}

class _ejemplo_gestureState extends State<ejemplo_gesture> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:  (){ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Botón Tocado')),
      );},
      child: Container(
        height: 100,
        width: 200,
        color: Colors.blue,
        child: Center(
          child: Text(
            'Tocar',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
```
### main
```dart
import 'package:flutter/material.dart';
import 'gesture_boton.dart';
import 'elevated_ejemplo.dart';
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
      body: 
      Row(
        children: [
          Expanded(child: ejemplo_gesture(),),
          Expanded(child: elevated_ejemplo(),),
        ],
      )
    );
  }
}
```

---

## ¿Por qué usamos `Expanded` en el Row del main?

En el `main.dart` de este ejemplo, notarás que ambos componentes están envueltos en un widget `Expanded` dentro de un `Row`:

```dart
Row(
  children: [
    Expanded(child: ejemplo_gesture()),
    Expanded(child: elevated_ejemplo()),
  ],
)
```
Explicación técnica: El Row distribuye sus elementos horizontalmente. Si los componentes internos tienen tamaños fijos o variables, corremos el riesgo de sufrir un desbordamiento de pantalla (se llama RenderFlex overflowed y se ve como lineas diagonales amarillas sobre negro).
Al usar Expanded, le indicamos a Flutter que calcule el espacio total disponible del ancho de la pantalla y lo divida en partes iguales (50% y 50% en este caso) entre ambos bloques, garantizando una interfaz responsiva.

## Añadiendo Imágenes a los Botones
Si queremos que nuestros botones contengan imágenes o íconos en lugar de solo texto, la implementación varía según el widget elegido:

**En un ElevatedButton**

La forma más limpia y nativa es utilizar el constructor .icon, el cual acomoda el ícono/imagen y el texto de manera simétrica automáticamente.
```dart
ElevatedButton.icon(
  onPressed: () {},
  icon: Image.asset('assets/mi_icono.png', width: 24, height: 24), // Tu imagen aquí
  label: const Text('Botón con Imagen'),
)
```

**En un GestureDetector**

Como GestureDetector acepta cualquier widget en su propiedad child, podemos estructurar el diseño a total libertad. Para lograr un efecto similar al anterior, envolvemos una fila (Row) dentro de un Container:
```dart
GestureDetector(
  onTap: () {},
  child: Container(
    padding: const EdgeInsets.all(10),
    color: Colors.blue,
    child: Row(
      mainAxisSize: MainAxisSize.min, // Ajusta el contenedor al contenido
      children: [
        Image.asset('assets/mi_icono.png', width: 24, height: 24),
        const SizedBox(width: 10), // Espacio entre imagen y texto
        const Text('Toque con Imagen', style: TextStyle(color: Colors.white)),
      ],
    ),
  ),
)
```

¡Importante antes de compilar! Configuración de Assets
Para que el widget Image.asset pueda renderizar cualquier imagen en Flutter, no basta con arrastrar el archivo a una carpeta del proyecto. Flutter necesita saber explícitamente qué archivos se incluirán en el paquete final de la aplicación.

Sigue estos dos pasos obligatorios:

1. Declarar la ruta en el pubspec.yaml
Abre el archivo pubspec.yaml ubicado en la raíz del proyecto, busca la sección flutter: (aproximadamente en la línea 50-60) y asegúrate de dar de alta la carpeta de tus imágenes respetando estrictamente las sangrías (espacios):

```dart
flutter:
  uses-material-design: true

  # Habilitar la carpeta de recursos visuales
  assets:
    - assets/          # Esto incluye todas las imágenes dentro de la carpeta assets/
    # - assets/mi_icono.png  (O de manera individual si fuera necesario)
```
El archivo pubspec.yaml es extremadamente sensible a los espacios. Si la palabra assets: o el guion - no tienen la sangría correcta (dos espacios por nivel), el proyecto arrojará un error de compilación.

2. Actualizar las dependencias del proyecto
Una vez que guardes los cambios en el archivo de configuración, ejecuta el siguiente comando en la terminal de tu IDE para que Flutter registre las nuevas rutas:
```bash
flutter pub get
```