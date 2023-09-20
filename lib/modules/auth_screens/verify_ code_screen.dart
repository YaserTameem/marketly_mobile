import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:marketly_mobile/core/constant.dart';

class VerifyCodeScreen extends StatefulWidget {
  static const String screenRoute = '/verifyCodeScreen';

  const VerifyCodeScreen({super.key});

  @override
  State<VerifyCodeScreen> createState() => _VerifyCodeScreenState();
}

class _VerifyCodeScreenState extends State<VerifyCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          margin:
              const EdgeInsetsDirectional.only(top: 10, start: 10, bottom: 5),
          width: 20,
          // height: 20,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [kMaincolor1, kMaincolor2]),
              borderRadius: BorderRadiusDirectional.circular(30)),
          child: IconButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              icon: Icon(
                Icons.arrow_back_ios_new_outlined,
                size:22,
                color: bottunColor,
              ),
              onPressed: () {
               Get.back();
              }),
        ),
        centerTitle: true,
        title: Text(
          'New Password',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: bottun2),
        ),
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 25),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsetsDirectional.only(bottom: 16, top: 60),
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [kMaincolor1, kMaincolor2]),
                  borderRadius: const BorderRadiusDirectional.only(
                      bottomStart: Radius.circular(20),
                      topEnd: Radius.circular(20))),
              child: const Image(
                image: AssetImage('images/logo2.png'),
              ),
            ),
            Divider(),
            Text(
              textAlign: TextAlign.center,
              'The confimation code was \n sent via email',
              style: paragraf1,
            ),
             SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }
}
