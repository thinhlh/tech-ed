import 'package:flutter/material.dart';

class AppColors {
  AppColors._internal(); // this basically makes it so you can instantiate this class

  /// App Colors
  static const Color primary = Color(0xFF7552A0);
  static const Color primaryLight = Color(0xFF9175b3);
  static const Color primaryDark = Color(0xFF5e4280);

  static const MaterialColor primarySwatch = MaterialColor(0xFF7552A0, {
    50: Color(0xFFbaa9d0),
    100: Color(0xFFac97c6),
    200: Color(0xFF9e86bd),
    300: Color(0xFF9175b3),
    400: Color(0xFF8363aa),
    500: Color(0xFF7552a0),
    600: Color(0xFF694a90),
    700: Color(0xFF5e4280),
    800: Color(0xFF523970),
    900: Color(0xFF463160),
  });

  static const Color secondary = Color(0xFFff9800);
  static const Color secondaryDark = Color(0xFFc66900);
  static const Color secondaryLight = Color(0xFFffc947);

  static const Color tetiary = Color(0xFFB8E3DA);

  static final Color error = Colors.red.shade300;
  static final Color errorText = Colors.red.shade400;
  static final Color success = Colors.green.shade300;
  static final Color successText = Colors.green.shade400;
  static final Color info = Colors.yellow.shade300;
  static final Color infoText = AppColors.neutral.shade800;

  /// Background colors
  /// neutral.shade50
  static final Color backgroundLight = neutral.shade50;

  /// neutral.shade200
  static final Color backgroundNeutral = neutral.shade200;

  /// neutral.shade800
  static final Color backgroundDark = neutral.shade800;

  /// neutral.shade100
  static final Color scaffoldBackground = neutral.shade200;
  static final Color scaffoldBackgroundDark = neutral.shade800;

  static const Color searchInputBackground = Color(0xFFFFF1F3);
  static const Color textButtonBlue = Color(0xFF265AE8);

  /// Follow design

  static const MaterialColor neutral = MaterialColor(0xFF9E9E9E, {
    50: Color(0xFFFAFAFA),
    100: Color(0xFFF5F5F5),
    200: Color(0xFFEEEEEE),
    300: Color(0xFFE0E0E0),
    400: Color(0xFF9E9E9E),
    500: Color(0xFF9E9E9E),
    600: Color(0xFF757575),
    700: Color(0xFF616161),
    800: Color(0xFF424242),
    900: Color(0xFF212121),
  });

  /// Text colors
  static final Color textPrimary = neutral.shade900;
  static final Color textSecondary = neutral.shade400;
  static final Color textSubtitle = neutral.shade600;
  static final Color textDisable = neutral.shade600;
  static final Color textPrimaryLight = neutral.shade50;

  /// Popup
  static const Color popUpPrimary = Color(0xFF25555f);

  // Bottom navigation bar background
  static const Color btmNavBarBackground = Color(0xffFFFFFF);
}
