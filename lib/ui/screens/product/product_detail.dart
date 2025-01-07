import 'package:capjewel/ui/widgets/product/review/product_review.dart';
import 'package:flutter/material.dart';

import 'package:capjewel/models/product.dart';
import 'package:capjewel/utils/constants/sizes.dart';

import 'package:capjewel/ui/widgets/product/bottom_bar.dart';
import 'package:capjewel/ui/widgets/product/product_info.dart';
import 'package:capjewel/ui/widgets/product/review/review_count.dart';
import 'package:capjewel/ui/widgets/product/product_header.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key, required this.data});

  final Product data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const ProductBottomBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header includes appbar, main image and horizontal images list view
            ProductHeader(data: data),

            // Body
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
              child: Column(
                children: [
                  // Product rating and review count.
                  const ProductReviewsCount(),

                  const SizedBox(
                    height: AppSizes.sectionHeight - 15,
                  ),

                  // Product name, price, detail
                  ProductInformation(data: data),

                  const SizedBox(
                    height: AppSizes.spaceBetweenFields,
                  ),

                  const ProductReviewWidget(),

                  const SizedBox(
                    height: AppSizes.spaceBetweenFields,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
