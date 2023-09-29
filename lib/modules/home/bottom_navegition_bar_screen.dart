import 'package:e_commerce/models/bn_screen.dart';
import 'package:e_commerce/modules/categoories/Search_Screen.dart';
import 'package:e_commerce/modules/home/home_screen.dart';
import 'package:e_commerce/modules/settings/profile_screen.dart';
import 'package:e_commerce/my_cart.dart';
import 'package:flutter/material.dart';

class BottomNavigetionBarScreen extends StatefulWidget {
  const BottomNavigetionBarScreen({super.key});
  @override
  State<BottomNavigetionBarScreen> createState() => _BottomNavigetionBarScreenState();
}

class _BottomNavigetionBarScreenState extends State<BottomNavigetionBarScreen> {
  int _current=0;
  final List<BnScreen> _screen=<BnScreen>[
    BnScreen(screen: HomeScreen(), title: "homeScreen"),
    BnScreen(screen: SearchScreen(), title: "searchScreen"),
    BnScreen(screen: MyCart(), title: "cartScreen"),
    BnScreen(screen: ProfileScreeen(), title: "profileScreen"),

  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      // ),
      body:_screen[_current].screen,
      bottomNavigationBar:ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        child: BottomNavigationBar(
          elevation: 5,
          selectedIconTheme: const IconThemeData(color: Color(0xFFF13005)),
          unselectedIconTheme: const IconThemeData(color: Color(0xFF222222)),
          type: BottomNavigationBarType.shifting,
          onTap: (int onselectedItem) {
            setState(() {
              _current = onselectedItem;
            });
          },
          currentIndex: _current,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_travel_outlined),
              label: 'MyCart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_rounded),
              label: 'MyAcount',
            ),
          ],
        ),
      )
      ,

    );
    
  }
}
