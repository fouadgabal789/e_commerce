import 'package:e_commerce/widget/app_text_field.dart';
import 'package:e_commerce/widget/app_text_field_verification.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}
late TextEditingController _num1TextEditingController;
late TextEditingController _num2TextEditingController;
late TextEditingController _num3TextEditingController;
late TextEditingController _num4TextEditingController;
class _VerificationScreenState extends State<VerificationScreen> {
  @override
  void initState() {
    super.initState();
    _num1TextEditingController=TextEditingController();
    _num2TextEditingController=TextEditingController();
    _num3TextEditingController=TextEditingController();
    _num4TextEditingController=TextEditingController();
  }
  @override
  void dispose() {
    _num1TextEditingController.dispose();
    _num2TextEditingController.dispose();
    _num3TextEditingController.dispose();
    _num4TextEditingController.dispose();

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:  Text('Verification Code',style: GoogleFonts.poppins(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black),),
        centerTitle: true,
        leading: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios_new_outlined),color: Colors.black,),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border_outlined),color: Colors.black,)
        ],
      ),

      body:Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
          const Icon(Icons.domain_verification,color: Color(0xFFF13005),size: 90,),
            const SizedBox(height: 30,),
            Text('OTP Verification',style:GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black),),
            const SizedBox(height: 60,),
            Text('We have sent OTP on your number',style:GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black),),
            const SizedBox(height: 40,),
             Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8), // Adjust the horizontal padding as needed.
                      child: AppTextFieldVerification(controller: _num1TextEditingController,),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8), // Adjust the horizontal padding as needed.
                      child: AppTextFieldVerification(controller: _num2TextEditingController,),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8), // Adjust the horizontal padding as needed.
                      child: AppTextFieldVerification(controller: _num3TextEditingController,),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8), // Adjust the horizontal padding as needed.
                      child: AppTextFieldVerification(controller: _num4TextEditingController,),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don’t receive a OTP?',style:GoogleFonts.poppins(fontSize:18,fontWeight:
                FontWeight.w500,color: const Color(0xFFAAAAAA)) ,),
                TextButton(onPressed: (){
                  Navigator.pushNamed(context,'/please_screen');
                }, child: Text('Resend OTP',style:GoogleFonts.poppins(fontSize:18,fontWeight:
                FontWeight.w500,color: const Color(0xFFF13005))))
              ],
            ),



          ],
        ),
      ),
    );
  }
}

