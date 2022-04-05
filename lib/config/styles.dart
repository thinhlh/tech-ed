import 'package:flutter/material.dart';
import 'package:tech_ed/config/colors.dart';
import 'package:tech_ed/config/dimens.dart';

class AppStyles {
  AppStyles._internal();

  /// TODO define all widgets style of the application here

  static final TextStyle titleLarge = TextStyle(
    fontSize: AppDimens.largeText,
    color: AppColors.neutral.shade900,
    fontWeight: AppStyles.bold,
  );

  static final TextStyle titleMedium = TextStyle(
    fontSize: AppDimens.mediumText,
    color: AppColors.neutral.shade900,
    fontWeight: AppStyles.bold,
  );

  static final TextStyle titleSmall = TextStyle(
    fontSize: AppDimens.mediumText,
    color: AppColors.neutral.shade900,
    fontWeight: AppStyles.bold,
  );

  static final ButtonStyle buttonStyle = ButtonStyle(
    elevation: MaterialStateProperty.all(0),
    backgroundColor: MaterialStateProperty.all(AppColors.primary),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          AppDimens.buttonBorderRadius,
        ),
      ),
    ),
    padding: MaterialStateProperty.all(const EdgeInsets.all(24)),
    overlayColor: MaterialStateProperty.all(Colors.transparent),
    textStyle: MaterialStateProperty.all(
      TextStyle(
        fontSize: ThemeData.light().textTheme.titleLarge?.fontSize,
        color: Colors.red,
        fontWeight: AppStyles.bold,
      ),
    ),
  );

  static const FontWeight bold = FontWeight.bold;
  static const FontWeight extraBold = FontWeight.w900;
}
