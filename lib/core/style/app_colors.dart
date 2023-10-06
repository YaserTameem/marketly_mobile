import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColor {
  static const kMaincolor1 = Color(0xFF2513ff);
  static const kMaincolor2 = Color(0xFFff37ce);
  static const heading = Color(0xFF090F24);
  static const paragraf = Color(0xFFBEC0C7);
  static const bottunTextColor = Color(0xFF979797);
  static const bottun2 = Color(0xFF0A0D14);
  static const secondaryGrayColor = Color(0xFFAEAEB2);
  static const secondaryColor = Color(0xFF272459);
  static const bottunColor = Colors.white;
}

TextStyle bottun =
    GoogleFonts.poppins(fontSize: 16.sp, fontWeight: FontWeight.w600);
TextStyle heading1 = GoogleFonts.poppins(
    fontSize: 24.sp, fontWeight: FontWeight.w500, color: AppColor.heading);
TextStyle heading2 = GoogleFonts.poppins(
    fontSize: 20.sp, fontWeight: FontWeight.w500, color: AppColor.heading);
TextStyle heading3 = GoogleFonts.poppins(
    fontSize: 16.sp, fontWeight: FontWeight.w600, color: AppColor.bottunColor);
TextStyle input = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AppColor.bottunTextColor);
TextStyle heading4 = GoogleFonts.poppins(
    fontSize: 14.sp, fontWeight: FontWeight.w500, color: AppColor.heading);
TextStyle paragraf1 = GoogleFonts.poppins(
    fontSize: 14.sp, fontWeight: FontWeight.w500, color: AppColor.paragraf);
TextStyle bottun3 = GoogleFonts.poppins(
    fontSize: 16.sp, fontWeight: FontWeight.w600, color: AppColor.bottun2);
