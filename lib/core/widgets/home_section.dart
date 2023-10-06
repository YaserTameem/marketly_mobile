import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketly_mobile/core/style/app_colors.dart';
class HomeSection extends StatelessWidget {
  const HomeSection({
    required this.title,
    super.key,
  });
final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsetsDirectional.symmetric(vertical: 18.h),
      child: Row(
        children: [
           Text(
            title,
            style:  TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.sp,
            ),
          ),
          const Spacer(),
          TextButton(
            onPressed: () {},
            child:   Text(
              'View All',
              style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColor.kMaincolor1),
            ),
          ),
        ],
      ),
    );
  }
}
