import 'package:chat_app/constants/constants.dart';
import 'package:chat_app/view/screens/auth_screens/landing_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: kbackgroundColor,
      body: Center(
        child: Column(
          children: [
            kheight300,
            const Image(image: AssetImage('assets/images/download.png'),fit: BoxFit.cover,width: 150,),
             Text('Willkommen bei ADHDrive',style:
            textstyle3 ,),
             Text(
              'Die App, bei der es um dich geht...',
              style: textstyle2,
            ),
            kheight200,
            ElevatedButton(onPressed: (){
              Navigator.push(context,CupertinoPageRoute(builder: (context) => const LandingScreen(),));
            },style: elevatedbuttonstyle, 
                                    child: Text('Los geht´s',style: 
                                    textstyle1,),)
          ],
        ),
      ),
    );
  }
}