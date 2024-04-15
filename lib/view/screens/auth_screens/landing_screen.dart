import 'package:chat_app/constants/constants.dart';
import 'package:chat_app/view/screens/auth_screens/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor:kbackgroundColor,

      body: SafeArea(child: Center(
        child: Column(
          children: [
            kheight20,
             Row(
              children: [
                const Spacer(),
                const Text('Skip',style: TextStyle(fontWeight: FontWeight.bold,fontSize:  18),),
                kwidth30
              ],
            ),
            kheight60,
            Text('Dein ADHS-Archiv',style: textstyle4,),
            kheight5,
            const Image(image: AssetImage('assets/images/download2.png'),fit: BoxFit.cover,width: 400,)
            ,kheight60,
            SizedBox(height: 120,width: 280,
            child: Align(
              alignment:  Alignment.center,
              child: Text(
                'Willkommen zur umfassenden ADHD-Datenbank! Beantworte jede deiner Fragen in wenigen Sekunden!',style: textstyle2,),
            ),),
            kheight20,
            ElevatedButton(onPressed: (){
              Navigator.push(context, CupertinoPageRoute(builder: (context) => LoginScreen(),));
            },style: elevatedbuttonstyle, child:Text('Weiter',style: textstyle1,),)
          ],
        ),
      )),
    );
  }
}