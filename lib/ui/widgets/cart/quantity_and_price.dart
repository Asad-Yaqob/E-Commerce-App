import 'package:flutter/material.dart';

class QuantityAndPrice extends StatelessWidget {
  const QuantityAndPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const SizedBox(
              width: 49,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.remove),
            ),
            const SizedBox(
              width: 12,
            ),
            Text(
              '1',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              width: 12,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        const SizedBox(
          width: 12,
        ),
        Text(
          'Rs 1499',
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
