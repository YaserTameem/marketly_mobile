import 'package:flutter/material.dart';
import 'package:marketly_mobile/core/constant.dart';
import 'package:marketly_mobile/core/widgets/app_text_filed.dart';
import 'package:marketly_mobile/core/widgets/custom_bottom_button.dart';
import 'package:marketly_mobile/core/widgets/custom_button_login.dart';

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
  bool _obscure = true;

  @override
  void initState() {
    super.initState();
    _emailTextEditingController = TextEditingController();
    _passwordTextEditingController = TextEditingController();
    _nameTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _passwordTextEditingController.dispose();
    _emailTextEditingController.dispose();
    _nameTextEditingController.dispose();
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
                height: 19,
              ),
              AppTextFiled(
                hint: 'Name',
                controller: _nameTextEditingController,
                keyboard: TextInputType.text,
                paddingBottom: 12,
                prefix: Icons.mode_edit_outline,
              ),
              AppTextFiled(
                hint: 'Email',
                controller: _emailTextEditingController,
                keyboard: TextInputType.emailAddress,
                paddingBottom: 12,
                prefix: Icons.mail_outline,
              ),
              AppTextFiled(
                hint: 'Password',
                obscure: _obscure,
                controller: _passwordTextEditingController,
                keyboard: TextInputType.visiblePassword,
                prefix: Icons.lock_outline,
                suffix: _obscure
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                onPress: () {
                  setState(() {
                    _obscure = !_obscure;
                  });
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: bottun2),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomBottomButton(title: 'SignUp', ontap: () {}),
              const SizedBox(
                height: 19,
              ),
              Text('Or',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: bottun2)),
              const SizedBox(
                height: 12,
              ),
              const CustomButtonLogin(
                  image: 'images/Googleimage.png', text: 'Sign With Google'),
              const CustomButtonLogin(
                image: 'images/iphoneimage.png',
                text: 'Sign With Apple',
                marginBottom: 0,
              ),
              const SizedBox(
                height: 19,
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
}
