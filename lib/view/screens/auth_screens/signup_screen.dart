import 'package:chat_app/constants/constants.dart';
import 'package:chat_app/view/screens/auth_screens/widgets/row_textfield_widget.dart';
import 'package:chat_app/view/screens/auth_screens/widgets/signup_textfield_widget.dart';
import 'package:chat_app/view/screens/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      body: SafeArea(
          child: Center(
        child: Stack(children: [
          Column(
            children: [
              kheight20,
              const Image(
                image: AssetImage('assets/images/download.png'),
                fit: BoxFit.cover,
                width: 150,
              ),
              kheight5,
              Text(
                'Account erstellen',
                style: textstyle4,
              ),
              kheight20,
              const RowTextFieldWidget(
                  helperText1: ' Nachname',
                  helperText2: ' Vorname',
                  hintText1: 'Nachname',
                  hintText2: 'Vorname'),
              kheight20,
              const SignUpTextFieldWidget(
                  hintText: 'Email', helperText: 'Email'),
              kheight20,
              const SignUpTextFieldWidget(
                hintText: 'Passwort',
                helperText: 'Passwort',
                suffixIcon: Icons.remove_red_eye,
              ),
              kheight20,
              const SignUpTextFieldWidget(
                hintText: 'Bestätigen',
                helperText: 'Bestätigen',
                suffixIcon: Icons.remove_red_eye,
              ),
              kheight20,
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BottomNavBar(),
                      ));
                },
                style: elevatedbuttonstyle,
                child: Text(
                  'Account erstellen',
                  style: textstyle1,
                ),
              ),
              kheight20,
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Divider(
                      indent: 60,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      '  ',
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      endIndent: 60,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
              top: 20,
              left: 10,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
              ))
        ]),
      )),
    );
  }
}
