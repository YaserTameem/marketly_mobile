import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketly_mobile/modules/auth_screens/login_screen.dart';
import 'package:marketly_mobile/modules/splash_screens/onboarding_screen.dart';
import 'package:marketly_mobile/modules/splash_screens/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.screenRoute,
      routes: {
        SplashScreen.screenRoute: (context) => const SplashScreen(),
        OneBoardingScreen.screenRoute: (context) => const OneBoardingScreen(),
        LoginScreen.screenRoute:(context)=> const LoginScreen(),
      },
    );
  }
}
