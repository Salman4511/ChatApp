import 'package:chat_app/constants/constants.dart';
import 'package:flutter/material.dart';

class RowTextFieldWidget extends StatelessWidget {
  final  String hintText1,hintText2;
  final String helperText1;
  final String helperText2;
  const RowTextFieldWidget({
    super.key,required this.helperText1, required this.helperText2, required this.hintText1, required this.hintText2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                 Row(
                  children: [
                    Text(helperText1,style: textstyle2,),
                  ],
                ),
                TextField(
                    decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: hintText1,
                  hintStyle: textstyle2,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                )),
              ],
            ),
          ),
          kwidth30,
          Expanded(
            child: Column(
              children: [
                 Row(
                  children: [
                    Text(helperText2,style: textstyle2,),
                  ],
                ),
                TextField(
                    decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: hintText2,
                  hintStyle: textstyle2,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
