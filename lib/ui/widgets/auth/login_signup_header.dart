import 'package:capjewel/utils/constants/image_strings.dart';
import 'package:capjewel/utils/constants/sizes.dart';
import 'package:capjewel/utils/helpers/helper_methods.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
    required this.isLogin,
  });

  final bool isLogin;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: const AssetImage(ImageStrings.favIcon),
          width: HelperMethods.screenWidth(context) * 0.4,
        ),
        const SizedBox(
          height: AppSizes.spaceBetweenFields,
        ),
        Text(
          isLogin ? 'LOGIN' : 'REGISTER',
          style: Theme.of(context).textTheme.headlineLarge,
        )
      ],
    );
  }
}
