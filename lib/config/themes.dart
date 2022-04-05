import 'package:flutter/material.dart';
import 'package:tech_ed/config/colors.dart';
import 'package:tech_ed/config/styles.dart';

class AppTheme {
  AppTheme._internal();

  static final ThemeData light = ThemeData(
    primaryColor: AppColors.primary,
    primarySwatch: AppColors.primarySwatch,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: AppStyles.buttonStyle,
    ),
    buttonTheme: const ButtonThemeData(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
    ),
    textTheme: Typography.blackCupertino,
    tabBarTheme: TabBarTheme(
      labelColor: AppColors.neutral.shade900,
    ),
    scaffoldBackgroundColor: AppColors.scaffoldBackground,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.scaffoldBackground,
      elevation: 0,
    ),
    brightness: Brightness.light,
  );

  static final ThemeData dark = ThemeData.dark().copyWith(
    colorScheme: const ColorScheme.dark(),
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundDark,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    brightness: Brightness.dark,
    textTheme: Typography.whiteCupertino,
  );
}
