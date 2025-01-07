import 'package:capjewel/ui/comman/widgets/custome_heading.dart';
import 'package:capjewel/utils/constants/color.dart';
import 'package:flutter/material.dart';

class BillingPaymentSection extends StatelessWidget {
  const BillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomeHeading(
          title: 'Payment Method',
          color: AppColors.black,
        ),
        const SizedBox(height: 24),
        Row(
          children: [
            const Image(
              image: AssetImage('assets/logos/cash-on.png'),
              width: 40,
              height: 40,
            ),
            const SizedBox(width: 12),
            Text(
              'cash on delivery',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        )
      ],
    );
  }
}
