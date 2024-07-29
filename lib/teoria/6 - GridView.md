## GridView

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
    debugPrint('Largura -> ${size.width}');
    debugPrint('Altura -> ${size.height}');

    return MaterialApp(
      home: Scaffold(
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: size.width > 600 ? 4 : 2,
            // crossAxisCount: 2, // quantidade de itens no eixo horizontal
            crossAxisSpacing: 10, // espaço entre os itens no eixo horizontal
            mainAxisSpacing: 10, // espaço entre os itens no eixo vertical
          ),
          itemBuilder: (context, index) {
            return Container(
              color: Colors.blue,
              margin: const EdgeInsets.all(10),
              alignment:
                  Alignment.center, // filho do container alinhado ao centro
              child: Text(
                'Item $index',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            );
          },
          itemCount: 10, // quantidade de itens
        ),
      ),
    );
  }
}
```