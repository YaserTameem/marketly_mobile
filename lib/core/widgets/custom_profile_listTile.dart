import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketly_mobile/core/style/app_colors.dart';

class CustomProfileListTile extends StatelessWidget {
  const CustomProfileListTile(
      {required this.title,
      required this.leading,
      this.trailing,
      this.marginBottom = 8,
      this.onPress,
      super.key});

  final String title;
  final IconData leading;
  final IconData? trailing;
  final double marginBottom;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(bottom: marginBottom.h),
      decoration: BoxDecoration(
          color: const Color(0xFFF9FAFB),
          borderRadius: BorderRadius.circular(10.r)),
      child: ListTile(
          leading: Container(
            padding: const EdgeInsetsDirectional.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(15.r),
              color: AppColor.kMaincolor1.withOpacity(0.1),
            ),
            child: Icon(leading, color: AppColor.kMaincolor1.withOpacity(0.8)),
          ),
          title: Text(
            title,
            style: const TextStyle(
                color: AppColor.heading, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          trailing: IconButton(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onPressed: onPress,
            icon: Icon(
              trailing,
              color: AppColor.heading,
            ),
          )),
    );
  }
}
