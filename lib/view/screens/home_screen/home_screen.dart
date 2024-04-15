import 'package:chat_app/constants/constants.dart';
import 'package:chat_app/view/screens/home_screen/widgets/circle_avatar_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      appBar: AppBar(
        backgroundColor: kbackgroundColor,
        title: Text(
          'ADHDrive',
          style: textstyle3,
        ),
        leading: const Padding(
          padding: EdgeInsets.only(left: 25),
          child: Image(
            image: AssetImage('assets/images/download.png'),
            fit: BoxFit.cover,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                color: kgreen,
                size: 35,
              )),
        ],
      ),
      body: Stack(children: [
        Column(
          children: [
            const Divider(),
            kheight60,
            Text(
              'Stelle deine Frage!',
              style: textstyle4,
            ),
            kheight20,
            Row(
              children: [
                const Spacer(),
                const CircleAvatarWidget(
                  title: 'Hallo',
                  text: 'Hier zum Chat',
                ),
                kwidth30
              ],
            ),
          ],
        ),
        Positioned(
            top: 350,
            child: Row(
              children: [
                kwidth30,
                const CircleAvatarWidget(
                    title: 'Deine', text: 'Vergangenen Fragen')
              ],
            ))
      ]),
    );
  }
}
