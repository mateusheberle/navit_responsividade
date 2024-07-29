## ListView

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
        body: ListView(
          children: List.generate(
            50,
            (index) => ListTile(
              title: Text('Item $index'),
            ),
          ),
        ),
      ),
    );
  }
}
```
