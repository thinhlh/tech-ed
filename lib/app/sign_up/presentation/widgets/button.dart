import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_ed/config/colors.dart';
import 'package:tech_ed/config/styles.dart';

ElevatedButton elevatedButton(
        {required bool isHaveIcon, required String text, String? icon}) =>
    ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: AppColors.colorButton,
        minimumSize: Size.fromHeight(60.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0.r),
        ),
        onPrimary: Colors.blue,
      ),
      onPressed: () {},
      child: isHaveIcon
          ? Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Padding(
                padding: EdgeInsets.only(left: 10.0.w),
                child: Image.asset('assets/icons/$icon.png'),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.0.w),
                child: Text(text, style: AppStyles.titleMedium),
              ),
            ])
          : Text(text, style: AppStyles.titleMedium),
    );
