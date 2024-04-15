import 'package:chat_app/constants/constants.dart';
import 'package:flutter/material.dart';

class SignUpTextFieldWidget extends StatelessWidget {
  final String hintText;
  final String helperText;
  final IconData? suffixIcon;
  const SignUpTextFieldWidget({
    super.key,
    required this.hintText,
    required this.helperText,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Column(
                children: [
                   Row(
                    children: [
                      Text(helperText,style: textstyle2,),
                    ],
                  ),
                  TextField(
                      decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: hintText,
                    hintStyle: textstyle2,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                        suffixIcon: Icon(suffixIcon,color: Colors.grey,)
                  ),
                
                  )
                  ]
                  ),
    );
  }
}
