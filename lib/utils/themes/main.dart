import 'package:capjewel/utils/constants/color.dart';
import 'package:capjewel/utils/themes/appbar.dart';
import 'package:capjewel/utils/themes/bottom_navigation.dart';
import 'package:capjewel/utils/themes/bottom_sheet.dart';
import 'package:capjewel/utils/themes/elevated_button.dart';
import 'package:capjewel/utils/themes/input_decocartion.dart';
import 'package:flutter/material.dart';

import 'package:capjewel/utils/themes/text.dart';

class AppMainTheme {
  static ThemeData theme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.secondaryColor,
    primaryColor: AppColors.primaryColor,
    appBarTheme: AppAppbarTheme.appAppbarTheme,
    textTheme: AppTextTheme.textTheme,
    inputDecorationTheme: AppInputDecocartion.inputDecoration,
    navigationBarTheme: AppBottomNavigation.bottomNavigationBarTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.elevatedButtonTheme,
    bottomSheetTheme: AppBottomSheet.bottomSheet,
    iconTheme: const IconThemeData().copyWith(
      color: AppColors.primaryColor,
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.primaryColor,
    ),
  );
}
