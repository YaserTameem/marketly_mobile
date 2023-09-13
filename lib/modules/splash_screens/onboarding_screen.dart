import 'package:flutter/material.dart';
import 'package:marketly_mobile/core/widgets/custom_bottom_button.dart';
import 'package:marketly_mobile/core/widgets/custom_page_indecator.dart';
import 'package:marketly_mobile/core/widgets/custom_text_button.dart';
import 'package:marketly_mobile/core/widgets/onbordeing_contant.dart';
import 'package:marketly_mobile/modules/auth_screens/login_screen.dart';
import 'package:marketly_mobile/modules/settings/profile_screen.dart';

class OneBoardingScreen extends StatefulWidget {
  static const String screenRoute = '/oneboarding_screen';

  const OneBoardingScreen({super.key});

  @override
  State<OneBoardingScreen> createState() => _OneBoardingScreenState();
}

class _OneBoardingScreenState extends State<OneBoardingScreen> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: Visibility(
                visible: _currentPage < 2,
                replacement: CustomTextButton(
                  title: 'START',
                  onPress: () {
                    Navigator.of(context).pushReplacementNamed(LoginScreen.screenRoute);
                  },
                ),
                child: CustomTextButton(
                  title: 'SKIP',
                  onPress: () {
                    _pageController.animateToPage(2,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOutBack);
                  },
                ),
              ),
            ),
            Expanded(
              child: PageView(
                physics: const BouncingScrollPhysics(),
                onPageChanged: (int currentPage) {
                  setState(() {
                    _currentPage = currentPage;
                  });
                },
                controller: _pageController,
                // scrollDirection: Axis.vertical,
                children: const [
                  CoustomOnbordeingScreen(
                      image: 'images/onbordeing11.png',
                      title: 'Enjoy The New Arrival product'),
                  CoustomOnbordeingScreen(
                      image: 'images/onbordeing12.png',
                      title: 'Guaranteed Safe Delivery'),
                  CoustomOnbordeingScreen(
                      image: 'images/onbordeing13.png',
                      title: 'Good Arrived On Time'),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomPageIndecator(
                  marginEnd: 8,
                  isCurrentIndex: _currentPage == 0,
                ),
                CustomPageIndecator(
                    marginEnd: 8, isCurrentIndex: _currentPage == 1),
                CustomPageIndecator(isCurrentIndex: _currentPage == 2),
              ],
            ),
            const SizedBox(height: 40),
            Align(
              alignment: AlignmentDirectional.center,
              child: Visibility(
                visible: _currentPage < 2,
                replacement: CustomBottomButton(
                  title: 'Get Start',
                  ontap: () {
                    Navigator.of(context).pushReplacementNamed(LoginScreen.screenRoute);
                  },
                ),
                child: CustomBottomButton(
                  title: 'Next',
                  ontap: () {
                    _pageController.animateToPage(2,
                        duration: const Duration(milliseconds: 600),
                        curve: Curves.easeInOutBack);
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
