import 'package:capjewel/utils/constants/color.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    this.backgroundColor,
    this.shadow,
    required this.imageUrl,
    required this.productName,
    required this.price,
    required this.discountedPrice,
    required this.onPressedCard,
  });

  final Color? backgroundColor;
  final List<BoxShadow>? shadow;
  final String imageUrl, productName;
  final int price, discountedPrice;
  final void Function() onPressedCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressedCard,
      child: Column(
        children: [
          // Thumbnail
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: backgroundColor ?? Colors.grey.withOpacity(0.1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image(
              image: AssetImage(
                imageUrl,
              ),
              fit: BoxFit.fill,
            ),
          ),

          const SizedBox(
            height: 14,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Text(
                  productName,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(
                      'Rs ${discountedPrice.toString()}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          decoration: TextDecoration.lineThrough,
                          color: AppColors.lighTextColor,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      width: 14,
                    ),
                    Text(
                      'Rs ${price.toString()}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
