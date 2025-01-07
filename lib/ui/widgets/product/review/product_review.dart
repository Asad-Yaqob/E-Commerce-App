import 'package:capjewel/ui/screens/product/product_reviews.dart';
import 'package:flutter/material.dart';

class ProductReviewWidget extends StatelessWidget {
  const ProductReviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ProductReviewsScreen(),
          ),
        );
      },
      child: Row(
        children: [
          Text(
            'Reviews  (199)',
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_right,
            size: 32,
          )
        ],
      ),
    );
  }
}
