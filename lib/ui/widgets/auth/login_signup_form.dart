import 'package:capjewel/ui/screens/auth/reset_password.dart';
import 'package:capjewel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
    required this.isLogin,
  });

  final bool isLogin;

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _isHide = true;
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          // Email Field
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              label: Text(
                'email address',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              suffixIcon: const Icon(Icons.mail),
            ),
          ),
          const SizedBox(
            height: AppSizes.spaceBetweenFields,
          ),

          // Password Field
          TextFormField(
            decoration: InputDecoration(
              label: Text(
                'pasword',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    _isHide = !_isHide;
                  });
                },
                child: Icon(_isHide ? Icons.visibility : Icons.visibility_off),
              ),
            ),
            obscureText: _isHide,
          ),

          const SizedBox(
            height: AppSizes.spaceBetweenFields,
          ),

          //Rememer me and Forget Password
          if (widget.isLogin)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Rememer me
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Checkbox(
                      onChanged: (value) {
                        setState(() {
                          _isChecked = !_isChecked;
                        });
                      },
                      value: _isChecked,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      visualDensity: VisualDensity.compact,
                    ),
                    Text(
                      'remember me',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                // Forget Password
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ResetPassword(),),);
                  },
                  child: Text(
                    'forget password',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                )
              ],
            ),

          const SizedBox(
            height: AppSizes.sectionHeight,
          ),

          // Login Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                widget.isLogin ? 'Login' : 'Sign Up',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
