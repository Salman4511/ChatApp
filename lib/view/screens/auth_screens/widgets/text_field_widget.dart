import 'package:chat_app/constants/constants.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final String helperText;
  final IconData? suffixIcon;
  const TextFieldWidget({
    super.key, required this.icon, required this.hintText, required this.helperText,this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            kwidth30,
             Icon(icon),
            Text(
              helperText,
              style: textstyle2,
            ),
          ],
        ),
        kheight5,
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: TextField(
            
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              hintText: hintText,
              hintStyle: textstyle2,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  suffixIcon:Icon(suffixIcon)
            ),
            
          ),
        )
      ],
    );
  }
}
