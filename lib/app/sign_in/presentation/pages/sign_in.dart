import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_ed/app/sign_in/presentation/widgets/text_field_input.dart';
import 'package:tech_ed/app/sign_in/presentation/widgets/text_field_password.dart';
import 'package:tech_ed/app/sign_up/presentation/widgets/button.dart';
import 'package:tech_ed/config/colors.dart';
import 'package:tech_ed/config/styles.dart';
import 'package:form_field_validator/form_field_validator.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _txtUserNameController = TextEditingController();
  final TextEditingController _txtPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.backgroundLight,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 80.0.h),
              child: Text("Welcome back! \nSign in to continue!",
                  style: AppStyles.titleLarge, textAlign: TextAlign.center),
            ),
            Padding(
              padding: EdgeInsets.only(top: 60.0.h),
              child: elevatedButton(
                  isHaveIcon: true,
                  text: "Log in with Google",
                  icon: "icon_google"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0.h),
              child: elevatedButton(
                  isHaveIcon: true,
                  text: "Log in with Facebook",
                  icon: "icon_facebook"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0.h),
              child: Text("or", style: AppStyles.staticTextSignInUP),
            ),
            Padding(
              padding: EdgeInsets.only(top: 28.0.h),
              child: TextFieldInput(
                onTextSubmitted: (str) {},
                textController: _txtUserNameController,
                textinputType: TextInputType.name,
                lableText: "user name",
                validator: (String) {
                  return null;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0.h),
              child: PasswordFieldInput(
                  onTextSubmitted: (str) {},
                  textController: _txtPasswordController,
                  textinputType: TextInputType.emailAddress,
                  validator: MultiValidator(
                    [
                      RequiredValidator(errorText: 'password is required'),
                      PatternValidator(r'(?=.*?[#?!@$%^&*-])',
                          errorText:
                              'passwords must have at least one special character')
                    ],
                  ),
                  lableText: "pass word"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 80.0.h),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: AppColors.colorBlue,
                  minimumSize: Size.fromHeight(60.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0.r),
                  ),
                  onPrimary: Colors.grey,
                ),
                onPressed: () {},
                child: Text("Log in", style: AppStyles.titleMediumLight),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0.h),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: AppColors.backgroundLight,
                  minimumSize: Size.fromHeight(60.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0.r),
                  ),
                  onPrimary: Colors.blue,
                ),
                onPressed: () {},
                child:
                    Text("Forgot password", style: AppStyles.titleMediumBlue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
