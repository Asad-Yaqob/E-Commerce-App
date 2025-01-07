import 'package:flutter/material.dart';

import 'package:capjewel/data/sample_data.dart';

import 'package:capjewel/ui/comman/widgets/custome_heading.dart';
import 'package:capjewel/ui/widgets/home/horizontal_tab.dart';
import 'package:capjewel/utils/constants/color.dart';
import 'package:capjewel/utils/constants/sizes.dart';

class CategoryTabbar extends StatelessWidget {
  const CategoryTabbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Categories heading
          CustomeHeading(
            title: 'popular categories',
            color: AppColors.black,
          ),

          const SizedBox(
            height: AppSizes.sectionHeight - 10,
          ),

          //category list
          HomeCategories(
            data: sampleCategories,
          )
        ],
      ),
    );
  }
}
