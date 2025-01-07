import 'package:flutter/material.dart';

import 'package:capjewel/ui/widgets/product/review/user_review_card.dart';
import 'package:capjewel/ui/widgets/product/rating/rating_bar_indicator.dart';
import 'package:capjewel/ui/widgets/product/rating/overall_product_rating.dart';
import 'package:capjewel/ui/comman/widgets/appbar/appbar.dart';
import 'package:capjewel/utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: Text(
          'Product Reviews',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        isLeading: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ratings and Reviews are verified and are from people who use the same type of device that you use.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: AppSizes.sectionHeight,
              ),

              // Overall product Rating
              const OverallProductRating(),
              const CRatingBarIndicator(rating: 3.5),
              Text('12,456', style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(
                height: AppSizes.sectionHeight,
              ),

              // User review list
              const UserReviewCard(),
              const SizedBox(
                height: AppSizes.sectionHeight,
              ),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
