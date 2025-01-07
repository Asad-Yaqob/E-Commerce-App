import 'package:flutter/material.dart';

class AppElevatedButtonTheme {
  AppElevatedButtonTheme._();

  static ElevatedButtonThemeData elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFFfd9800),
      foregroundColor: Colors.white,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
    ),
  );
}
