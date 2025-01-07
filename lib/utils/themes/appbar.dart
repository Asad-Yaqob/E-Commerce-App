import 'package:capjewel/utils/constants/color.dart';
import 'package:flutter/material.dart';

class AppAppbarTheme {
  AppAppbarTheme._();

  static AppBarTheme appAppbarTheme = const AppBarTheme().copyWith(
      iconTheme: IconThemeData(
    color: AppColors.primaryColor,
  ));
}
