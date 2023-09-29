import 'package:flutter/material.dart';
class AppTextFieldVerification extends StatelessWidget {
  const AppTextFieldVerification({
    required this.controller,
    super.key,
  });
  final TextEditingController controller;


  @override
  Widget build(BuildContext context) {
    return TextField(
      minLines: 1,
      maxLines: 1,
      expands: false,
      obscureText: true,
      obscuringCharacter: '*',
      controller:controller ,
      keyboardType: TextInputType.number,
      textAlign:TextAlign.center,


      decoration: InputDecoration(

        hintText: '*',
        constraints: const BoxConstraints(maxHeight: 55),
        enabledBorder: buildOutlineInputBorder( Colors.black),
        focusedBorder: buildOutlineInputBorder(Colors.black),
        errorBorder: buildOutlineInputBorder(const Color(0xFFF13005)),
        focusedErrorBorder:buildOutlineInputBorder(const Color(0xFFF13005)),


      ),

    );



  }

  OutlineInputBorder buildOutlineInputBorder( Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide:  const BorderSide(width: 1,
          color:Colors.black),
    );
  }

  }

