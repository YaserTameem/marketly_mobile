import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
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
          routes: {
            SplashScreen.screenRoute: (context) => const SplashScreen(),
            OneBoardingScreen.screenRoute: (context) => const OneBoardingScreen(),
            LoginScreen.screenRoute: (context) => const LoginScreen(),
            ProfileScreen.screenRoute: (context) => const ProfileScreen(),
            SignUpScreen.screenRoute: (context) => const SignUpScreen(),
            ForgotPassWordScreen.screenRoute: (context) => const ForgotPassWordScreen(),
            SearchScreen.screenRoute: (context) => const SearchScreen(),
            HomeScreen.screenRoute: (context) => const HomeScreen(),
            NewPassWordScreen.screenRoute: (context) => const NewPassWordScreen(),
            VerifyCodeScreen.screenRoute: (context) => const VerifyCodeScreen(),
          },
        );
      },
    );
  }
}
