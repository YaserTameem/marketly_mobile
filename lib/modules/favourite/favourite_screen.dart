import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketly_mobile/core/style/app_colors.dart';

class FavouriteScreen extends StatelessWidget {
  static const String screenRoute = '/FavouriteScreen';

  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text(
      //     'My Favourite',
      //     style: TextStyle(
      //         fontSize: 18.sp,
      //         fontWeight: FontWeight.w600,
      //         color: AppColor.secondaryColor),
      //   ),
      //   actions: [
      //     IconButton(
      //         onPressed: () {},
      //         icon: const Icon(
      //           Icons.shopping_cart_outlined,
      //           color: AppColor.secondaryColor,
      //         ))
      //   ],
      // ),
      body: Center(
        child: Text('My Favourite'),
      ),
    );
  }
}
