import 'package:chat_app/constants/constants.dart';
import 'package:flutter/material.dart';

class IconMessageCardWidget extends StatelessWidget {
  final String message;
  const IconMessageCardWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kwidth10,
          const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/images/download.png'),
          ),
          kwidth10,
          Container(
            height: 150,
            width: 280,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                border: Border.all(color: Colors.grey)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(message),
                  kheight20,
                  const Row(
                    children: [Spacer(), Icon(Icons.copy), Text(' Copy')],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
