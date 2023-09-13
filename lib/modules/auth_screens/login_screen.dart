import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:marketly_mobile/core/constant.dart';
import 'package:marketly_mobile/core/widgets/app_text_filed.dart';
import 'package:marketly_mobile/core/widgets/custom_bottom_button.dart';
import 'package:marketly_mobile/core/widgets/custom_button_login.dart';
import 'package:marketly_mobile/modules/auth_screens/signup_screen.dart';
import 'package:marketly_mobile/modules/settings/profile_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String screenRoute = '/login_screen';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailTextEditingController;
  late TextEditingController _passwordTextEditingController;
  late TapGestureRecognizer _tapGestureRecognizer;
  bool _obscure = true;

  @override
  void initState() {
    super.initState();
    _emailTextEditingController = TextEditingController();
    _passwordTextEditingController = TextEditingController();
    _tapGestureRecognizer = TapGestureRecognizer()..onTap = signupAction;
  }

  @override
  void dispose() {
    _emailTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  void signupAction() {
    Navigator.of(context).pushNamed(SignUpScreen.screenRoute);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Login', style: heading1),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 25),
        child: SingleChildScrollView(
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
                'Lets Get Started',
                style: heading1,
              ),
              const SizedBox(
                height: 11,
              ),
              Text(
                'Find the right ticket and what you want \n only in myticket',
                textAlign: TextAlign.center,
                style: paragraf1,
              ),
              const SizedBox(height: 19),
              AppTextFiled(
                keyboard: TextInputType.emailAddress,
                hint: 'Email',
                paddingBottom: 19,
                controller: _emailTextEditingController,
                minLines: null,
                maxLines: null,
                expands: true,
                constraints: 70,
                prefix: Icons.mail_outline,
              ),
              AppTextFiled(
                keyboard: TextInputType.visiblePassword,
                hint: 'Password',
                suffix: _obscure
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                prefix: Icons.lock_outline,
                onPress: () {
                  setState(() {
                    _obscure = !_obscure;
                  });
                },
                controller: _passwordTextEditingController,
                obscure: _obscure,
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
              CustomBottomButton(
                  title: 'Login',
                  ontap: () {
                    performLogin();
                  }),
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
              RichText(
                text: TextSpan(
                    text: 'Dont Have Account? ',
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color(0xFF777B8A),
                    ),
                    children: [
                      TextSpan(
                          recognizer: _tapGestureRecognizer,
                          text: ' Sign Up',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: kMaincolor1))
                    ]),
              ),
            ],
          ),
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
    if (_emailTextEditingController.text.isNotEmpty &&
        _passwordTextEditingController.text.isNotEmpty) {
      return true;
    }
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        duration: Duration(seconds: 3),
        backgroundColor: Color(0xFFFF4343),
        content: Text('Enter Required Data')));
    return false;
  }

  void login() {
    Navigator.of(context).pushNamed(ProfileScreen.screenRoute);
  }
}
