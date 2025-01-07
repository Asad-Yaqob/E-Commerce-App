import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'package:capjewel/ui/screens/cart/cart.dart';
import 'package:capjewel/ui/comman/widgets/appbar/appbar.dart';
import 'package:capjewel/utils/constants/color.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppAppBar(
      title: Text(
        'capjewel',
        style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              color: AppColors.black,
            ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CartScreen()));
            },
            child: Badge(
              label: Text(
                '0',
                style: TextStyle(
                    color: AppColors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              backgroundColor: Colors.transparent,
              offset: const Offset(10, -5),
              child: Icon(
                Iconsax.shopping_bag,
                color: AppColors.black,
              ),
            ),
          ),
        )
      ],
    );
  }
}
