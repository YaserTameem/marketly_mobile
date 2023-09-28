import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CategoriesItem extends StatelessWidget {
  const CategoriesItem({
    required this.title,
     this.image,
    this.marginEnd=8,
    super.key,
  });
final String title;
final String? image;
final double marginEnd;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsetsDirectional.all(5),
          margin: EdgeInsetsDirectional.only(bottom: 8.h),
          height: 48.h,
          width: 48.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(8.r),
              border: Border.all(color: const Color(0xFFC6C6C6))),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(8.r),
              color: const Color(0xFFE5E5E4),
            ),
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 12.sp,
            height: 1,
            color: const Color(0xFF272459),
          ),
        ),
      ],
    );
  }
}