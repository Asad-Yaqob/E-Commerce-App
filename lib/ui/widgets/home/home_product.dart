import 'package:flutter/material.dart';

import 'package:capjewel/models/product.dart';
import 'package:capjewel/ui/screens/product/product_detail.dart';
import 'package:capjewel/ui/comman/widgets/product/product_card.dart';

class HomeFeaturedProducts extends StatelessWidget {
  const HomeFeaturedProducts({
    super.key,
    required this.products,
  });

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return products.isEmpty
        ? Center(
            child: Text(
              "No products found in this category.",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          )
        : SizedBox(
            child: GridView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.6,
              ),
              itemBuilder: (context, index) => ProductCard(
                onPressedCard: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ProductDetailScreen(data: products[index]),
                      ));
                },
                price: products[index].price,
                discountedPrice: products[index].discountedPrice,
                imageUrl: products[index].cardImage,
                productName: products[index].productName,
              ),
            ),
          );
  }
}
