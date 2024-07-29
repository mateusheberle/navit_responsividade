import 'package:flutter/material.dart';

class SideBarTile extends StatelessWidget {
  final IconData? icon;
  final String title;
  final Color? color;
  final bool isVisible;
  final MainAxisAlignment mainAxisAlignment;

  const SideBarTile({
    super.key,
    this.color,
    this.icon,
    required this.title,
    this.isVisible = true,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            icon,
            size: 40,
            color: color,
          ),
        ),
        Visibility(
          visible: isVisible,
          child: Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 25,
                color: color,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
