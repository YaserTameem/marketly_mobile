import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketly_mobile/modules/auth_screens/forgot_password_screen.dart';
import 'package:marketly_mobile/modules/auth_screens/login_screen.dart';
import 'package:marketly_mobile/modules/auth_screens/new_password_screen.dart';
import 'package:marketly_mobile/modules/auth_screens/signup_screen.dart';
import 'package:marketly_mobile/modules/auth_screens/verify_%20code_screen.dart';
import 'package:marketly_mobile/modules/catogories/search_screen.dart';
import 'package:marketly_mobile/modules/home/home_screen.dart';
import 'package:marketly_mobile/modules/settings/profile_screen.dart';
import 'package:marketly_mobile/modules/splash_screens/onboarding_screen.dart';
import 'package:marketly_mobile/modules/splash_screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return GetMaterialApp(
          theme: ThemeData(
            fontFamily: GoogleFonts.poppins().fontFamily,
            textTheme: GoogleFonts.poppinsTextTheme(),
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: SplashScreen.screenRoute,
          getPages: [
            GetPage(
                name: SplashScreen.screenRoute,
                page: () => const SplashScreen()),
            GetPage(
                name: OneBoardingScreen.screenRoute,
                page: () => const OneBoardingScreen()),
            GetPage(
                name: LoginScreen.screenRoute,
                page: () => const LoginScreen()),
            GetPage(
                name: ProfileScreen.screenRoute,
                page: () => const ProfileScreen()),
            GetPage(
                name: SignUpScreen.screenRoute,
                page: () => const SignUpScreen()),
            GetPage(
                name: ForgotPassWordScreen.screenRoute,
                page: () => const ForgotPassWordScreen()),
            GetPage(
                name: SearchScreen.screenRoute,
                page: () => const SearchScreen()),
            GetPage(
                name: HomeScreen.screenRoute,
                page: () => const HomeScreen()),
            GetPage(
                name: NewPassWordScreen.screenRoute,
                page: () => const NewPassWordScreen()),
            GetPage(
                name: VerifyCodeScreen.screenRoute,
                page: () => const VerifyCodeScreen()),
          ],
        );
      },
    );
  }
}
