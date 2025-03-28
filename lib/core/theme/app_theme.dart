import 'package:flutter/material.dart';
import 'package:news_24/core/theme/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.lightModeColor,
    textTheme: TextTheme(bodyLarge: TextStyle(color: Colors.black)),
  );
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.darkModeColor,
    textTheme: TextTheme(bodyLarge: TextStyle(color: Colors.white)),
  );
}
