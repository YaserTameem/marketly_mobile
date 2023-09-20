import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketly_mobile/core/constant.dart';
import 'package:marketly_mobile/core/widgets/app_text_filed.dart';
import 'package:marketly_mobile/core/widgets/custom_bottom_button.dart';
import 'package:marketly_mobile/modules/auth_screens/new_password_screen.dart';

class ForgotPassWordScreen extends StatefulWidget {
  static const String screenRoute = '/forgotPassWordScreen';

  const ForgotPassWordScreen({super.key});

  @override
  State<ForgotPassWordScreen> createState() => _ForgotPassWordScreenState();
}

class _ForgotPassWordScreenState extends State<ForgotPassWordScreen> {
  late TextEditingController _emailTextEditingController;
  String? _errorEmailValue;

  @override
  void initState() {
    super.initState();
    _emailTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _emailTextEditingController.dispose();
    super.dispose();
  }

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
          'Forgot Password?',
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
            Text(
              textAlign: TextAlign.center,
              'Type your email, we will send you \n verivication code via email',
              style: paragraf1,
            ),
            const SizedBox(
              height: 30,
            ),
            AppTextFiled(
              keyboard: TextInputType.emailAddress,
              hint: 'Email',
              errorText: _errorEmailValue,
              paddingBottom: 19,
              controller: _emailTextEditingController,
              minLines: null,
              maxLines: null,
              expands: true,
              constraints: _errorEmailValue != null ? 95 : 70,
              prefix: const Icon(Icons.mail_outline),
            ),
            const SizedBox(height: 30,),
            CustomBottomButton(
                title: 'Sign In',
                ontap: () {
                  performLogin();
                }),
          ],
        ),
      ),
    );
  }

  void performLogin() {
    if (checkData()) {
      login();
    }
  }

  bool checkData() {
    if (_emailTextEditingController.text.isNotEmpty) {
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
      _errorEmailValue =
          _emailTextEditingController.text.isEmpty ? 'Enter Email' : null;
    });
  }

  void login() {
   Get.to(const NewPassWordScreen());
  }
}
