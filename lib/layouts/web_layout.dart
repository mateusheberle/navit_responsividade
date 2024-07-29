import 'package:flutter/material.dart';

import '../widgets/header.dart';
import '../widgets/responsive_sidebar.dart';
import '../widgets/sidebar_tile.dart';

class WebLayout extends StatefulWidget {
  const WebLayout({super.key});

  @override
  State<WebLayout> createState() => _WebLayoutState();
}

class _WebLayoutState extends State<WebLayout> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final sideBarWidth = (size.width * 0.2).clamp(150.0, 500.0);
    // clamp(150.0, 500.0); -> valores mínimo e máximo para a largura
    // idependente do tamanho da tela, a largura da sidebar será entre 150 e 500

    final alignment =
        size.width >= 870 ? MainAxisAlignment.start : MainAxisAlignment.center;

    return Scaffold(
      body: Row(
        children: [
          ResponsiveSideBar(
            width: sideBarWidth,
            height: double.infinity,
            child: Column(
              children: [
                Header(
                  width: double.infinity,
                  isVisible: size.width > 869,
                ),
                const SizedBox(height: 30),
                const Divider(),
                const SizedBox(height: 20),
                SideBarTile(
                  icon: Icons.home,
                  title: 'Home',
                  color: Colors.blue,
                  isVisible: size.width > 869,
                  mainAxisAlignment: alignment,
                ),
                SideBarTile(
                  icon: Icons.person,
                  title: 'Perfil',
                  color: Colors.blueGrey,
                  isVisible: size.width > 869,
                  mainAxisAlignment: alignment,
                ),
                SideBarTile(
                  icon: Icons.settings,
                  title: 'Configurações',
                  color: Colors.blueGrey,
                  isVisible: size.width > 869,
                  mainAxisAlignment: alignment,
                ),
                SideBarTile(
                  icon: Icons.exit_to_app,
                  title: 'Sair',
                  color: Colors.blueGrey,
                  isVisible: size.width > 869,
                  mainAxisAlignment: alignment,
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Conteúdo',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: size.width <= 1407 ? 2 : 4,
                        crossAxisSpacing: 8.0,
                        mainAxisSpacing: 8.0,
                      ),
                      itemBuilder: (context, index) => Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(16),
                          image: const DecorationImage(
                            image: NetworkImage(
                              'https://picsum.photos/200/300',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      itemCount: 10,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
