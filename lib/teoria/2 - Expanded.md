## Expanded

Faz o filho ocupar o tamanho máximo disponível pelo pai

    Column(
        children: [
            Expanded(
                child: Container(color: Colors.red),
            ),
        ],
    )

não precisa definir largura e altura específica pro seu widget

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
              child: Container(
                height: 300, // valor vai ser ignorado
                color: Colors.red,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
```

o valor de 300 vai ser ignorado, já que o widget Container() vai ocupar o espaço máximo do Column()