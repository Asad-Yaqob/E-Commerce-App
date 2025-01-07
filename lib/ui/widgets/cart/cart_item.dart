import 'package:capjewel/utils/constants/color.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            height: 60,
            decoration:
                BoxDecoration(color: AppColors.lighTextColor.withOpacity(0.2)),
            child: Image.asset(
              'assets/products/necklace-1.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  'Beautiful Necklace',
                  style: Theme.of(context).textTheme.titleMedium,
                  maxLines: 2,
                ),
              ),
              // const SizedBox(
              //   height: 12,
              // ),
              Text(
                'Necklace',
                style: Theme.of(context).textTheme.bodyLarge,
                maxLines: 1,
              ),
            ],
          ),
        )
      ],
    );
  }
}
