import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketly_mobile/core/constant.dart';
import 'package:marketly_mobile/core/widgets/app_text_filed.dart';
import 'package:marketly_mobile/core/widgets/custom_bottom_button.dart';
import 'package:marketly_mobile/core/widgets/custom_button_login.dart';
import 'package:marketly_mobile/modules/catogories/search_screen.dart';
import 'package:marketly_mobile/modules/home/home_screen.dart';

class SignUpScreen extends StatefulWidget {
  static const String screenRoute = '/signUpScreen';

  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late TextEditingController _emailTextEditingController;
  late TextEditingController _passwordTextEditingController;
  late TextEditingController _nameTextEditingController;
  late TextEditingController _phoneTextEditingController;
  bool _obscure = true;
  String? _errorEmailValue;
  String? _errorPassWordValue;
  String? _errorNameValue;

  @override
  void initState() {
    super.initState();
    _emailTextEditingController = TextEditingController();
    _passwordTextEditingController = TextEditingController();
    _nameTextEditingController = TextEditingController();
    _phoneTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _passwordTextEditingController.dispose();
    _emailTextEditingController.dispose();
    _nameTextEditingController.dispose();
    _phoneTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text('SignUp', style: heading1),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 25),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsetsDirectional.only(bottom: 16),
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(colors: [kMaincolor1, kMaincolor2]),
                    borderRadius: const BorderRadiusDirectional.only(
                        bottomStart: Radius.circular(20),
                        topEnd: Radius.circular(20))),
                child: const Image(
                  image: AssetImage('images/logo2.png'),
                ),
              ),
              Text(
                'Create an account',
                style: heading1,
              ),
              const SizedBox(
                height: 9,
              ),
              AppTextFiled(
                hint: 'Name',
                controller: _nameTextEditingController,
                keyboard: TextInputType.text,
                errorText: _errorNameValue,
                paddingBottom: 12,
                prefix: const Icon(Icons.mode_edit_outline),
                minLines: null,
                maxLines: null,
                expands: true,
                constraints: _errorNameValue != null ? 81 : 56,
              ),
              AppTextFiled(
                keyboard: TextInputType.emailAddress,
                hint: 'Email',
                errorText: _errorEmailValue,
                paddingBottom: 12,
                controller: _emailTextEditingController,
                minLines: null,
                maxLines: null,
                expands: true,
                constraints: _errorEmailValue != null ? 81 : 56,
                prefix: const Icon(Icons.mail_outline),
              ),
              AppTextFiled(
                hint: 'Phone',
                controller: _phoneTextEditingController,
                keyboard: TextInputType.number,
                minLines: null,
                maxLines: null,
                expands: true,
                constraints: 56,
                paddingBottom: 12,
                prefix:const Icon( Icons.phone_outlined),
              ),
              AppTextFiled(
                keyboard: TextInputType.visiblePassword,
                hint: 'Password',
                constraints: _errorPassWordValue != null ? 81 : 56,
                maxLines: 1,
                minLines: 1,
                expands: false,
                errorText: _errorPassWordValue,
                suffix: _obscure
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                prefix:const Icon (Icons.lock_outline),
                onPress: () {
                  setState(() {
                    _obscure = !_obscure;
                  });
                },
                controller: _passwordTextEditingController,
                obscure: _obscure,
              ),
              const SizedBox(
                height: 12,
              ),
              CustomBottomButton(
                  title: 'SignUp',
                  ontap: () {
                    performLogin();
                  }),
              const SizedBox(
                height: 10,
              ),
              Text('Or',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: bottun2)),
              const SizedBox(
                height: 10,
              ),
              const CustomButtonLogin(
                  image: 'images/Googleimage.png', text: 'Sign With Google'),
              const CustomButtonLogin(
                image: 'images/iphoneimage.png',
                text: 'Sign With Apple',
                marginBottom: 0,
              ),
              const SizedBox(
                height: 10,
              ),

              const Text(
                textAlign: TextAlign.center,
                'By sign in, accept te terms of service,\n Guidelines and have read Privacy Policy.',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF777B8A)),
              )
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
    if (_emailTextEditingController.text.isNotEmpty &&
        _passwordTextEditingController.text.isNotEmpty &&
        _nameTextEditingController.text.isNotEmpty) {
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
      _errorPassWordValue =
          _passwordTextEditingController.text.isEmpty ? 'Enter Password' : null;
      _errorNameValue =
          _nameTextEditingController.text.isEmpty ? 'Enter Your Name' : null;
    });
  }

  void login() {
   Get.to(const HomeScreen());
  }
}
