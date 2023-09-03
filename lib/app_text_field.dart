import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    required this.hint,
    this.padding=0,
    this.sufix,
    this.onPress,
    this.obscure=false,
    required this.controller,
    super.key,
  });
final String hint;
final double padding;
final IconData? sufix;
final void Function()? onPress;
final TextEditingController controller;
final bool obscure;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom:padding),
      child: TextField(
        obscureText: obscure,
        keyboardType: TextInputType.emailAddress,
        controller: controller ,
        decoration: InputDecoration(
            contentPadding: const EdgeInsetsDirectional.symmetric(horizontal:30),
            suffixIcon: IconButton(onPressed: onPress, icon:Icon(sufix)),
            hintText:hint,
            hintStyle: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: const Color(0xFFAAAAAA)
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(width: 1,color: Color(0xFFAAAAAA)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(width: 2,color: Color(0xFFF13005)),

            )
        ),
      ),
    );
  }
}
