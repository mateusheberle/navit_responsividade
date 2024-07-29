## OrientationBuilder

    Orientation.portrait - Retrato
    Orientation.landscape - Paisagem

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
    final fontSize = size.width < 600 ? 16.0 : 24.0;  // variavel 'fontSize' que muda de acordo com o tamanho da tela
    debugPrint('Largura -> ${size.width}');
    debugPrint('Altura -> ${size.height}');

    return MaterialApp(
      home: Scaffold(
        body: OrientationBuilder(
          builder: (context, orientation) {
            return Center(
              child: Text(
                orientation == Orientation.portrait ? 'Retrato' : 'Paisagem',
                style: TextStyle(
                  fontSize: fontSize,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
```