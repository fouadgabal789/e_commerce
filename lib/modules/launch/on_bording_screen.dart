import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widget/custom_text_button.dart';
import '../../widget/on_bording_content.dart';

class BordingScreen extends StatefulWidget {
  const BordingScreen({super.key});

  @override
  State<BordingScreen> createState() => _BordingScreenState();
}

class _BordingScreenState extends State<BordingScreen> {
  late PageController _pageController;
  int _currentPage=0;
  @override
  void initState() {
    super.initState();
    _pageController =PageController();
  }
  @override
  void dispose() {
  _pageController.dispose();
   super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: Visibility(
                visible: _currentPage<2,
                replacement:  CustomTextButton(text: 'START',onPress: (){
                  Navigator.pushReplacementNamed(context,  '/login_screen');
                },),
                child: CustomTextButton(text: 'NEXT',onPress: (){
                  _pageController.nextPage(duration: const Duration(seconds: 1), curve: Curves.easeInBack);
                },),
              ),
            ),
            Expanded(
              child: PageView(
                physics: const BouncingScrollPhysics(),
                onPageChanged: (int currentPage){
                  setState(() {
                    _currentPage=currentPage;

                  });
                },
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                children:  const [
                  OnBordingContent(imageName: 'onbording1', title: 'Discover New Products', subtilie: 'Many new products are discovered bypeople simply happening upon them while being out '),
                  OnBordingContent(imageName: 'onbording2', title: 'Earn Points For Shopping', subtilie: 'The purpose of reward points is to providean incentive for customers to makerepeat purchases.'),
                  OnBordingContent(imageName: 'onbording3', title: 'Get Fast Local Delivery', subtilie: 'Wow Express offers cash on deliveryservices and fast delivery servicesso that your customers.'),




                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TabPageSelectorIndicator(
                  backgroundColor: _currentPage ==0 ? const Color(0xFFF13005) :const Color(0xFFF5B5A7),
                  borderColor: Colors.transparent, size: 10,
                ),
                TabPageSelectorIndicator(
                  backgroundColor: _currentPage ==1 ? const Color(0xFFF13005) :const Color(0xFFF5B5A7),
                  borderColor: Colors.transparent, size: 10,
                ),
                TabPageSelectorIndicator(
                  backgroundColor: _currentPage ==2 ? const Color(0xFFF13005) :const Color(0xFFF5B5A7),
                  borderColor: Colors.transparent, size: 10,
                ),
              ],
            ),
            const SizedBox(height: 16,)





          ],
        ),
      ),
    );
  }
}



