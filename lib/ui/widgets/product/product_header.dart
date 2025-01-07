import 'package:capjewel/utils/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:capjewel/models/product.dart';
import 'package:capjewel/providers/home/carousel_slider_index.dart';

import 'package:capjewel/ui/comman/widgets/appbar/appbar.dart';
import 'package:capjewel/ui/widgets/product/product_image.dart';

import 'package:capjewel/utils/constants/sizes.dart';
import 'package:capjewel/utils/helpers/helper_methods.dart';

class ProductHeader extends ConsumerWidget {
  const ProductHeader({
    super.key,
    required this.data,
  });

  final Product data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(carouselIndexProvider);
    final indexNotifier = ref.read(carouselIndexProvider.notifier);
    final isImages = currentIndex < data.images.length;

    return Column(
      children: [
        Stack(
          children: [
            // Appbar
            AppAppBar(
              title: Text(
                'Product Details',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              isLeading: true,
              resetIndex: indexNotifier.resetIndex,
            ),

            // Product Image Carousel
            // Large Prodcut Image
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: isImages
                  ? Image.asset(
                      data.images[currentIndex],
                      height: 200,
                      width: HelperMethods.screenWidth(context),
                    )
                  : Container(
                      height: 200,
                      width: HelperMethods.screenWidth(context),
                      color: AppColors.lighTextColor.withOpacity(0.2),
                      child: const Center(child: Text('No Image Found :(.')),
                    ),
            ),
          ],
        ),
        const SizedBox(
          height: AppSizes.spaceBetweenFields,
        ),

        // Thumbnail images in a row
        isImages
            ? SizedBox(
                height: 60,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => ProductDetailImage(
                    imageUrl: data.images[index],
                    index: index,
                  ),
                  separatorBuilder: (_, __) => const SizedBox(
                    width: 8,
                  ),
                  itemCount: data.images.length,
                ),
              )
            : const SizedBox(),

        const SizedBox(
          height: AppSizes.sectionHeight,
        )
      ],
    );
  }
}
