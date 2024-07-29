import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final double width;
  final bool isVisible;

  const Header({
    super.key,
    required this.width,
    this.isVisible = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: const [0.1, 0.5, 0.7, 0.9],
          colors: [
            Colors.blue[800]!,
            Colors.blue[700]!,
            Colors.blue[600]!,
            Colors.blue[400]!,
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 40,
          ),
          const SizedBox(height: 20),
          Visibility(
            visible: isVisible,
            child: const Text(
              'Nome do Usuário',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis, // ...
              ),
            ),
          ),
          const SizedBox(height: 5),
          Visibility(
            visible: isVisible,
            child: const Text(
              'exemplo@email.com',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                overflow: TextOverflow.ellipsis, // ...
              ),
            ),
          )
        ],
      ),
    );
  }
}
