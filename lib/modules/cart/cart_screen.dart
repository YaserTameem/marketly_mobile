import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketly_mobile/core/style/app_colors.dart';
class CartScreen extends StatelessWidget {
  static const String screenRoute = '/CartScreen';

  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text(
      //     'My Cart',
      //     style: TextStyle(
      //         fontSize: 18.sp,
      //         fontWeight: FontWeight.w600,
      //         color: AppColor.secondaryColor),
      //   ),
      // ),
      body: Center(child: Text('My Cart'),),
    );
  }
}
