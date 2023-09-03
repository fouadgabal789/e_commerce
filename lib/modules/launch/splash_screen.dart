import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, '/boarding_screen');
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFFFFFF),Color(0xFFFFFFFF)]
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsetsDirectional.only(bottom: 18),
              width: 139,
              height: 155,
              color:const Color(0xFFFFFFFF),
              child:Image.asset('lib/images/Logo.png') ,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text('Swip',style: GoogleFonts.poppins(
                fontSize: 38,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFF13005)
              ),),
              Text('wide',style: GoogleFonts.poppins(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF000000)
              ),),
            ],)
          ],
        ),
      ),
    );
  }
}
