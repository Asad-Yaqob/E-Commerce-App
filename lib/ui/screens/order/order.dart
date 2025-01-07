import 'package:capjewel/ui/comman/widgets/appbar/appbar.dart';
import 'package:capjewel/ui/widgets/order/order_item_list.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title:
            Text('Your Orders', style: Theme.of(context).textTheme.titleLarge),
        isLeading: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: OrderItemList(),
      ),
    );
  }
}
