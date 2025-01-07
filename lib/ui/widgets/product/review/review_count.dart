import 'package:flutter/material.dart';

class ProductReviewsCount extends StatelessWidget {
  const ProductReviewsCount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(
          Icons.star,
          size: 24,
        ),
        const SizedBox(width: 12),
        Text(
          '4.5',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          '(122)',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
