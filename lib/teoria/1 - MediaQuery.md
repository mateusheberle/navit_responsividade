## MediaQuery

se eu vejo isso:

    child: Container(
        width: 100,
        height: size.height,
        color: Colors.red,
    ),

    Largura -> 692
    Altura -> 515

e eu vejo que ficou bom nessa proporção
eu altero o width para acompanhar o height

    x = quanto ta agora de width / largura total
    x = 100 / 692
    x = 0,1445086705202312138728323699422
    x ~ 0,14

    child: Container(
        width: size.width * 0.14,
        height: size.height,
        color: Colors.red,
    ),


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
          child: Container(
            width: size.width * 0.14,
            height: size.height,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
```
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
          child: size.width > 500
              ? Container(
                  width: 500,
                  height: size.height,
                  color: Colors.red,
                )
              : Container(
                  width: 250,
                  height: size.height,
                  color: Colors.red,
                ),
        ),
      ),
    );
  }
}
```
