import 'package:flutter/material.dart';

import 'package:capjewel/ui/widgets/home/category_tab.dart';
import 'package:capjewel/ui/widgets/home/custom_header.dart';
import 'package:capjewel/ui/widgets/home/home_appbar.dart';
import 'package:capjewel/ui/widgets/home/home_search.dart';
import 'package:capjewel/utils/constants/sizes.dart';
import 'package:capjewel/utils/constants/color.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomHeader(
      color: AppColors.background,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // appbar here
          HomeAppBar(),

          SizedBox(
            height: AppSizes.sectionHeight,
          ),

          // search bar here
          HomeSearchField(),

          SizedBox(
            height: AppSizes.sectionHeight,
          ),

          // popular categories here
          CategoryTabbar(),

          SizedBox(
            height: AppSizes.sectionHeight + 20,
          ),
        ],
      ),
    );
  }
}
