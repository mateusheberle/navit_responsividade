# SingleChildScrollView

SingleChildScrollView e ListView são widgets que permitem a rolagem de conteúdo evitando erros de overflow.

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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 1000,
                color: Colors.green,
              )
            ],
          ),
        ),
      ),
    );
  }
}
```