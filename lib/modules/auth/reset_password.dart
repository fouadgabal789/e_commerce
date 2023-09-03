import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../app_elevated_button.dart';
import '../../app_text_field.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  late TextEditingController _passwordTextEditingController;
  bool _obsucre=true;

  @override
  void initState() {
    super.initState();
    _passwordTextEditingController=TextEditingController();
  }
  @override
  void dispose() {
    _passwordTextEditingController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Image.asset('lib/images/LogoIcon.png',width:89 ,height: 101,),
              const SizedBox(height: 30,),
              Text('Forget',style: GoogleFonts.poppins(fontSize: 32,fontWeight: FontWeight.bold,color: const Color(0xFF000000),),),
              Text('Forget your password',style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500,color: const Color(0xFFAAAAAA),),),
              const SizedBox(height: 92,),
              Text('Enter Your New Password',textAlign: TextAlign.start,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w800,color: const Color(0xFF000000)),),
              const SizedBox(height: 30,),
              AppTextField(hint: 'New password',controller: _passwordTextEditingController,padding: 30,),
              AppTextField(hint: 'Confirm password',controller: _passwordTextEditingController,padding: 202,),
              AppElevatedButton(text: 'Change Password',onPress: (){},),
              const SizedBox(height: 98,),



            ],
          ),
        ),
      ),
    );
  }
}
