import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class PasswordChanged extends StatelessWidget {
  const PasswordChanged({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 176,
              height: 176,
              decoration: const BoxDecoration(
                color: Color(0xFFF13005),
                shape: BoxShape.circle
              ),
                child:Image.asset('lib/images/Vector.png'),
            ),
            const SizedBox(height: 50,),
            Text('Password Changed',style: GoogleFonts.poppins(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.black),),
            const SizedBox(height: 10,),
            Text('Password change successfully',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: const Color(0xFFAAAAAA)),),
            const Row()

          ],
        ),
      ),
    );
  }
}
