import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:marketly_mobile/core/style/app_colors.dart';
import 'package:marketly_mobile/core/widgets/app_text_filed.dart';
import 'package:marketly_mobile/core/widgets/custom_bottom_button.dart';
import 'package:marketly_mobile/modules/auth_screens/verify_%20code_screen.dart';

class NewPassWordScreen extends StatefulWidget {
  static const String screenRoute = '/newPassWordScreen';

  const NewPassWordScreen({super.key});

  @override
  State<NewPassWordScreen> createState() => _NewPassWordScreenState();
}

class _NewPassWordScreenState extends State<NewPassWordScreen> {
  late TextEditingController _passwordTextEditingController;
  late TextEditingController _passwordTextEditingController2;
  bool _obscure = true;
  bool _obscure2 = true;
  String? _errorPassWordValue;
  String? _errorPassWordValue2;

  @override
  void initState() {
    super.initState();
    _passwordTextEditingController = TextEditingController();
    _passwordTextEditingController2 = TextEditingController();
  }

  @override
  void dispose() {
    _passwordTextEditingController.dispose();
    _passwordTextEditingController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Container(
            margin:
                const EdgeInsetsDirectional.only(top: 10, start: 10, bottom: 5),
            width: 20,
            // height: 20,
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [AppColor.kMaincolor1, AppColor.kMaincolor2]),
                borderRadius: BorderRadiusDirectional.circular(30.r)),
            child: IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                icon: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: 22.sp,
                  color: AppColor.bottunColor,
                ),
                onPressed: () {
                  Get.back();
                }),
          ),
          centerTitle: true,
          title: Text(
            'New Password',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
                color: AppColor.bottun2),
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
                    gradient:
                        const LinearGradient(colors: [AppColor.kMaincolor1, AppColor.kMaincolor2]),
                    borderRadius:  BorderRadiusDirectional.only(
                        bottomStart: Radius.circular(20.r),
                        topEnd: Radius.circular(20.r))),
                child: const Image(
                  image: AssetImage('images/logo2.png'),
                ),
              ),
              Text(
                'Create your new password to Login',
                style: paragraf1,
              ),
              SizedBox(
                height: 30.h,
              ),
              AppTextFiled(
                keyboard: TextInputType.visiblePassword,
                hint: 'New Password',
                constraints: _errorPassWordValue != null ? 95 : 70,
                // maxLines: 1,
                // minLines: 1,
                // expands: false,
                errorText: _errorPassWordValue,
                suffix: _obscure
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                prefix: const Icon(Icons.lock_outline),
                onPress: () {
                  setState(() {
                    _obscure = !_obscure;
                  });
                },
                controller: _passwordTextEditingController,
                obscure: _obscure,
              ),
              const SizedBox(
                height: 30,
              ),
              AppTextFiled(
                keyboard: TextInputType.visiblePassword,
                hint: 'New Password',
                constraints: _errorPassWordValue2 != null ? 95 : 70,
                // maxLines: 1,
                // minLines: 1,
                // expands: false,
                errorText: _errorPassWordValue2,
                suffix: _obscure2
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                prefix: const Icon(Icons.lock_outline),
                onPress: () {
                  setState(() {
                    _obscure2 = !_obscure2;
                  });
                },
                controller: _passwordTextEditingController2,
                obscure: _obscure2,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomBottomButton(
                  title: 'Reset Password',
                  ontap: () {
                    performLogin();
                  }),
            ],
          ),
        ));
  }

  void performLogin() {
    if (checkData()) {
      login();
    }
  }

  bool checkData() {
    if (_passwordTextEditingController2.text.isNotEmpty &&
        _passwordTextEditingController.text.isNotEmpty) {
      setStateErrorValue();
      return true;
    }
    setStateErrorValue();

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        duration: const Duration(seconds: 3),
        dismissDirection: DismissDirection.horizontal,
        margin:
            const EdgeInsetsDirectional.symmetric(horizontal: 10, vertical: 10),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: const Color(0xFFFF4343),
        content: const Text('Enter Required Data')));
    return false;
  }

  void setStateErrorValue() {
    setState(() {
      _errorPassWordValue2 = _passwordTextEditingController2.text.isEmpty
          ? 'Enter New Password'
          : null;
      _errorPassWordValue = _passwordTextEditingController.text.isEmpty
          ? 'Enter New Password'
          : null;
    });
  }

  void login() {
    Get.toNamed(VerifyCodeScreen.screenRoute);
  }
}
