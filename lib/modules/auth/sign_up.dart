import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../app_elevated_button.dart';
import '../../app_text_field.dart';
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late TextEditingController _emailTextEditingController;
  late TextEditingController _passwordTextEditingController;
  late TextEditingController _phoneTextEditingController;

  bool _obsucre=true;

  @override
  void initState() {
    super.initState();
    _emailTextEditingController=TextEditingController();
    _passwordTextEditingController=TextEditingController();
    _phoneTextEditingController=TextEditingController();
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
              Text('Register',style: GoogleFonts.poppins(fontSize: 32,fontWeight: FontWeight.bold,color: const Color(0xFF000000),),),
              Text('Create new account',style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500,color: const Color(0xFFAAAAAA),),),
              const SizedBox(height: 62,),
              AppTextField(hint: 'Email address',padding: 30,controller: _emailTextEditingController,),
              AppTextField(hint: 'Phone number',padding: 30,controller: _phoneTextEditingController,),
              AppTextField(hint: 'Password',sufix:_obsucre? Icons.visibility: Icons.visibility_off,controller: _passwordTextEditingController,obscure: _obsucre,onPress: (){
                setState(() {
                  _obsucre !=_obsucre;
                });
              },padding: 30,)  ,            
              AppTextField(hint: 'Confirm password',sufix:_obsucre? Icons.visibility: Icons.visibility_off,controller: _passwordTextEditingController,obscure: _obsucre,onPress: (){
                setState(() {
                  _obsucre !=_obsucre;
                });
              },padding: 30,),
               // Row(
               //   mainAxisAlignment: MainAxisAlignment.center,
               //   children: [
               //   Text('By signing below, you agree to the',style: GoogleFonts.poppins(fontSize: 16,color: const Color(0xFF000000),fontWeight: FontWeight.bold),),
               //   TextButton(onPressed: (){}, child: Text('Team of use',style: GoogleFonts.poppins(fontSize: 16,color: const Color(0xFFF13005),fontWeight: FontWeight.bold)))
               // ],),
               // Row(
               //  mainAxisAlignment: MainAxisAlignment.center,
               //  children: [
               //    Text('and',style: GoogleFonts.poppins(fontSize: 16,color: const Color(0xFF000000),fontWeight: FontWeight.bold),),
               //    TextButton(onPressed: (){}, child: Text('privacy notice',style: GoogleFonts.poppins(fontSize: 16,color: const Color(0xFFF13005),fontWeight: FontWeight.bold)))
               //  ],),

              //
              //  SizedBox(height: 20,),
              // AppElevatedButton(text: 'Login',onPress: (){},),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Text('Don’t have an account?',style:GoogleFonts.poppins(fontSize:18,fontWeight:
              //     FontWeight.w500,color: const Color(0xFFAAAAAA)) ,),
              //     TextButton(onPressed: (){}, child: Text('Sign Up',style:GoogleFonts.poppins(fontSize:18,fontWeight:
              //     FontWeight.w500,color: const Color(0xFFF13005))))
              //   ],
              // ),
              // const SizedBox(height: 44,)
              AppElevatedButton(text: 'Sign up',onPress: (){},),
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?',style:GoogleFonts.poppins(fontSize:18,fontWeight:
                  FontWeight.w500,color: const Color(0xFFAAAAAA)) ,),
                  TextButton(onPressed: (){
                    Navigator.pushReplacementNamed(context,'/login_screen');
                  }, child: Text('Login',style:GoogleFonts.poppins(fontSize:18,fontWeight:
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
