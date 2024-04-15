import 'package:chat_app/constants/constants.dart';
import 'package:chat_app/view/screens/auth_screens/signup_screen.dart';
import 'package:chat_app/view/screens/auth_screens/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    backgroundColor: kbackgroundColor,
    
    body: SafeArea(
      child: Center(
        child: Column(
          children: [
            kheight20,
            const Image(
                image: AssetImage('assets/images/download.png'),
                fit: BoxFit.cover,
                width: 150,
              ),
              kheight5,
              Text('Login bei ADHDrive',style: textstyle4,),
              kheight20,
              const TextFieldWidget(icon:Icons.person, hintText: 'Username', helperText: 'Username',),
              kheight20,
              const TextFieldWidget(icon: Icons.lock, hintText: 'Password', helperText:'Password',suffixIcon: Icons.remove_red_eye,)
              
              ,Row(
                children: [
                  const Spacer(),
                  TextButton(onPressed: (){}, child:const Text('Passwort vergessen',style: TextStyle(color: Colors.green),)),
                  kwidth30
                ],
              ),
              ElevatedButton(onPressed: (){},style: elevatedbuttonstyle, child:Text('Login',style: textstyle1,),),
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
                  'oder',
                 
                ),
              ),
              Expanded(
                child: Divider(
                  endIndent: 60,
                ),
              ),
            ],
          
              ),
              kheight20,
              const Image(
                image: AssetImage('assets/images/download3.png'),
                fit: BoxFit.cover,
                width: 60,
              ),
              Row(
                children: [
                  kwidth40,
                  const Text('Du hast noch keinen Account?'),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>const SignUpScreen() ,));
                  }, child:const Text('Jetzt erstellen',style: TextStyle(color: Colors.green),))
                ],
              ),
          ],
        ),
      ),
    ),

    );
  }
}

