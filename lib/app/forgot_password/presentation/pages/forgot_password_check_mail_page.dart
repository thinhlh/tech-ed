import 'package:flutter/material.dart';
import 'package:tech_ed/app/forgot_password/presentation/pages/forgot_password_reset_page.dart';
import 'package:tech_ed/config/styles.dart';
import 'package:tech_ed/config/dimens.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPasswordCheckMailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 45.5.w, right: 45.5.w, top: 55.h),
              alignment: Alignment.center,
              child: Text(
                'Check your email',
                style: AppStyles.headlineLarge,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: 32.w, right: 32.w, top: 20.h, bottom: 20.h),
              child: Text(
                'We’ve sent a password recover instruction to your email',
                style: TextStyle(
                  fontSize: AppDimens.smallText,
                  color: const Color(0xFF000000),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 72.w, right: 72.w, bottom: 39.h),
              height: 350,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/imgForgotPassPage.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 10.h),
              height: 60.h,
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ForgotPasswordResetPage()));
                },
                child: Text(
                  'Open email app',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: AppDimens.mediumText,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xFF265AE8)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.r))),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 42.h),
              height: 60.h,
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Will do it later',
                  style: TextStyle(
                    color: const Color(0xFF265AE8),
                    fontSize: AppDimens.mediumText,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xFFFFFFFF)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.r))),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 60.w, right: 60.w, bottom: 30.h),
              child: Text(
                'Didn’t get any email? Check your spam folder or try again with a valid email.',
                style: TextStyle(
                  fontSize: AppDimens.smallText,
                  color: const Color(0xFF000000),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
