import 'package:flutter/material.dart';
import 'package:flutter_web_app/constant/app_colors.dart';
import 'package:flutter_web_app/constant/app_text_theme.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static ThemeData appTheme = ThemeData(
    useMaterial3: true,
    // fontFamily: GoogleFonts.ptSans.toString(),
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      surface: AppColors.surfaceColor,
      primary: AppColors.primary,
      onPrimary: AppColors.onPrimary,
      primaryContainer: AppColors.primaryContainer,
      onPrimaryContainer: AppColors.onPrimaryContainer,
      onSurface: AppColors.onSurfaceTextColor,
    ),
    fontFamily: GoogleFonts.raleway().fontFamily,
    textTheme: AppTextTheme.appTextTheme,
  );
}
