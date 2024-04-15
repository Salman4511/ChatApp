import 'package:chat_app/constants/constants.dart';
import 'package:chat_app/view/screens/menu_screen/widgets/list_tile_widget.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 78, 127, 80),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 78, 127, 80),
      ),
      body: Column(
        children: [
          const Divider(),
          kheight20,
          const ListTileWidget(
            icon: Icons.star,
            title: 'App bewerten',
          ),
          const ListTileWidget(icon: Icons.share, title: 'App teilen'),
          const ListTileWidget(
              icon: Icons.privacy_tip, title: 'Privacy policy'),
          const ListTileWidget(
              icon: Icons.file_open_rounded, title: 'Terms conditions'),
          const ListTileWidget(
              icon: Icons.support_agent_outlined, title: 'Support')
        ],
      ),
    );
  }
}
