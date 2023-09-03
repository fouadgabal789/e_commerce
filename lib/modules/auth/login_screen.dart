import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../app_elevated_button.dart';
import '../../app_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    super.key});


  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailTextEditingController;
  late TextEditingController _passwordTextEditingController;
  bool _obsucre=true;
@override
  void initState() {
    super.initState();
    _emailTextEditingController=TextEditingController();
    _passwordTextEditingController=TextEditingController();
  }
  @override
  void dispose() {
  _emailTextEditingController.dispose();
  _passwordTextEditingController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Image.asset('lib/images/LogoIcon.png',width:89 ,height: 101,),
              const SizedBox(height: 30,),
              Text('Welcome Back',style: GoogleFonts.poppins(fontSize: 32,fontWeight: FontWeight.bold,color: const Color(0xFF000000),),),
              Text('Login to your account',style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500,color: const Color(0xFFAAAAAA),),),
              const SizedBox(height: 50,),
               AppTextField(hint: 'Email address',padding: 33,controller: _emailTextEditingController,),
               AppTextField(hint: 'Password',sufix:_obsucre? Icons.visibility: Icons.visibility_off,controller: _passwordTextEditingController,obscure: _obsucre,onPress: (){
                 setState(() {
                   _obsucre !=_obsucre;
                 });
               },padding: 3,),
              Align( alignment: AlignmentDirectional.centerEnd,
                  child: TextButton(onPressed: (){
                    Navigator.pushNamed(context, '/forget_password_screen');
                  }, child:  Text('Forget Password ?' ,style: GoogleFonts.poppins(fontSize: 16 ,fontWeight: FontWeight.bold,color: const Color(0xFFF13005)),))),
              const SizedBox(height: 20,),
               AppElevatedButton(text: 'Login',onPress: (){},),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don’t have an account?',style:GoogleFonts.poppins(fontSize:18,fontWeight:
                  FontWeight.w500,color: const Color(0xFFAAAAAA)) ,),
                  TextButton(onPressed: (){
                    Navigator.pushNamed(context,'/sign_up_screen');
                  }, child: Text('Sign Up',style:GoogleFonts.poppins(fontSize:18,fontWeight:
                  FontWeight.w500,color: const Color(0xFFF13005))))
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}


