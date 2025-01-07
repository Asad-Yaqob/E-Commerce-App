import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:carousel_slider/carousel_slider.dart';

import 'package:capjewel/providers/home/carousel_slider_index.dart';
import 'package:capjewel/utils/constants/sizes.dart';


import 'package:capjewel/ui/comman/widgets/custom_container.dart';
import 'package:capjewel/ui/comman/widgets/carousel/image_carousel.dart';
import '../../../utils/constants/color.dart';

class HomeCarouselSlider extends ConsumerWidget {
  const HomeCarouselSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    final carouselIndex = ref.watch(carouselIndexProvider);
    final carouselIndexNotifier = ref.read(carouselIndexProvider.notifier);

    return Column(
      children: [
        CarouselSlider(
          items: banners.map((url) => CarouselImage(imageUrl: url)).toList(),
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, reason) =>
                carouselIndexNotifier.updateIndex(index),
          ),
        ),
        const SizedBox(
          height: AppSizes.spaceBetweenFields,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (int i = 0; i < banners.length; i++)
              CutomContainer(
                width: 20,
                height: 4,
                borderRadius: BorderRadius.circular(50),
                color: carouselIndex == i
                    ? AppColors.primaryColor
                    : AppColors.lighTextColor,
              )
          ],
        ),
      ],
    );
  }
}
