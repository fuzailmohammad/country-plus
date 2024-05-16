import 'package:country_plus/app/theme/app_colors.dart';
import 'package:country_plus/app/theme/styles.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final theme = ThemeData(
    fontFamily: 'poppins',
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.quaternaryColor,
    secondaryHeaderColor: AppColors.secondaryColor,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.secondaryColor,
      primary: AppColors.primaryColor,
      secondary: AppColors.secondaryColor,
      tertiary: AppColors.tertiaryColor,
      brightness: Brightness.light,
    ),
    textTheme: const TextTheme(
      labelLarge: TextStyle(color: AppColors.secondaryColor),
      labelMedium: TextStyle(color: AppColors.secondaryColor),
      labelSmall: TextStyle(color: AppColors.secondaryColor),
    ),
    appBarTheme: const AppBarTheme(
        centerTitle: true,
        color: AppColors.primaryColor,
        titleTextStyle: Styles.tsWhiteRegular18,
        elevation: 5,
        iconTheme: IconThemeData(color: AppColors.white)),
  );
}
