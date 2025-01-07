import 'package:flutter/material.dart';

import 'package:capjewel/data/sample_data.dart';
import 'package:capjewel/models/product.dart';

import 'package:capjewel/utils/constants/color.dart';
import 'package:capjewel/utils/constants/sizes.dart';
import 'package:readmore/readmore.dart';

class ProductInformation extends StatelessWidget {
  const ProductInformation({
    super.key,
    required this.data,
  });

  final Product data;

  @override
  Widget build(BuildContext context) {
    final category =
        sampleCategories.firstWhere((c) => c.categoryId == data.categoryId);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Price Section
        Row(
          children: [
            Text(
              'Rs ${data.discountedPrice.toString()}',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  decoration: TextDecoration.lineThrough,
                  color: AppColors.lighTextColor,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              width: 14,
            ),
            Text(
              'Rs ${data.price.toString()}',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
        const SizedBox(
          height: AppSizes.spaceBetweenFields,
        ),

        // Product Name
        Text(
          data.productName,
          style: Theme.of(context).textTheme.titleMedium,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: AppSizes.spaceBetweenFields,
        ),

        // Category
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Category',
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: AppSizes.spaceBetweenFields,
            ),
            Text(
              category.categoryName,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
        const SizedBox(
          height: AppSizes.spaceBetweenFields,
        ),

        // Description
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Description',
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: AppSizes.spaceBetweenFields,
            ),
            ReadMoreText(
              data.subDetail,
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

        const SizedBox(
          height: AppSizes.sectionHeight,
        ),
        const Divider(),
      ],
    );
  }
}
