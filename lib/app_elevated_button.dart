import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    required this.text,
    required this.onPress,
    super.key,
  });
  final String text;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFF13005),
          minimumSize: const Size(double.infinity, 55),
        ),
        onPressed: onPress,
        child: Text(
          text,
          style: GoogleFonts.poppins(
              color: const Color(0xFFFFFFFF),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ));
  }
}
