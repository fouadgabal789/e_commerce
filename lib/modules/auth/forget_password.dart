import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widget/app_elevated_button.dart';
import '../../widget/app_text_field.dart';
class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  late TextEditingController _emailTextEditingController;
  bool _obsucre=true;

  @override
  void initState() {
    super.initState();
    _emailTextEditingController=TextEditingController();
  }
  @override
  void dispose() {
    _emailTextEditingController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              const SizedBox(height: 40,),
              Image.asset('lib/images/LogoIcon.png',width:89 ,height: 101,),
              const SizedBox(height: 30,),
              Text('Forget',style: GoogleFonts.poppins(fontSize: 32,fontWeight: FontWeight.bold,color: const Color(0xFF000000),),),
              Text('Forget your password',style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500,color: const Color(0xFFAAAAAA),),),
              const SizedBox(height: 100,),
                Text('Please enter your email address below you will receive a link to create a new password via email',textAlign: TextAlign.start,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w600,color: const Color(0xFF000000)),),
              const SizedBox(height: 60,),
              AppTextField(hint: 'Email address',controller: _emailTextEditingController,padding: 170,keybord: TextInputType.emailAddress,expands: true,constraints: 55,),
              AppElevatedButton(text: 'Continue',onPress: (){
                Navigator.pushNamed(context, '/reset_password_screen');

              },),



            ],
          ),
        ),
      ),
    );
  }
}
