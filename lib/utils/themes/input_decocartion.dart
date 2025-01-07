import 'package:capjewel/utils/constants/color.dart';
import 'package:flutter/material.dart';

class AppInputDecocartion {
  AppInputDecocartion._();

  static InputDecorationTheme inputDecoration =
      const InputDecorationTheme().copyWith(
    focusColor: AppColors.primaryColor,
    border: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.primaryColor),
      borderRadius: BorderRadius.circular(4),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.primaryColor),
      borderRadius: BorderRadius.circular(4),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.primaryColor),
      borderRadius: BorderRadius.circular(4),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.primaryColor),
      borderRadius: BorderRadius.circular(4),
    ),
    errorMaxLines: 3,
    helperMaxLines: 3,
    floatingLabelBehavior: FloatingLabelBehavior.never,
  );
}
