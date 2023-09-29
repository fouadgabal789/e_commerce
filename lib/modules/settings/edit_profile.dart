import 'package:e_commerce/widget/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  late TextEditingController _emailTextEditingController;
  late TextEditingController _passwordTextEditingController;
  late TextEditingController _nameTextEditingController;
  late TextEditingController _dateTextEditingController;
  @override
  void initState() {
    super.initState();
    _emailTextEditingController=TextEditingController();
    _passwordTextEditingController=TextEditingController();
    _nameTextEditingController=TextEditingController();
    _dateTextEditingController=TextEditingController();
  }
  @override
  void dispose() {
_nameTextEditingController.dispose();
_passwordTextEditingController.dispose();
_dateTextEditingController.dispose();
_emailTextEditingController.dispose();
super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Edit Profile',style: GoogleFonts.poppins(fontSize: 22,fontWeight: FontWeight.bold,color: const Color(0xFF000000),)),
        actions: [TextButton(onPressed: (){}, child: Text('SAVE',style: GoogleFonts.poppins(fontSize: 18.sp,fontWeight:FontWeight.bold,color: const Color(0xFFF13005) ),))],
        centerTitle: true,
        leading:IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios_outlined,size: 18,color:  Color(0xFF000000))),
      ),
      backgroundColor:const Color(0xFFFFFFFF) ,
      body: ListView(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 30),
        scrollDirection: Axis.vertical,

        children: [
          Center(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: const BoxDecoration(
                    color: Color(0xFFAAAAAA),
                    shape: BoxShape.circle,
                  ),
                ),
                // The badge
                PositionedDirectional(
                  start: 108,
                  top: 15,
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                    child: IconButton(onPressed: (){}, icon: const Icon(Icons.camera_alt),color: Colors.white,),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Text('Saul Goodmate',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: const Color(0xFF000000),),),
          Text('saulgo35@gmail.com',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500,color: const Color(0xFFAAAAAA),),),
          const SizedBox(height: 50,),
          AppTextField(hint: 'Saul Goodmate', keybord: TextInputType.text, controller:_nameTextEditingController ,showbordar: true,expands: true,constraints: 55,padding: 30,),
          AppTextField(hint: 'saulgo35@gmail.com', keybord: TextInputType.text, controller:_emailTextEditingController ,showbordar: true,expands: true,constraints: 55,padding: 30,),
          AppTextField(hint: '***********', keybord: TextInputType.visiblePassword, controller:_passwordTextEditingController ,showbordar: true,expands: true,constraints: 55,padding: 30,),
          AppTextField(hint: 'date', keybord: TextInputType.datetime, controller:_dateTextEditingController ,showbordar: true,expands: true,constraints: 55,padding: 30,),




        ],
      ),
    );
  }
}
