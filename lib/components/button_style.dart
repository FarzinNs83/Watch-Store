import 'package:flutter/material.dart';
import 'package:watch_store/resources/app_colors.dart';

class AppButtonStyles {
  AppButtonStyles._();
  static ButtonStyle mainButtonStyle = ButtonStyle(
    shape: WidgetStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    backgroundColor: WidgetStatePropertyAll(
      AppColors.mainButtonColor,
    ),
  );
}
