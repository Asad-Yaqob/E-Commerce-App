import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.grey.withOpacity(0.5),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Row 1
          Row(
            children: [
              // shipping icon
              const Icon(Icons.local_shipping_outlined),
              const SizedBox(
                width: 12,
              ),

              // Status and date
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Processing',
                        style: Theme.of(context).textTheme.titleLarge),
                    const SizedBox(height: 8),
                    Text('02 Jan 2025',
                        style: Theme.of(context).textTheme.bodyLarge),
                  ],
                ),
              ),

              // arrow icon
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_right,
                  size: 36,
                ),
              )
            ],
          ),

          const SizedBox(
            height: 16,
          ),

          // Row 2
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    // shipping icon
                    const Icon(Icons.label_outline),
                    const SizedBox(
                      width: 12,
                    ),

                    // Status and date
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Order',
                              style: Theme.of(context).textTheme.titleSmall),
                          const SizedBox(height: 4),
                          Text('#00001',
                              style: Theme.of(context).textTheme.bodyLarge),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    // shipping icon
                    const Icon(Icons.calendar_today),
                    const SizedBox(
                      width: 12,
                    ),

                    // Status and date
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Shipping Date',
                              style: Theme.of(context).textTheme.titleSmall),
                          const SizedBox(height: 4),
                          Text('09 Jan 2025',
                              style: Theme.of(context).textTheme.bodyLarge),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
