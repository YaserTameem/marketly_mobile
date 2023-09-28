import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:marketly_mobile/core/constant.dart';
import 'package:marketly_mobile/modules/splash_screens/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String screenRoute = '/splash_screen';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 2), () {
      Get.offNamed(OneBoardingScreen.screenRoute);
    });
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              kMaincolor1,
              kMaincolor2,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Container(
              alignment: AlignmentDirectional.center,
              width: 150.w,
              height: 150.h,
              decoration:  BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadiusDirectional.only(
                  bottomStart: Radius.circular(50.r),
                  topEnd: Radius.circular(50.r),
                ),
              ),
              child: const Image(
                image: AssetImage('images/splash_logo.png'),
              ),
            ),
             SizedBox(
              height: 10.h,
            ),
             Text(
              'Marketly',
              style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            const Spacer(),
            const SpinKitThreeBounce(
              size: 40.0,
              color: Colors.white,
            ),
             SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
