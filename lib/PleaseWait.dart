import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class PleaseWait extends StatelessWidget {
  const PleaseWait({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.pushNamed(context,'/password_Changed_screen');
        }, icon: const Icon(Icons.arrow_forward_ios_outlined),color: Colors.black,),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 60,
              height: 60,
              child: Image.asset('lib/images/Loader.png'),
            ),
            const SizedBox(height: 40,),
            Text('Please Wait',style: GoogleFonts.poppins(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.black),),
            const Row()
          ],
        ),
      ),
    );

  }
}
