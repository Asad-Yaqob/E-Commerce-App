import 'package:capjewel/ui/widgets/cart/quantity_and_price.dart';
import 'package:capjewel/ui/widgets/cart/cart_item.dart';
import 'package:flutter/material.dart';

class CartItems extends StatelessWidget {
  const CartItems({
    super.key,
    this.showQuantityAndPrice = true,
  });

  final bool showQuantityAndPrice;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 2,
      separatorBuilder: (_, __) => const SizedBox(
        height: 32,
      ),
      itemBuilder: (context, index) => Column(
        children: [
          const CartItem(),
          if (showQuantityAndPrice) const QuantityAndPrice(),
        ],
      ),
    );
  }
}
