import 'package:capjewel/providers/auth/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:capjewel/ui/screens/auth/reset_password.dart';

import 'package:capjewel/utils/constants/sizes.dart';
import 'package:capjewel/utils/validations/login_signup_validation.dart';

class LoginForm extends ConsumerWidget {
  const LoginForm({
    super.key,
    required this.isLogin,
  });

  final bool isLogin;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final authState = ref.watch(authProvider);
    final authController = ref.read(authProvider.notifier);

    final isHide = authState.isHide;
    final isChecked = authState.isChecked;

    return Form(
      key: authState.formKey,
      child: Column(
        children: [
          // Email Field
          TextFormField(
            controller: authState.emailController,
            decoration: InputDecoration(
              label: Text(
                'email address',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              suffixIcon: const Icon(Icons.mail),
            ),
            validator: (value) => LoginSignupValidation.validateEmail(value),
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(
            height: AppSizes.spaceBetweenFields,
          ),

          // Password Field
          TextFormField(
            controller: authState.passwordController,
            decoration: InputDecoration(
              label: Text(
                'pasword',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              suffixIcon: GestureDetector(
                onTap: () {
                  authController.togglePasswordVisibility();
                },
                child: Icon(isHide ? Icons.visibility : Icons.visibility_off),
              ),
            ),
            validator: (value) => LoginSignupValidation.validatePassword(value),
            obscureText: isHide,
          ),

          const SizedBox(
            height: AppSizes.spaceBetweenFields,
          ),

          //Rememer me and Forget Password
          if (isLogin)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Rememer me
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Checkbox(
                      onChanged: (value) {
                        authController.toggleRememberMe();
                      },
                      value: isChecked,
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ResetPassword(),
                      ),
                    );
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
              onPressed: () => isLogin
                  ? authController.loginUserWithEmailAndPassword()
                  : authController.registerUserWithEmailAndPassword(),
              child: authState.isLoading
                  ? const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularProgressIndicator(),
                        SizedBox(
                          width: 16,
                        ),
                        Text('Loading...')
                      ],
                    )
                  : Text(
                      isLogin ? 'Login' : 'Sign Up',
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
