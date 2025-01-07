import 'package:flutter/material.dart';

import 'package:capjewel/ui/widgets/checkout/billing_detail_form.dart';
import 'package:capjewel/utils/constants/sizes.dart';

class BillingDetails extends StatelessWidget {
  const BillingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Billing', style: Theme.of(context).textTheme.titleLarge),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Please provide the following information to continue...',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: AppSizes.spaceBetweenFields),
              const BillingDetailForm(),
            ],
          ),
        ),
      ),
    );
  }
}
