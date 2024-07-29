## device_preview

pub.dev
    device_preview

simular telas diferentes no emulador


main_responsive.dart

```dart
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'main.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => const MainApp(),
  ));
}
```