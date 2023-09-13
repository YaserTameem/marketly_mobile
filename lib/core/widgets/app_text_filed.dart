import 'package:flutter/material.dart';
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
  });

  final String hint;
  final double paddingBottom;
  final IconData? suffix;
  final IconData? prefix;
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
      padding: EdgeInsetsDirectional.only(bottom: paddingBottom),
      child: TextField(
        keyboardType: keyboard,
        obscureText: obscure,
        controller: controller,
        textAlign: TextAlign.start,
        maxLines: maxLines,
        minLines: minLines,
        expands: expands,
        decoration: InputDecoration(
          contentPadding: const EdgeInsetsDirectional.symmetric(horizontal: 58),
          constraints: BoxConstraints(maxHeight: constraints),
          hintText: hint,
          hintStyle: input,
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.transparent)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.transparent)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.transparent)),
          suffixIcon: IconButton(
            onPressed: onPress,
            icon: Icon(suffix),
          ),
          prefixIcon: Icon(
            prefix,
            weight: 18,
          ),
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
