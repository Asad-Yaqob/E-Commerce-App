import 'package:capjewel/utils/helpers/helper_methods.dart';
import 'package:flutter/material.dart';

import 'package:capjewel/utils/constants/color.dart';
import 'package:capjewel/utils/constants/sizes.dart';
import 'package:capjewel/utils/constants/image_strings.dart';
import 'package:capjewel/ui/comman/styles/custom_padding.dart';
import 'package:capjewel/ui/screens/auth/login_singup.dart';

class SuccesEmailSent extends StatelessWidget {
  const SuccesEmailSent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: AppCustomPadding.allPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: const AssetImage(ImageStrings.sendMail),
                  width: HelperMethods.screenWidth(context) * 0.6,
                ),
                const SizedBox(
                  height: AppSizes.sectionHeight,
                ),
                Text(
                  'you’re one step away!',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: AppSizes.spaceBetweenFields,
                ),
                Text(
                  'A password reset link has been sent successfully to provided email address.',
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: AppColors.lighTextColor,
                      ),
                ),
                const SizedBox(
                  height: AppSizes.sectionHeight,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginSingupScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Go Back',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
