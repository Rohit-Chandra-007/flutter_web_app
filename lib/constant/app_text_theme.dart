import 'package:flutter/material.dart';
import 'package:flutter_web_app/constant/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  AppTextTheme._();
  static TextTheme appTextTheme = TextTheme(
    bodyLarge: GoogleFonts.raleway(
        color: AppColors.onSurfaceTextColor,
        fontSize: 20,
        fontWeight: FontWeight.w400),
    bodyMedium: GoogleFonts.raleway(
        color: AppColors.onSurfaceTextColor,
        fontSize: 18,
        fontWeight: FontWeight.w400),
    bodySmall: GoogleFonts.raleway(
        color: AppColors.onSurfaceTextColor,
        fontSize: 16,
        fontWeight: FontWeight.w400),
    displayLarge: GoogleFonts.raleway(
        color: AppColors.textColor, fontSize: 52, fontWeight: FontWeight.w800),
    displayMedium: GoogleFonts.ptSans(
        color: AppColors.textColor, fontSize: 48, fontWeight: FontWeight.w800),
    displaySmall: GoogleFonts.ptSans(
        color: AppColors.textColor, fontSize: 32, fontWeight: FontWeight.w800),
    headlineLarge: GoogleFonts.raleway(
        color: AppColors.textColor, fontSize: 52, fontWeight: FontWeight.w800),
    headlineMedium: GoogleFonts.raleway(
        color: AppColors.textColor, fontSize: 48, fontWeight: FontWeight.w800),
    headlineSmall: GoogleFonts.raleway(
        color: AppColors.textColor, fontSize: 32, fontWeight: FontWeight.w800),
    labelLarge: GoogleFonts.raleway(
        color: AppColors.onPrimaryContainer,
        fontSize: 32,
        fontWeight: FontWeight.w700),
    labelMedium: GoogleFonts.raleway(
        color: AppColors.onPrimaryContainer,
        fontSize: 20,
        fontWeight: FontWeight.w700),
    labelSmall: GoogleFonts.raleway(
      color: AppColors.onPrimaryContainer,
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
    titleLarge: GoogleFonts.raleway(
        color: AppColors.textColor, fontSize: 24, fontWeight: FontWeight.w700),
    titleMedium: GoogleFonts.raleway(
        color: AppColors.textColor, fontSize: 20, fontWeight: FontWeight.w700),
    titleSmall: GoogleFonts.raleway(
        color: AppColors.textColor, fontSize: 18, fontWeight: FontWeight.w700),
  );
}
