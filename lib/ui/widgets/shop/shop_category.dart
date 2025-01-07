import 'package:capjewel/models/category.dart';
import 'package:flutter/material.dart';

import 'package:capjewel/utils/constants/sizes.dart';
import 'package:capjewel/data/sample_data.dart';

import 'package:capjewel/ui/widgets/shop/category_list.dart';

class ShopCategoryTab extends StatelessWidget {
  const ShopCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Category> category = [
      Category(categoryName: 'All', id: 'all'),
      ...sampleCategories,
    ];
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Discover Products',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(
            height: AppSizes.sectionHeight,
          ),

          //category list
          CategoryList(
            data: category,
          )
        ],
      ),
    );
  }
}
