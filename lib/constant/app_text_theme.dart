import 'package:flutter/material.dart';
import 'package:flutter_web_app/constant/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  AppTextTheme._();

  static double _scaleFontSize(BuildContext context, double baseFontSize) {
    double screenWidth = MediaQuery.of(context).size.width;
    // Adjust the scaling factor as needed
    double scalingFactor =
        screenWidth / 1366; // 1366 is a common web resolution width
    double minScalingFactor = 0.80; // Adjust this value as needed
    double maxScalingFactor = 1.5; // Adjust this value as needed
    scalingFactor = scalingFactor.clamp(minScalingFactor, maxScalingFactor);
    return baseFontSize * scalingFactor;
  }

  static TextTheme appTextTheme(BuildContext context) {
    return TextTheme(
      bodyLarge: GoogleFonts.raleway(
          color: AppColors.onSurfaceTextColor,
          fontSize: _scaleFontSize(context, 20),
          fontWeight: FontWeight.w400),
      bodyMedium: GoogleFonts.raleway(
          color: AppColors.onSurfaceTextColor,
          fontSize: _scaleFontSize(context, 18),
          fontWeight: FontWeight.w400),
      bodySmall: GoogleFonts.raleway(
          color: AppColors.onSurfaceTextColor,
          fontSize: _scaleFontSize(context, 16),
          fontWeight: FontWeight.w400),
      displayLarge: GoogleFonts.raleway(
        color: AppColors.textColor,
        fontSize: _scaleFontSize(context, 52),
        fontWeight: FontWeight.w800,
      ),
      displayMedium: GoogleFonts.raleway(
        color: AppColors.textColor,
        fontSize: _scaleFontSize(context, 48),
        fontWeight: FontWeight.w800,
      ),
      displaySmall: GoogleFonts.raleway(
        color: AppColors.textColor,
        fontSize: _scaleFontSize(context, 32),
        fontWeight: FontWeight.w800,
      ),
      headlineLarge: GoogleFonts.raleway(
        color: AppColors.textColor,
        fontSize: _scaleFontSize(context, 48),
        fontWeight: FontWeight.w800,
      ),
      headlineMedium: GoogleFonts.raleway(
        color: AppColors.textColor,
        fontSize: _scaleFontSize(context, 32),
        fontWeight: FontWeight.w800,
      ),
      headlineSmall: GoogleFonts.raleway(
        color: AppColors.textColor,
        fontSize: _scaleFontSize(context, 24),
        fontWeight: FontWeight.w800,
      ),
      labelLarge: GoogleFonts.raleway(
          color: AppColors.onPrimaryContainer,
          fontSize: _scaleFontSize(context, 32),
          fontWeight: FontWeight.w700),
      labelMedium: GoogleFonts.raleway(
          color: AppColors.onPrimaryContainer,
          fontSize: _scaleFontSize(context, 20),
          fontWeight: FontWeight.w700),
      labelSmall: GoogleFonts.raleway(
        color: AppColors.onPrimaryContainer,
        fontSize: _scaleFontSize(context, 18),
        fontWeight: FontWeight.w700,
      ),
      titleLarge: GoogleFonts.raleway(
          color: AppColors.textColor,
          fontSize: _scaleFontSize(context, 20),
          fontWeight: FontWeight.w700),
      titleMedium: GoogleFonts.raleway(
          color: AppColors.onPrimary,
          fontSize: _scaleFontSize(context, 20),
          fontWeight: FontWeight.w600),
      titleSmall: GoogleFonts.raleway(
          color: AppColors.textColor,
          fontSize: _scaleFontSize(context, 18),
          fontWeight: FontWeight.w700),
    );
  }
}
