import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widget/app_elevated_button.dart';
import '../../widget/app_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    super.key});


  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailTextEditingController;
  late TextEditingController _passwordTextEditingController;
  late TapGestureRecognizer _tapGestureRecognizer;
  bool _obsucre=true;
  String? erorrEmail;
  String? erorrPassword;

  @override
  void initState() {
    super.initState();
    _emailTextEditingController=TextEditingController();
    _passwordTextEditingController=TextEditingController();
    _tapGestureRecognizer=TapGestureRecognizer();
    _tapGestureRecognizer.onTap = (){} ;
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
      backgroundColor:  const Color(0xFFFFFFFF),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            children: [
               SizedBox(height: 40.h,),
              Image.asset('lib/images/LogoIcon.png',width:89.w ,height: 101.h,),
               SizedBox(height: 30.h,),
              Text('Welcome Back',style: GoogleFonts.poppins(fontSize: 32.sp,fontWeight: FontWeight.bold,color: const Color(0xFF000000),),),
              Text('Login to your account',style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500,color: const Color(0xFFAAAAAA),),),
               SizedBox(height: 50.h,),
               AppTextField(hint: 'Email address',controller: _emailTextEditingController,keybord: TextInputType.emailAddress,expands: true,constraints:erorrEmail !=null ?80:55,padding: 30,errortext: erorrEmail,),
               AppTextField(hint: 'Password',sufix:IconButton(onPressed:(){  setState(() {
                 _obsucre !=_obsucre;
               });}, icon:Icon(_obsucre? Icons.visibility: Icons.visibility_off)) ,controller: _passwordTextEditingController,obscure: _obsucre
               ,keybord: TextInputType.visiblePassword,maxline: 1,minline: 1,constraints: erorrPassword !=null ?75:55,padding:1,errortext: erorrPassword,),
              Align( alignment: AlignmentDirectional.centerEnd,
                  child: TextButton(onPressed: (){
                    Navigator.pushNamed(context, '/forget_password_screen');
                  }, child:  Text('Forget Password ?' ,style: GoogleFonts.poppins(fontSize: 16 ,fontWeight: FontWeight.bold,color: const Color(0xFFF13005)),))),
                SizedBox(height: 60.h,),
               AppElevatedButton(text: 'Login',onPress: (){
                 performLogin();
               },),
               SizedBox(height: 40.h,),
              Text('or',style: GoogleFonts.poppins(fontSize: 18.sp ,color: const Color(0xFFAAAAAA)),),
               SizedBox(height: 35.h,),
              Row(
                children: [
               SizedBox(
                    width: 169.w,
                    height: 55.h,
                    child: ElevatedButton.icon( style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor:  const Color(0xFFFFFFFF),
                        side: const BorderSide(width: 1,style: BorderStyle.solid,color: Color(0xFFE5E5E5)),

                    ) ,
                        onPressed: (){}, icon:  Image.asset('lib/images/googleIcon.png'), label: Text('Google',style: GoogleFonts.poppins(fontSize: 18.sp,fontWeight: FontWeight.bold,color: const Color(0xFF000000)),)),
                  )  ,
                  const Spacer(flex: 1,),
                SizedBox(
                  width: 169.w,
                    height: 55.h,
                    child: ElevatedButton.icon( style: ElevatedButton.styleFrom(
                      backgroundColor:  const Color(0xFFFFFFFF),
                      elevation: 0,
                      side: const BorderSide(width: 1,style: BorderStyle.solid,color: Color(0xFFE5E5E5)),

                    ) ,
                        onPressed: (){}, icon: const Icon(Icons.facebook,color: Color(0xFF337CCF),size: 32,), label: Text('Facebook',style: GoogleFonts.poppins(fontSize: 16.sp,fontWeight: FontWeight.bold,color: const Color(0xFF000000)),)),
                  )  ,

                ],

              ),
               SizedBox(height: 5.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don’t have an account?',style:GoogleFonts.poppins(fontSize:18.sp,fontWeight:
                  FontWeight.w500,color: const Color(0xFFAAAAAA)) ,),
                  TextButton(onPressed: (){
                    Navigator.pushNamed(context,'/sign_up_screen');
                  }, child: Text('Sign Up',style:GoogleFonts.poppins(fontSize:18.sp,fontWeight:
                  FontWeight.w500,color: const Color(0xFFF13005))))
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
  void performLogin(){
if(checkData()){
  login();
}
  }
  bool checkData(){
  if(_emailTextEditingController.text.isNotEmpty && _passwordTextEditingController.text.isNotEmpty){
    setState(() {
      erorrEmail=_emailTextEditingController.text.isEmpty ? 'Enter Email' : null ;
      erorrPassword=_passwordTextEditingController.text.isEmpty ? 'Enter Password' : null ;
    });
    return true;
  }
  setState(() {
    erorrEmail=_emailTextEditingController.text.isEmpty ? 'Enter Email' : null ;
    erorrPassword=_passwordTextEditingController.text.isEmpty ? 'Enter Password' : null ;

  });

  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: Colors.green,
    // padding: EdgeInsetsDirectional.symmetric(horizontal: 10,vertical: 10),
    margin:
    const EdgeInsetsDirectional.symmetric(horizontal: 20, vertical: 20),
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    elevation: 5,
    dismissDirection: DismissDirection.horizontal,

    content: Text('enter data',
        style: GoogleFonts.nunito(fontWeight: FontWeight.w500, fontSize: 14)),
  ));
return false;
  }


  void login(){
Navigator.pushNamed(context, '/bottom_navigation_screen');
  }
}


