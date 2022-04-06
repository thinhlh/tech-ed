import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:tech_ed/config/colors.dart';
import 'package:tech_ed/config/styles.dart';

PageViewModel onBoardPageView(
        {required String titleText,
        required String bodyText,
        required String image,
        required BuildContext context}) =>
    PageViewModel(
      titleWidget: Column(
        children: [
          Container(
            padding: EdgeInsets.only(right: 42.w, top: 61.h),
            child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  "Skip",
                  style: AppStyles.titleMediumBlue,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 37.0.h, bottom: 70.0.h),
            child: Image.asset('assets/images/$image.png'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.w),
            child: Text(
              titleText,
              style: AppStyles.bodyOnboard,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.w, horizontal: 32.w),
            child: Text(
              bodyText,
              style: AppStyles.titleOnboard,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      bodyWidget: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 70.0.h),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: AppColors.colorBlue,
                minimumSize: Size.fromHeight(60.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0.r),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/signUp', (Route<dynamic> route) => false);
              },
              child: Text(
                'Register',
                style: AppStyles.titleMediumLight,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0.h),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: AppColors.backgroundLight,
                shadowColor: Colors.black,
                minimumSize: Size.fromHeight(60.h),
                side: BorderSide(width: 1.w, color: AppColors.colorBlue),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0.r),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/signIn', (Route<dynamic> route) => false);
              },
              child: Text(
                'Log in',
                style: AppStyles.loginOnboard,
              ),
            ),
          ),
        ],
      ),
    );
