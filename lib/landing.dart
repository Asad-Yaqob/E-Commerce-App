import 'package:capjewel/ui/screens/cart/cart.dart';
import 'package:capjewel/ui/screens/shop/shop.dart';
import 'package:capjewel/ui/screens/profile/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:capjewel/ui/comman/widgets/appbar/bottom_navigation.dart';
import 'package:capjewel/ui/screens/home/home.dart';
import 'package:capjewel/providers/landingpage/landing.dart';

class LandingScreen extends ConsumerWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(selectedIndexProvider);
    final selectedIndexNotifier = ref.read(selectedIndexProvider.notifier);

    final screens = [
      const HomeScreen(),
      const ShopScreen(),
      const CartScreen(),
      const SettingsScreen(),
    ];

    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: AppBottomNavigationBar(
          selectedIndex: selectedIndex,
          selectedIndexNotifier: selectedIndexNotifier),
    );
  }
}
