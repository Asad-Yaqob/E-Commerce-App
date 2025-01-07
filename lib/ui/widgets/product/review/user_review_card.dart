import 'package:capjewel/ui/comman/widgets/rounded_container.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import 'package:capjewel/ui/widgets/product/rating/rating_bar_indicator.dart';

import 'package:capjewel/utils/constants/sizes.dart';
import 'package:capjewel/utils/constants/color.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                    backgroundImage: AssetImage('assets/logos/profile.png')),
                const SizedBox(
                  width: 18,
                ),
                Text(
                  'John Doe',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            const Icon(
              Icons.menu,
              size: 32,
            )
          ],
        ),

        const SizedBox(
          height: AppSizes.spaceBetweenFields,
        ),

        //Review
        Row(
          children: [
            const CRatingBarIndicator(rating: 4.5),
            const SizedBox(width: 8),
            Text(
              '06 Nov, 2023 ',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),

        const SizedBox(
          height: AppSizes.spaceBetweenFields,
        ),

        //Review Text
        ReadMoreText(
          'Wow never seen anyting like this you are doing awesome stuff really amazing keep it up. love it   ',
          trimLines: 3,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'show more',
          trimExpandedText: 'show less',
          moreStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
          ),
          lessStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
          ),
        ),

        const SizedBox(
          height: AppSizes.spaceBetweenFields,
        ),

        // Company Review
        CRoundedContainer(
            backgroundColor: AppColors.lighTextColor.withOpacity(0.4),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Capjewel',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        '06 Nov, 2023 ',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: AppSizes.spaceBetweenFields,
                  ),

                  //Review Text
                  ReadMoreText(
                    'Wow never seen anyting like this you are doing awesome stuff really amazing keep it up. love it   ',
                    trimLines: 3,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'show more',
                    trimExpandedText: 'show less',
                    moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryColor,
                    ),
                    lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
