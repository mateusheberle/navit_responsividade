import 'package:flutter/material.dart';

class ResponsiveSideBar extends StatelessWidget {
  final double width;
  final double height;
  final Widget child;

  const ResponsiveSideBar(
      {super.key,
      required this.width,
      required this.height,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              )
            ]),
        child: child,
      ),
    );
  }
}
