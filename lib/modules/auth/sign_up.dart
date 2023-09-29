import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widget/app_elevated_button.dart';
import '../../widget/app_text_field.dart';
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
      resizeToAvoidBottomInset: false,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              const SizedBox(height: 40,),
              Image.asset('lib/images/LogoIcon.png',width:89 ,height: 101,),
              const SizedBox(height: 30,),
              Text('Register',style: GoogleFonts.poppins(fontSize: 32,fontWeight: FontWeight.bold,color: const Color(0xFF000000),),),
              Text('Create new account',style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500,color: const Color(0xFFAAAAAA),),),
              const SizedBox(height: 50,),
              AppTextField(hint: 'Email address',padding: 30,controller: _emailTextEditingController,keybord: TextInputType.emailAddress,expands: true,constraints: 55,),
              AppTextField(hint: 'Phone number',padding: 30,controller: _phoneTextEditingController,keybord: TextInputType.phone,expands: true,constraints: 55,),
              AppTextField(hint: 'Password',sufix:IconButton(onPressed:(){  setState(() {
                _obsucre !=_obsucre;
              });}, icon:Icon(_obsucre? Icons.visibility: Icons.visibility_off)),controller: _passwordTextEditingController,obscure: _obsucre,onPress: (){
                setState(() {
                  _obsucre !=_obsucre;
                });
              },padding: 30,keybord: TextInputType.visiblePassword,maxline: 1,minline: 1,constraints: 55,)  ,
              AppTextField(hint: 'Confirm password',sufix:IconButton(onPressed:(){  setState(() {_obsucre !=_obsucre;});}, icon:Icon(_obsucre? Icons.visibility: Icons.visibility_off)),controller: _passwordTextEditingController,obscure: _obsucre,
              padding: 30,keybord: TextInputType.visiblePassword,maxline: 1,minline: 1,constraints: 55,),
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
