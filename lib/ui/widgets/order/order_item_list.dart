import 'package:capjewel/ui/widgets/order/order_item.dart';
import 'package:flutter/material.dart';

class OrderItemList extends StatelessWidget {
  const OrderItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
        margin: const EdgeInsets.only(bottom: 16),
        child: const OrderItem(),
      ),
      Container(
        margin: const EdgeInsets.only(bottom: 16),
        child: const OrderItem(),
      ),
      Container(
        margin: const EdgeInsets.only(bottom: 16),
        child: const OrderItem(),
      ),
      Container(
        margin: const EdgeInsets.only(bottom: 16),
        child: const OrderItem(),
      ),
    ]);
  }
}
