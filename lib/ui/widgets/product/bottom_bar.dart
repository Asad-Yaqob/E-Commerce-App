import 'package:flutter/material.dart';

class ProductBottomBar extends StatelessWidget {
  const ProductBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
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
              const SizedBox(
                width: 12,
              ),
            ],
          ),
          const SizedBox(
            width: 16,
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 15,
                ),
              ),
              child: const Text('Add to Cart'))
        ],
      ),
    );
  }
}
