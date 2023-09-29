import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      extendBodyBehindAppBar: false,

      appBar: AppBar(

        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Shopping Cart',style: GoogleFonts.poppins(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black),),
        centerTitle: true,
        leading: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black,)),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border,color: Colors.black87,))
        ],
      ),
      body: GridView(
        padding:  const EdgeInsetsDirectional.only(end: 10,start: 10,),
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,mainAxisSpacing: 8,crossAxisSpacing: 8,childAspectRatio:358/180 ),
        children:  const [
          CustomItemCart(),
          CustomItemCart(),
          CustomItemCart(),
          CustomItemCart(),
          CustomItemCart(),
          CustomItemCart(),

        ],),
          );
  }
}

class CustomItemCart extends StatelessWidget {
  const CustomItemCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                width: 170,
                height: 170,
                decoration:  BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(5)
                ),
              ),
              PositionedDirectional(
                top: 5,
                  end: 5,
                  child: IconButton(onPressed: (){
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return  AlertDialog(
                          icon: const Icon(Icons.warning_amber_outlined,color: Color(0xFFF13005),size: 60,),
                          title: Text('Delete this product?',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black87),),
                          content: Text('Are you want to delete this product?',textAlign: TextAlign.center,style:GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500,color: const Color(0xFFAAAAAA)),),
                          actions: [
                            Row(children: [
                              Container(
                                width: 144.w,
                                height: 50
                                ,
                                decoration:  BoxDecoration(
                                    color: Color(0xFFF13005),
                                    borderRadius: BorderRadius.circular(25)
                                ),
                                child: TextButton(
                                  onPressed: () {
                                  },
                                  child:  Text('Yes',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.bold)),
                                ),
                              ),
                              const Spacer(),
                              Container(
                                width: 144.w,
                                height: 50
                                ,
                                decoration:  BoxDecoration(
                                    color: Color(0xFFFFA305),
                                    borderRadius: BorderRadius.circular(25)
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    // Close the alert dialog
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('No',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.bold),),
                                ),
                              ),
                            ],)

                          ],
                        );
                      },
                    );


                  }, icon: const Icon(Icons.delete,color: Color(0xFFF13005),)))
            ],
          ),
          const SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Smart Watches',style: GoogleFonts.poppins(fontSize: 20.sp,fontWeight: FontWeight.w600,color: Colors.black87,height: 1),),
              const SizedBox(height: 10,),
              Text('\$120.00',style: GoogleFonts.poppins(fontSize: 20.sp,fontWeight: FontWeight.w600,color: const Color(0xFFF13005)),),
              const SizedBox(height: 25,),
              Row(
                children: [
                  Container(
                    padding: EdgeInsetsDirectional.all(0),
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        color: const Color(0xFFF5F5F5),
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.minus,color: Colors.black87,size: 24,)),
                  ),
                  const SizedBox(width: 10,),

                  Text('1',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                  const SizedBox(width: 10,),
                     Container(
                    padding: EdgeInsetsDirectional.all(0),
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        color: const Color(0xFFF13005),
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.plus,color: Colors.white,size: 20,)),
                  )
                ],
              )

            ],
          ),

        ],
      ),
    );
  }
}
