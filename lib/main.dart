import 'package:e_commerce/PleaseWait.dart';
import 'package:e_commerce/modules/auth/forget_password.dart';
import 'package:e_commerce/modules/auth/login_screen.dart';
import 'package:e_commerce/modules/auth/sign_up.dart';
import 'package:e_commerce/modules/categoories/Search_Screen.dart';
import 'package:e_commerce/modules/categoories/wishlist_screen.dart';
import 'package:e_commerce/modules/home/bottom_navegition_bar_screen.dart';
import 'package:e_commerce/modules/home/home_screen.dart';
import 'package:e_commerce/modules/settings/edit_profile.dart';
import 'package:e_commerce/modules/settings/profile_screen.dart';
import 'package:e_commerce/my_cart.dart';
import 'package:e_commerce/password_changed.dart';
import 'package:e_commerce/verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'modules/auth/reset_password.dart';
import 'modules/launch/on_bording_screen.dart';
import 'modules/launch/splash_screen.dart';
void main(){
  runApp(const Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (context,child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/splash_screen',
          routes: { '/splash_screen':(context) =>const SplashScreen(),
            '/boarding_screen':(context) =>const BordingScreen(),
            '/login_screen':(context) =>const LoginScreen(),
            '/sign_up_screen':(context) =>const SignUp(),
            '/forget_password_screen':(context) =>const ForgetPassword(),
            '/reset_password_screen':(context) =>const ResetPassword(),
            '/profile_screen':(context) =>const ProfileScreeen(),
            '/wish_list_screen':(context) =>const WishListScreen(),
            '/search_screen':(context) =>const SearchScreen(),
            '/home_screen':(context) =>const HomeScreen(),
            '/verification_screen':(context) =>const VerificationScreen(),
            '/please_screen':(context) =>const PleaseWait(),
            '/password_Changed_screen':(context) =>const PasswordChanged(),
            '/my_cart_screen':(context) =>const MyCart(),
            '/bottom_navigation_screen':(context) =>const BottomNavigetionBarScreen(),
            '/edit_profile_screen':(context) =>const EditProfileScreen(),






          },
        );
      },
    );
  }
}
