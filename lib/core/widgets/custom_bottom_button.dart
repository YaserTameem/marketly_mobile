import 'package:flutter/material.dart';
import 'package:marketly_mobile/core/style/app_colors.dart';

class CustomBottomButton extends StatelessWidget {
  const CustomBottomButton({
    required this.title,
    required this.ontap,
    super.key,
  });
final String title;
final void Function() ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
          padding: const EdgeInsetsDirectional.only(
            top: 16,
          ),
          width: 193,
          height: 58,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                blurRadius: 4,
                color: Colors.black,
                offset: Offset(0,3)
              )
            ],
              borderRadius: BorderRadius.circular(99),
              gradient: const LinearGradient(
                  colors: [AppColor.kMaincolor1, AppColor.kMaincolor2], stops: [.3, 9])),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: heading3,
          )),
    );
  }
}
