
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class OnBordingContent extends StatelessWidget {
  const OnBordingContent({
    required this.imageName,
    required this.title,
    required this.subtilie,
    super.key,
  });
  final  String  imageName;
  final String title;
  final String subtilie;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('lib/images/$imageName.png',width: 343,height: 300,),
        const SizedBox(height: 100,),
        Text(title,style: GoogleFonts.poppins( color: const Color(0xFF000000),fontSize: 25 ,fontWeight: FontWeight.bold),),
        const SizedBox(height: 25,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 44),
          child: Text(subtilie,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  color: const Color(0xFFAAAAAA),fontSize: 12 ,fontWeight: FontWeight.w500)),
        ),
      ],
    );
  }
}