import 'package:capjewel/utils/constants/color.dart';
import 'package:flutter/material.dart';

class AppBottomNavigation {
  static NavigationBarThemeData bottomNavigationBarTheme =
      NavigationBarThemeData(
          height: 80,
          elevation: 0,
          backgroundColor: AppColors.secondaryColor,
          iconTheme: WidgetStateProperty.resolveWith((states) {
            if (!states.contains(WidgetState.selected)) {
              return IconThemeData(color: AppColors.primaryColor);
            }

            return IconThemeData(color: AppColors.black);
          }));
}
