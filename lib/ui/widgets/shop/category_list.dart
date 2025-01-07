import 'package:capjewel/models/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:capjewel/providers/product/filter_product.dart';
import 'package:capjewel/utils/constants/color.dart';

class CategoryList extends ConsumerWidget {
  const CategoryList({
    super.key,
    required this.data,
  });

  final List<Category> data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeCategory = ref.watch(activeCategoryProvider);
    final filterCategory = ref.read(filterProductsProvider.notifier);
    final categoryNotifier = ref.read(activeCategoryProvider.notifier);

    return SizedBox(
      height: 30,
      child: ListView.builder(
        itemCount: data.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 6),
            child: GestureDetector(
                onTap: () {
                  filterCategory.filterByCategory(data[index].categoryId);
                  categoryNotifier.setActiveCategory(index);
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: activeCategory == index
                        ? AppColors.primaryColor
                        : AppColors.lighTextColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    data[index].categoryName,
                    style: TextStyle(
                        color: activeCategory == index
                            ? AppColors.secondaryColor
                            : AppColors.black),
                  ),
                )),
          );
        },
      ),
    );
  }
}
