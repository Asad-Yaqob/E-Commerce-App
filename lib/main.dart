import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:capjewel/landing.dart';
import 'package:capjewel/utils/themes/main.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CapJewel',
      theme: AppMainTheme.theme,
      home: const LandingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
