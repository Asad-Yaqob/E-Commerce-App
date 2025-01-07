import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  AppTextTheme._();

  static TextStyle _cinzelStyle({
    required FontWeight fontWeight,
    double fontSize = 14.0,
    Color? color,
  }) {
    return GoogleFonts.cinzel(
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: color,
    );
  }

  static TextStyle _playfairDisplayStyle({
    FontWeight fontWeight = FontWeight.normal,
    double fontSize = 14.0,
    Color? color,
  }) {
    return GoogleFonts.playfairDisplay(
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: color,
    );
  }

  static TextStyle _poppinsStyle({
    FontWeight fontWeight = FontWeight.normal,
    double fontSize = 14.0,
    Color? color,
  }) {
    return GoogleFonts.poppins(
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: color,
    );
  }

  static TextTheme textTheme = TextTheme(
    headlineLarge: _cinzelStyle(
      fontWeight: FontWeight.bold,
      fontSize: 32.0,
    ),
    headlineMedium: _cinzelStyle(
      fontWeight: FontWeight.w600,
      fontSize: 28.0,
    ),
    headlineSmall: _cinzelStyle(
      fontWeight: FontWeight.w400,
      fontSize: 24.0,
    ),
    titleLarge: _playfairDisplayStyle(
      fontWeight: FontWeight.bold,
      fontSize: 22.0,
    ),
    titleMedium: _playfairDisplayStyle(
      fontWeight: FontWeight.w600,
      fontSize: 18.0,
    ),
    titleSmall: _playfairDisplayStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16.0,
    ),
    bodyLarge: _poppinsStyle(
      fontSize: 16.0,
    ),
    bodyMedium: _poppinsStyle(
      fontSize: 14.0,
    ),
    bodySmall: _poppinsStyle(
      fontSize: 12.0,
    ),
  );
}
