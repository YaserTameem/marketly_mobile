import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPageIndecator extends StatelessWidget {
  const CustomPageIndecator({
    this.marginEnd = 0,
    required this.isCurrentIndex,
    super.key,
  });

  final double marginEnd;
  final bool isCurrentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(end: marginEnd.w),
      width: isCurrentIndex?40:8,
      height: 8.h,
      decoration: BoxDecoration(
        color: isCurrentIndex ? const Color(0xFF3d7cfe) : const Color(0xFFBEC0C7),
        borderRadius: BorderRadius.circular(16.r),
      ),
    );
  }
}
