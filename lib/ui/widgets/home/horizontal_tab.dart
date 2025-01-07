import 'package:capjewel/ui/screens/product/product_by_category.dart';
import 'package:flutter/material.dart';

import 'package:capjewel/utils/constants/color.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
    required this.data,
  });

  final List data;

  @override
  Widget build(BuildContext context) {
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductByCategoryScreen(
                        categoryId: data[index].categoryId,
                        categoryName: data[index].categoryName,
                      ),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: AppColors.lighTextColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    data[index].categoryName,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                )),
          );
        },
      ),
    );
  }
}
