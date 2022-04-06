import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_ed/app/common/presentation/widgets/w_text_field.dart';
import 'package:tech_ed/config/styles.dart';
import 'package:tech_ed/config/dimens.dart';
import 'package:tech_ed/app/forgot_password/presentation/pages/forgot_password_check_mail_page.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.all(20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 34.08.h,
                  right: 340.w,
                ),
                child: MaterialButton(
                  onPressed: () {},
                  child: Image.asset('assets/images/Vector.png'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 24.08.h, bottom: 58.h),
                child: Text('Enter your email',
                    style: AppStyles.titleForgotPasswordPage),
              ),
              WTextField(
                label: 'Email',
                icon: Icons.email,
                controller: TextEditingController(),
              ),
              SizedBox(height: AppDimens.extraLargeHeightDimens),
              SizedBox(
                height: 60.h,
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ForgotPasswordCheckMailPage()));
                  },
                  child: Text(
                    'Send verification',
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
            ],
          ),
        ),
      ),
    );
  }
}
