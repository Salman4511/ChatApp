import 'package:chat_app/constants/constants.dart';
import 'package:flutter/material.dart';

class CircleAvatarWidget extends StatelessWidget {
  final String title;
  final String text;
  const CircleAvatarWidget({
    super.key,
    required this.title,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 110,
      backgroundColor: const Color.fromARGB(255, 174, 225, 176),
      child: Column(
        children: [
          kheight60,
          Text(
            title,
            style: textstyle3,
          ),
          Text(
            text,
            style: textstyle5,
          )
        ],
      ),
    );
  }
}
