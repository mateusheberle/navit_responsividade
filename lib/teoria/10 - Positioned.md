## Positioned

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final fontSize = size.width < 600 ? 16.0 : 24.0;
    debugPrint('Largura -> ${size.width}');
    debugPrint('Altura -> ${size.height}');

    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 20,
              left: 20,
              child: Text(
                'Texto Posicionado no topo a esquerda',
                style: TextStyle(
                  fontSize: fontSize,
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: Text(
                'Texto Posicionado no interior a direita',
                style: TextStyle(
                  fontSize: fontSize,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```