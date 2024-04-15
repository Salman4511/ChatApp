import 'package:chat_app/constants/constants.dart';
import 'package:flutter/material.dart';

class MessageCardWidget extends StatelessWidget {
  final String message;
  const MessageCardWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 50),
      child: Container(
        height: 100,
        width: 280,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: kwhite,
            border: Border.all(color: kgrey)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(message),
        ),
      ),
    );
  }
}
