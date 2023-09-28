import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketly_mobile/core/constant.dart';

class AppTextFiled extends StatelessWidget {
  const AppTextFiled({
    required this.hint,
    this.paddingBottom = 0,
    this.suffix,
    this.prefix,
    this.onPress,
    required this.controller,
    this.obscure = false,
    super.key,
    this.maxLines = 1,
    this.minLines = 1,
    this.expands = false,
    this.constraints = 70,
    required this.keyboard,
    this.errorText,
  });

  final String hint;
  final String? errorText;
  final double paddingBottom;
  final IconData? suffix;
  final Widget? prefix;
  final void Function()? onPress;
  final TextEditingController controller;
  final bool obscure;
  final int? minLines;
  final int? maxLines;
  final bool expands;
  final double constraints;
  final TextInputType keyboard;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(bottom: paddingBottom.h),
      child: TextField(
        keyboardType: keyboard,
        obscureText: obscure,
        controller: controller,
        textAlign: TextAlign.start,
        maxLines: maxLines,
        minLines: minLines,
        expands: expands,
        decoration: InputDecoration(
          errorText: errorText,
          contentPadding:  EdgeInsetsDirectional.symmetric(horizontal: 58.w),
          constraints: BoxConstraints(maxHeight: constraints.h),
          hintText: hint,
          hintStyle: input,
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.r),
              borderSide: const BorderSide(color: Colors.transparent)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.r),
              borderSide: const BorderSide(color: Colors.transparent)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.r),
              borderSide: const BorderSide(color: Colors.transparent)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.r),
              borderSide: const BorderSide(color: Colors.transparent)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.r),
              borderSide: const BorderSide(color: Colors.transparent)),
          suffixIcon: IconButton(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onPressed: onPress,
            icon: Icon(suffix ,size: ScreenUtil().setSp(24),),
          ),
          prefixIcon:prefix,
          prefixIconColor: bottunTextColor,
          filled: true,
          fillColor: const Color(0xFFF9FAFB),
        ),
        style: input,
        textInputAction: TextInputAction.go,
      ),
    );
  }
}
