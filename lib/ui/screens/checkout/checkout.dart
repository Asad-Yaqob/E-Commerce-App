import 'package:capjewel/ui/screens/checkout/billing.dart';
import 'package:flutter/material.dart';

import 'package:capjewel/ui/widgets/checkout/billing_amount_section.dart';
import 'package:capjewel/ui/comman/widgets/appbar/appbar.dart';
import 'package:capjewel/ui/widgets/cart/cart_items.dart';
import 'package:capjewel/ui/widgets/checkout/billing_payment_section.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: Text('Checkout', style: Theme.of(context).textTheme.titleLarge),
        isLeading: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Show items to be purchased
              const CartItems(
                showQuantityAndPrice: false,
              ),
              const SizedBox(height: 24),

              Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Pricing
                    BillingAmountSection(),

                    // Divider
                    Divider(),
                    SizedBox(height: 24),

                    // Payment
                    BillingPaymentSection(),
                    SizedBox(height: 24),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Continue to Billing Details Button
              SizedBox(
                width: double.infinity, // Make the button full-width
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BillingDetails(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Continue to Billing Details',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
