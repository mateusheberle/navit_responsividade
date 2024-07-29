## Align

    Alignment(-1, -1), -> topLeft
    Alignment(0, 0),   -> center
    Alignment(1, 1),   -> bottomRight

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

    return const MaterialApp(
      home: Scaffold(
        body: Align(
          alignment: Alignment(-1, -1),
          child: Text(
            'Texto Qualquer',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
```