import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_ed/app/common/presentation/widgets/w_text_field.dart';
import 'package:tech_ed/app/sign_in/presentation/widgets/text_field_input.dart';
import 'package:tech_ed/app/sign_in/presentation/widgets/text_field_password.dart';
import 'package:tech_ed/app/sign_up/presentation/widgets/button.dart';
import 'package:tech_ed/config/colors.dart';
import 'package:tech_ed/config/dimens.dart';
import 'package:tech_ed/config/routes.dart';
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
      body: SingleChildScrollView(
        child: Padding(
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
              WTextField(
                label: 'email',
                controller: _txtUserNameController,
                inputType: TextInputType.emailAddress,
                icon: Icons.mail,
              ),
              SizedBox(height: AppDimens.extraLargeHeightDimens),
              WTextField(
                label: 'password',
                controller: _txtPasswordController,
                inputType: TextInputType.visiblePassword,
                obsercureText: true,
                icon: Icons.vpn_key,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.colorBlue,
                    minimumSize: Size.fromHeight(60.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0.r),
                    ),
                    onPrimary: Colors.grey,
                  ),
                  onPressed: () =>
                      Navigator.of(context).pushNamed(Routes.container),
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
                  onPressed: () =>
                      Navigator.of(context).pushNamed(Routes.forgotPass),
                  child:
                      Text("Forgot password", style: AppStyles.titleMediumBlue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
