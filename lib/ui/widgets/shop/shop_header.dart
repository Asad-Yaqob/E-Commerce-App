import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'package:capjewel/ui/comman/widgets/appbar/appbar.dart';
import 'package:capjewel/utils/constants/color.dart';

class ShopHeader extends StatelessWidget {
  const ShopHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppAppBar(
      title: Text(
        'Shop',
        style: Theme.of(context).textTheme.titleLarge,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: Badge(
            label: Text(
              '0',
              style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.transparent,
            offset: const Offset(10, -5),
            child: const Icon(
              Iconsax.shopping_bag,
            ),
          ),
        ),
      ],
    );
  }
}
