import 'package:capjewel/ui/screens/auth/succes_email_sent.dart';
import 'package:capjewel/utils/constants/color.dart';
import 'package:capjewel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 38,
          bottom: 28,
          left: 20,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'forget password',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: AppSizes.spaceBetweenFields,
            ),
            Text(
              'No need to worry, just enter your email address to receive a password reset link.',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: AppColors.lighTextColor),
            ),
            const SizedBox(
              height: AppSizes.sectionHeight,
            ),
            TextField(
              decoration: InputDecoration(
                label: Text(
                  'email address',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                suffixIcon: const Icon(Icons.email),
              ),
            ),
            const SizedBox(
              height: AppSizes.sectionHeight,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SuccesEmailSent(),
                    ),
                  );
                },
                child: Text(
                  'Submit',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
