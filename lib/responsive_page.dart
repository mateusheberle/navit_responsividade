import 'package:flutter/material.dart';

import 'layouts/mobile_layout.dart';
import 'layouts/web_layout.dart';

class ResponsivePage extends StatefulWidget {
  const ResponsivePage({super.key, required this.title});

  final String title;

  @override
  State<ResponsivePage> createState() => _ResponsivePageState();
}

class _ResponsivePageState extends State<ResponsivePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return size.width <= 664 ? const MobileLayout() : const WebLayout();
  }
}
