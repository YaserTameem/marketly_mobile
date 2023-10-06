import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    required this.title,
    this.firstIcon,
    this.secondIcon,
    this.leadingIcon,
    this.firstOnPress,
    this.secondOnPress,
    this.leadingIOnPress,
    super.key,
  });

  final String title;
  final IconData? firstIcon;
  final IconData? secondIcon;
  final IconData? leadingIcon;
  final void Function()? firstOnPress;
  final void Function()? secondOnPress;
  final void Function()? leadingIOnPress;

  @override
  Size get preferredSize => Size.fromHeight(56.sp);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF272459)),
      ),
      leading: IconButton(
          onPressed: leadingIOnPress,
          icon: Icon(
            leadingIcon,
            color: const Color(0xFF272459),
          )),
      actions: [
        IconButton(
            onPressed: firstOnPress,
            icon: Icon(
              firstIcon,
              color: const Color(0xFF272459),
            )),
        IconButton(
            onPressed: secondOnPress,
            icon: Icon(
              secondIcon,
              color: const Color(0xFF272459),
            ))
      ],
    );
  }
}
