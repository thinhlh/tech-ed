import 'package:flutter/material.dart';
import 'package:tech_ed/config/colors.dart';
import 'package:tech_ed/config/dimens.dart';

class AppStyles {
  AppStyles._internal();

  /// TODO define all widgets style of the application here

  static final TextStyle headlineLarge = TextStyle(
    fontSize: AppDimens.largeHeadline,
    color: AppColors.neutral.shade900,
    fontWeight: AppStyles.bold,
  );

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

  static final TextStyle titleOnboard = TextStyle(
    fontSize: AppDimens.titleOnboard,
    color: AppColors.titleOnBoard,
    fontWeight: AppStyles.bold,
  );
  static final TextStyle bodyOnboard = TextStyle(
    fontSize: AppDimens.bodyOnboard,
    color: AppColors.neutral.shade900,
    fontWeight: AppStyles.bold,
  );
  static final TextStyle titleMediumBlue = TextStyle(
    fontSize: AppDimens.mediumText,
    color: AppColors.colorBlue,
    fontWeight: AppStyles.medium,
  );

  static final TextStyle titleMediumLight = TextStyle(
    fontSize: AppDimens.mediumLargeText,
    color: AppColors.backgroundLight,
    fontWeight: AppStyles.medium,
  );

  static final TextStyle titleMediumLagre = TextStyle(
    fontSize: AppDimens.mediumText,
    color: AppColors.textPrimary,
    fontWeight: AppStyles.medium,
  );

  static final TextStyle loginOnboard = TextStyle(
    fontSize: AppDimens.mediumText,
    color: AppColors.colorBlue,
    fontWeight: AppStyles.medium,
  );

  static final TextStyle staticTextSignInUP = TextStyle(
    fontSize: AppDimens.mediumText,
    color: AppColors.neutral.shade900,
    fontWeight: AppStyles.regular,
  );

  static final TextStyle textTermCondition = TextStyle(
    fontSize: AppDimens.smallText,
    color: AppColors.textColor,
    fontWeight: AppStyles.regular,
  );

  static final TextStyle textSignIn = TextStyle(
    fontSize: AppDimens.mediumText,
    color: AppColors.colorBlue,
    fontWeight: AppStyles.medium,
  );
  static final TextStyle titleForgotPasswordPage = TextStyle(
    fontSize: AppDimens.mediumTitle,
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
  static const FontWeight homeTitleWeightMedium = FontWeight.w500;
  static const FontWeight homeTitleWeightRegular = FontWeight.w400;

  /// Home Text Style
  static final TextStyle homeTitleLarge = TextStyle(
    fontFamily: 'Plus Jakarta Display',
    fontSize: AppDimens.homeLargeTitle,
    fontWeight: homeTitleWeightMedium,
    color: AppColors.textPrimary,
  );

  static final TextStyle homeCategoryLarge = TextStyle(
    fontFamily: 'Plus Jakarta Display',
    fontSize: AppDimens.largeText,
    fontWeight: homeTitleWeightMedium,
    color: AppColors.textPrimary,
  );

  static final TextStyle homeCategorySmall = TextStyle(
    fontFamily: 'Plus Jakarta Display',
    fontSize: AppDimens.smallText,
    fontWeight: homeTitleWeightRegular,
    color: AppColors.textSubtitle,
  );

  static final TextStyle categoryTitle = TextStyle(
    fontFamily: 'Plus Jakarta Display',
    fontSize: AppDimens.regularText,
    fontWeight: homeTitleWeightMedium,
    color: AppColors.textPrimaryLight,
  );

  static final TextStyle homeTitleMedium = TextStyle(
    fontFamily: 'Plus Jakarta Display',
    fontSize: AppDimens.smallText,
    fontWeight: homeTitleWeightRegular,
    color: AppColors.textSubtitle,
  );

  static final TextStyle searchField = TextStyle(
    fontFamily: 'Plus Jakarta Display',
    fontSize: AppDimens.extraSmallText,
    fontWeight: homeTitleWeightRegular,
    color: AppColors.textSubtitle,
  );

  static final TextStyle cateCourseName = TextStyle(
    fontFamily: 'Plus Jakarta Display',
    fontSize: AppDimens.extraRegularText,
    fontWeight: homeTitleWeightMedium,
    color: AppColors.textPrimary,
  );

  static final TextStyle cateTeacherName = TextStyle(
    fontFamily: 'Plus Jakarta Display',
    fontSize: AppDimens.extraSmallText,
    fontWeight: homeTitleWeightRegular,
    color: AppColors.textPrimary,
  );

  static final TextStyle cateCourseCount = TextStyle(
    fontFamily: 'Plus Jakarta Display',
    fontSize: AppDimens.extraSmallText - 1,
    fontWeight: homeTitleWeightRegular,
    color: AppColors.textSubtitle,
  );

  static final TextStyle popularTeacher = TextStyle(
    fontFamily: 'Plus Jakarta Display',
    fontSize: AppDimens.regularText,
    fontWeight: homeTitleWeightRegular,
    color: AppColors.textPrimary,
  );

  static final TextStyle textButton = TextStyle(
    fontFamily: 'Plus Jakarta Display',
    fontSize: AppDimens.mediumText,
    fontWeight: homeTitleWeightMedium,
    color: AppColors.textButtonBlue,
  );
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight regular = FontWeight.w400;
}
