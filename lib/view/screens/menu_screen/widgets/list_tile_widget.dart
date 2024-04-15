import 'package:chat_app/constants/constants.dart';
import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  final IconData icon;
  final String title;

  const ListTileWidget({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: ListTile(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          title: Text(
            title,
            style: textstyle6,
          ),
          leading: Icon(
            icon,
            color: kgreen,
          ),
          trailing: const Icon(
            Icons.arrow_forward,
            color: kgreen,
            size: 30,
          ),
          onTap: () {},
        ),
      ),
    );
  }
}
