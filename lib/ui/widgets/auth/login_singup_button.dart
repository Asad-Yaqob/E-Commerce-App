import 'package:flutter/material.dart';

class LoginSingupFooter extends StatelessWidget {
  const LoginSingupFooter({
    super.key,
    required this.isLogin,
    required this.onPressedLoginOrSignUp,
  });

  final bool isLogin;
  final void Function() onPressedLoginOrSignUp;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          isLogin ? "Don't have an account? " : "Alread a memeber?",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        TextButton(
          onPressed: onPressedLoginOrSignUp,
          child: Text(
            isLogin ? 'Sing Up' : 'Login',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
