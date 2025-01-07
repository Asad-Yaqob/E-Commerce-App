import 'package:capjewel/utils/constants/color.dart';
import 'package:flutter/material.dart';

class AppBottomSheet {
  static BottomSheetThemeData bottomSheet = BottomSheetThemeData(
      backgroundColor: AppColors.secondaryColor,
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(0)),
      clipBehavior: Clip.antiAliasWithSaveLayer);
}
