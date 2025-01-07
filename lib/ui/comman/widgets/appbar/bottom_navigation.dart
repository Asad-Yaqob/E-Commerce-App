import 'package:flutter/material.dart';

import 'package:capjewel/providers/landingpage/landing.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.selectedIndexNotifier,
  });

  final int selectedIndex;
  final SelectedIndexNotifier selectedIndexNotifier;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: selectedIndex,
      onDestinationSelected: (value) =>
          selectedIndexNotifier.updateIndex(value),
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.home_outlined, size: 32),
          label: 'Home',
        ),
        NavigationDestination(
            icon: Icon(
              Icons.storefront_outlined,
              size: 32,
            ),
            label: 'Shop'),
        NavigationDestination(
            icon: Icon(
              Icons.shopping_bag_outlined,
              size: 32,
            ),
            label: 'Cart'),
        NavigationDestination(
            icon: Icon(
              Icons.person_outlined,
              size: 32,
            ),
            label: 'Account'),
      ],
    );
  }
}
