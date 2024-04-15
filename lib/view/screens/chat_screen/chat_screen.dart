import 'package:chat_app/constants/constants.dart';
import 'package:chat_app/view/screens/chat_screen/widgets/icon_message_card_widget.dart';
import 'package:chat_app/view/screens/chat_screen/widgets/message_card_widget.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      appBar: AppBar(
        backgroundColor: kbackgroundColor,
        title: Text(
          'ADHDrive',
          style: textstyle6,
        ),
      ),
      body: Column(
        children: [
          const Divider(),
          const MessageCardWidget(
            message:
                'Hey Doctor, am loosing weight very fast, dehydrating profusely as well i have tried some stuffs, nothing  seems to be working',
          ),
          Row(
            children: [
              kwidth120,
              const Text(
                'November 2,2023',
                style: TextStyle(color:kgrey),
              ),
            ],
          ),
          const IconMessageCardWidget(
              message:
                  'So sorry about how you feel and all you have been through, but not to worry am here to help you. When did you see these symptoms'),
          kheight20,
          const MessageCardWidget(
            message:
                'Hey Doctor, am loosing weight very fast, dehydrating profusely as well i have tried some stuffs, nothing  seems to be working',
          ),
          kheight20,
          const IconMessageCardWidget(
              message:
                  'So sorry about how you feel and all you have been through, but not to worry am here to help you. When did you see these symptoms'),
          kheight60,
          Row(
            children: [
              kwidth10,
              const CircleAvatar(
                radius: 25,
                backgroundColor:kwhite,
                child: Icon(
                  Icons.mic,
                  size: 40,
                ),
              ),
              kwidth10,
              SizedBox(
                  width: 300,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        fillColor: kwhite,
                        filled: true,
                        hintText: 'Hier schreiben...',
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.send,
                              color: kgrey,
                            ))),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
