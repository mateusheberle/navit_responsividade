## Expanded - flex

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
          children: [
            Expanded(
              flex: 1, // default
              child: Container(
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.green,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
```