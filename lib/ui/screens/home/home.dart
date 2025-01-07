import 'package:flutter/material.dart';

import 'package:capjewel/data/sample_data.dart';

import 'package:capjewel/utils/constants/color.dart';
import 'package:capjewel/utils/constants/sizes.dart';

import 'package:capjewel/ui/widgets/home/home_header.dart';
import 'package:capjewel/ui/widgets/home/home_product.dart';
import 'package:capjewel/ui/widgets/home/home_carousel.dart';
import 'package:capjewel/ui/comman/widgets/custome_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header part -- includes appbar, search field and horizontal tabs list.
            const HomeHeader(),

            // Body
            // Carousel slider here
            const HomeCarouselSlider(
              banners: sampleBanners,
            ),

            const SizedBox(
              height: AppSizes.spaceBetweenFields + 10,
            ),

            // Featured products here
            // heading
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: CustomeHeading(
                title: 'featured products',
                color: AppColors.black,
              ),
            ),

            // vertical products gridview
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: HomeFeaturedProducts(
                products: sampleProducts,
              ),
            ),

            const SizedBox(
              height: AppSizes.spaceBetweenFields + 10,
            )
          ],
        ),
      ),
    );
  }
}
