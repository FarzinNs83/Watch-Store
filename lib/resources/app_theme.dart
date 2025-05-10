import 'package:flutter/material.dart';
import 'package:watch_store/resources/app_colors.dart';

class AppTheme {
  ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: AppColors.scaffoldColor,
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(color: AppColors.hintColor),
      filled: true,
      fillColor: AppColors.textfilledColor,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: AppColors.textFieldEnabledBorder),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: AppColors.textFieldFocusedBorder,
          width: 1.5,
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(AppColors.buttonColor),
        foregroundColor: WidgetStatePropertyAll(AppColors.textButtonColor),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    ),
  );
}
