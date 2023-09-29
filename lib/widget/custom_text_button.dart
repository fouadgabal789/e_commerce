import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    required this.text,
    required this.onPress,
    super.key,
  });
  final String text;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPress, child:  Text(text,
      style: GoogleFonts.poppins(color: const Color(0xFFF13005) ,fontWeight: FontWeight.bold,fontSize: 18),));
  }
}
