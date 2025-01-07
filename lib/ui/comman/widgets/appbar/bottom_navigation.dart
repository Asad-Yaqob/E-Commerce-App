import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
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
          icon: Icon(Iconsax.home, size: 32),
          label: 'Home',
        ),
        NavigationDestination(
            icon: Icon(
              Iconsax.shop,
              size: 32,
            ),
            label: 'Shop'),
        NavigationDestination(
            icon: Icon(
              Iconsax.shopping_bag,
              size: 32,
            ),
            label: 'Cart'),
        NavigationDestination(
            icon: Icon(
              Iconsax.personalcard,
              size: 32,
            ),
            label: 'Account'),
      ],
    );
  }
}
