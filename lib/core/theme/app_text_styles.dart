import 'package:flutter/material.dart';
import 'package:rentease/core/theme/app_colors.dart';
import 'package:rentease/core/theme/app_dimensions.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle heading = const TextStyle(
    fontSize: AppDimensions.fontSizeLarge,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
  );

  static TextStyle title = const TextStyle(
    fontSize: AppDimensions.fontSizeTitle,
    fontWeight: FontWeight.w400,
    color: AppColors.primary,
  );

  static TextStyle body = const TextStyle(
    fontSize: AppDimensions.fontSizeMedium,
    color: AppColors.primary,
  );

  static TextStyle caption = const TextStyle(
    fontSize: AppDimensions.fontSizeSmall,
    color: AppColors.secondary,
  );

  static TextStyle button = const TextStyle(
    fontSize: AppDimensions.fontSizeMedium,
    fontWeight: FontWeight.w500,
    color: AppColors.onPrimary,
  );

  static TextStyle error = const TextStyle(
    fontSize: AppDimensions.fontSizeMedium,
    color: AppColors.error,
  );
}
