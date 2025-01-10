import 'package:flutter/material.dart';

// import 'package:capjewel/landing.dart';
import 'package:capjewel/utils/constants/sizes.dart';

import 'package:capjewel/ui/widgets/auth/login_signup_form.dart';
import 'package:capjewel/ui/widgets/auth/login_signup_header.dart';
import 'package:capjewel/ui/widgets/auth/login_singup_button.dart';
import 'package:capjewel/ui/comman/styles/custom_padding.dart';

class LoginSingupScreen extends StatefulWidget {
  const LoginSingupScreen({super.key});

  @override
  State<LoginSingupScreen> createState() => _LoginSingupScreenState();
}

class _LoginSingupScreenState extends State<LoginSingupScreen> {
  bool _isLogin = true;

  void _toggleToSignUp() {
    setState(() {
      _isLogin = !_isLogin;
    });
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => const LandingScreen(),
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppCustomPadding.allPadding,
          child: Column(
            children: [
              //Header
              LoginHeader(
                isLogin: _isLogin,
              ),

              const SizedBox(
                height: AppSizes.sectionHeight,
              ),

              // Form
              LoginForm(
                isLogin: _isLogin,
              ),

              const SizedBox(
                height: AppSizes.sectionHeight,
              ),

              // Sign Up Button
              LoginSingupFooter(
                isLogin: _isLogin,
                onPressedLoginOrSignUp: _toggleToSignUp,
              )
            ],
          ),
        ),
      ),
    );
  }
}
