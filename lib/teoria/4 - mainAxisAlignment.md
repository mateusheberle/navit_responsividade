## mainAxisAlignment

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
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 200,
              height: 50,
              color: Colors.red,
            ),
            Container(
              width: 200,
              height: 50,
              color: Colors.green,
            ),
            Container(
              width: 200,
              height: 50,
              color: Colors.blue,
            ),
          ],
        )),
      ),
    );
  }
}

```