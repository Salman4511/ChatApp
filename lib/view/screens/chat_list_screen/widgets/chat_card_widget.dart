import 'package:chat_app/constants/constants.dart';
import 'package:chat_app/view/screens/chat_screen/chat_screen.dart';
import 'package:flutter/material.dart';

class ChatCardWidget extends StatelessWidget {
  final String title;
  final String number;
  final String image;
  final bool isDelete;
  const ChatCardWidget({
    super.key,
    required this.title,
    required this.number,
    required this.image,
    required this.isDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.white,
        child: ListTile(
          tileColor: Colors.white,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          title: Text(
            title,
            style: textstyle5,
          ),
          subtitle: Row(
            children: [
              SizedBox(
                height: 20,
                child: Row(
                  children: [
                    const Icon(Icons.chat),
                    Text(number),
                  ],
                ),
              ),
              kwidth10,
              isDelete == true
                  ? const SizedBox(
                      width: 120,
                      height: 20,
                      child: Row(
                        children: [Icon(Icons.delete), Text('Löschen')],
                      ))
                  : const SizedBox(),
            ],
          ),
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(image),
          ),
          trailing: const Icon(
            Icons.more_horiz_rounded,
            color: Colors.green,
            size: 30,
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ChatScreen(),
                ));
          },
        ),
      ),
    );
  }
}
