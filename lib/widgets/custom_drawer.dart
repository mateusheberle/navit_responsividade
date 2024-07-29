import 'package:flutter/material.dart';

import 'header.dart';
import 'sidebar_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        children: [
          Header(
            width: double.infinity,
          ),
          SizedBox(height: 30),
          Divider(),
          SizedBox(height: 20),
          SideBarTile(
            icon: Icons.home,
            title: 'Home',
            color: Colors.blue,
          ),
          SideBarTile(
            icon: Icons.person,
            title: 'Perfil',
            color: Colors.blueGrey,
          ),
          SideBarTile(
            icon: Icons.settings,
            title: 'Configurações',
            color: Colors.blueGrey,
          ),
          SideBarTile(
            icon: Icons.exit_to_app,
            title: 'Sair',
            color: Colors.blueGrey,
          ),
        ],
      ),
    );
  }
}
