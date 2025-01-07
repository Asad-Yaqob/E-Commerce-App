import 'package:capjewel/data/sample_data.dart';
import 'package:capjewel/ui/comman/widgets/appbar/appbar.dart';
import 'package:capjewel/ui/widgets/home/home_product.dart';
import 'package:capjewel/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductByCategoryScreen extends StatelessWidget {
  const ProductByCategoryScreen(
      {super.key, required this.categoryId, required this.categoryName});

  final String categoryId;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    final product =
        sampleProducts.where((p) => p.categoryId == categoryId).toList();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppAppBar(
              title: Text(
                'Shop By Category',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              isLeading: true,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    categoryName,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  
                  const SizedBox(height: AppSizes.spaceBetweenFields),

                  Text(
                    'Showing all the product for the selected category:',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),

                  const SizedBox(height: AppSizes.spaceBetweenFields),

                  if (product.isEmpty)
                    Center(
                      child: Text(
                        "No products found in this category.",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),

                  HomeFeaturedProducts(products: product),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
