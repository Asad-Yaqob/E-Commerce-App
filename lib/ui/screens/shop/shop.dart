import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:capjewel/providers/product/filter_product.dart';
import 'package:capjewel/utils/constants/sizes.dart';

import 'package:capjewel/ui/widgets/home/home_product.dart';
import 'package:capjewel/ui/widgets/shop/shop_category.dart';
import 'package:capjewel/ui/widgets/shop/shop_header.dart';

class ShopScreen extends ConsumerWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filterProducts = ref.watch(filterProductsProvider);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Appbar
            const ShopHeader(),

            // Categories
            const ShopCategoryTab(),

            const SizedBox(
              height: AppSizes.spaceBetweenFields,
            ),

            // Prodducts list here.
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: HomeFeaturedProducts(
                products: filterProducts,
              ),
            )
          ],
        ),
      ),
    );
  }
}
