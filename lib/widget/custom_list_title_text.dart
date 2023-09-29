import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CustomListTitleText extends StatelessWidget {
  const CustomListTitleText({
    required this.text,
    this.onPress,
    super.key,
  });
final String text;
final void Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Shop By Category',style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
        const Spacer(flex: 1,),
        TextButton(onPressed: (){}, child: Text('view all',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w500,color: Colors.black),))
      ],
    );
  }
}
