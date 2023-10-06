import 'package:flutter/material.dart';
import 'package:marketly_mobile/core/style/app_colors.dart';
class CustomButtonLogin extends StatelessWidget {
  const CustomButtonLogin({
    required this.image,
    required this.text,
    this.marginBottom=12,
    super.key,
  });
final String image;
final String text;
final double marginBottom;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        margin: EdgeInsetsDirectional.only(bottom: marginBottom),
        padding: const EdgeInsetsDirectional.only(start: 20),
        width: 325,
        height: 58,
        decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(24),
            border: Border.all(color: const Color(0xFFDADADA))),
        child: Row(
          children: [
            Image(image: AssetImage(image)),
            const SizedBox(width: 41,),
            Text(
              text,
              style: bottun3,
            ),
          ],
        ),
      ),
    );
  }
}
