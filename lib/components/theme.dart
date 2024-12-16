import 'package:flutter/material.dart';
import 'package:watch_store/resources/app_colors.dart';
import 'package:watch_store/resources/app_dimensions.dart';

ThemeData lightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.black),
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: WidgetStateColor.resolveWith(
        (states) {
          if (states.contains(WidgetState.focused)) {
            return AppColors.focusedTextField;
          } else {
            return AppColors.unFocusedTextField;
          }
        },
      ),
      contentPadding: EdgeInsets.all(AppDimensions.medium),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimensions.small),
        borderSide: BorderSide(color: AppColors.borderColor)
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimensions.medium),
        borderSide: BorderSide(color: AppColors.focusedBorderColor)
      ),
    ),
  );
}
