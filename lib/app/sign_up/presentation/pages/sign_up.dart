import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_ed/app/sign_up/presentation/widgets/button.dart';
import 'package:tech_ed/config/colors.dart';
import 'package:tech_ed/config/routes.dart';
import 'package:tech_ed/config/styles.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 80.0.h),
              child: Text("Welcome! \nSign up to continue!",
                  style: AppStyles.titleLarge, textAlign: TextAlign.center),
            ),
            Padding(
              padding: EdgeInsets.only(top: 60.0.h),
              child: elevatedButton(
                  isHaveIcon: true,
                  text: "Sign Up with Google",
                  icon: "icon_google"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0.h),
              child: elevatedButton(
                  isHaveIcon: true,
                  text: "Sign Up with Facebook",
                  icon: "icon_facebook"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0.h),
              child: Text("or", style: AppStyles.staticTextSignInUP),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0.h),
              child: elevatedButton(
                isHaveIcon: false,
                text: "Sign Up with email",
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 48.0.w, top: 20.0.h, right: 48.0.w),
              child: Text(
                "By signing up you are agreed with our friendly terms and condition.",
                textAlign: TextAlign.center,
                style: AppStyles.textTermCondition,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 77.0.h),
              child: Text(
                "Already have an account?",
                style: AppStyles.staticTextSignInUP,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0.h),
              child: TextButton(
                  onPressed: () => Navigator.of(context).pushNamed(
                        Routes.signIn,
                      ),
                  style: TextButton.styleFrom(
                    minimumSize: Size.fromHeight(60.h),
                  ),
                  child: Text(
                    "Sign in",
                    style: AppStyles.textSignIn,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
