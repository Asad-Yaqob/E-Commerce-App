import 'package:flutter/material.dart';

import 'package:capjewel/ui/screens/checkout/checkout.dart';
import 'package:capjewel/ui/widgets/cart/cart_items.dart';



class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart', style: Theme.of(context).textTheme.titleLarge),
      ),
      body: const Padding(padding: EdgeInsets.all(24), child: CartItems()),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
        child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const CheckoutScreen(),
              ));
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 18),
            ),
            child: const Text(
              'Checkout \$ 14500',
            )),
      ),
    );
  }
}
