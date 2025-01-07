import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:capjewel/providers/home/carousel_slider_index.dart';
import 'package:capjewel/utils/constants/color.dart';

class ProductDetailImage extends ConsumerWidget {
  const ProductDetailImage({
    super.key,
    required this.imageUrl,
    required this.index,
  });

  final String imageUrl;
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(carouselIndexProvider);
    final indexNotifier = ref.read(carouselIndexProvider.notifier);
    return GestureDetector(
      onTap: () {
        indexNotifier.updateIndex(index);
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.lighTextColor.withOpacity(0.2),
          border: Border.all(
            color: currentIndex == index
                ? AppColors.primaryColor
                : Colors.transparent,
            width: 2,
          ),
        ),
        width: 60,
        child: Image.asset(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
