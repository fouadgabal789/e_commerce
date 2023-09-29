import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextField extends StatelessWidget {
   AppTextField({
    required this.hint,
    required this.keybord,
    required this.controller,
    this.padding=0,
    this.sufix,
     this.prefix,
    this.onPress,
    this.obscure=false,
    this.maxline,
    this.minline,
    this.expands=false,
    this.constraints=0,
     this.errortext,
     this.filled=false,
     this.showbordar=true,
     this.viewborder=false,
     this.obscuringChar='',
    super.key,
  });
final String hint;
final double padding;
final Widget? sufix;
final Widget? prefix;

final TextInputType keybord;
final double constraints;
final int? maxline;
final int? minline;
final bool expands;
final String? errortext;
final void Function()? onPress;
final TextEditingController controller;
final bool filled;
final bool showbordar;
final bool viewborder;
final String obscuringChar;
 bool obscure;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom:padding),
      child: TextField(
        obscureText: obscure,
        keyboardType: keybord,
        controller: controller ,
        minLines: minline,
        maxLines: maxline,
        expands: expands,
        decoration: InputDecoration(
          errorText: errortext,
            // contentPadding: const EdgeInsets.symmetric(vertical: 10),


            constraints:   BoxConstraints(maxHeight: constraints),
            suffixIcon:sufix,
            prefixIcon:prefix,
            hintText:hint,
            fillColor:const Color(0xFFF7F7F7),
            filled: filled,
            hintStyle: GoogleFonts.poppins(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xFFAAAAAA)
            ),
            enabledBorder: buildOutlineInputBorder(const Color(0xFFE5E5E5)),
            focusedBorder: buildOutlineInputBorder(const Color(0xFFE5E5E5)),
            errorBorder: buildOutlineInputBorder(const Color(0xFFF13005)),
            focusedErrorBorder:buildOutlineInputBorder(const Color(0xFFF13005)),


        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder( Color color) {
    return OutlineInputBorder(
            borderRadius:viewborder? BorderRadius.circular(40.r): BorderRadius.circular(10.r),
            borderSide:  BorderSide(width: 1,
                color: showbordar ? color:Colors.transparent),
          );
  }
}
