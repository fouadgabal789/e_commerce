import 'package:e_commerce/modules/auth/forget_password.dart';
import 'package:e_commerce/modules/auth/login_screen.dart';
import 'package:e_commerce/modules/auth/reset_password.dart';
import 'package:e_commerce/modules/auth/sign_up.dart';
import 'package:flutter/material.dart';

import 'modules/launch/on_bording_screen.dart';
import 'modules/launch/splash_screen.dart';
void main(){
  runApp(const Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash_screen',
      routes: { '/splash_screen':(context) =>const SplashScreen(),
        '/boarding_screen':(context) =>const BordingScreen(),
        '/login_screen':(context) =>const LoginScreen(),
        '/sign_up_screen':(context) =>const SignUp(),
        '/forget_password_screen':(context) =>const ForgetPassword(),
        '/reset_password_screen':(context) =>const ResetPassword(),




      },
    );
  }
}
