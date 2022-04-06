import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:tech_ed/app/sign_in/presentation/widgets/text_field_input.dart';
import 'package:tech_ed/app/sign_in/presentation/widgets/text_field_password.dart';
import 'package:tech_ed/config/colors.dart';
import 'package:tech_ed/config/styles.dart';

class SignInDetail extends StatefulWidget {
  const SignInDetail({Key? key}) : super(key: key);

  @override
  State<SignInDetail> createState() => _SignInDetailState();
}

class _SignInDetailState extends State<SignInDetail> {
  final TextEditingController _txtUserNameController = TextEditingController();
  final TextEditingController _txtEmailController = TextEditingController();
  final TextEditingController _txtPasswordController = TextEditingController();
  final TextEditingController _txtConfirmPasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          leading: Padding(
        padding: EdgeInsets.only(top: 40.0.h),
        child: IconButton(
          onPressed: () {},
          icon: const ImageIcon(AssetImage('assets/icons/icon_arrow_left.png')),
        ),
      )),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8.0.w),
              child: Text(
                "Enter your details",
                style: AppStyles.titleMediumLagre,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 58.0.h),
              child: TextFieldInput(
                textController: _txtUserNameController,
                onTextSubmitted: (str) {},
                textinputType: TextInputType.name,
                validator: null,
                lableText: "username",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 54.0.h),
              child: TextFieldInput(
                textController: _txtEmailController,
                onTextSubmitted: (str) {},
                textinputType: TextInputType.emailAddress,
                validator: null,
                lableText: "email",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 54.0.h),
              child: PasswordFieldInput(
                textController: _txtPasswordController,
                onTextSubmitted: (str) {},
                textinputType: TextInputType.visiblePassword,
                validator: MultiValidator(
                  [
                    RequiredValidator(errorText: 'password is required'),
                    PatternValidator(
                      r'(?=.*?[#?!@$%^&*-])',
                      errorText:
                          'passwords must have at least one special character',
                    )
                  ],
                ),
                lableText: "password",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 54.0.h),
              child: PasswordFieldInput(
                  textController: _txtConfirmPasswordController,
                  onTextSubmitted: (str) {},
                  textinputType: TextInputType.visiblePassword,
                  validator: null,
                  lableText: "confirm password"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 120.0.h),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: AppColors.colorBlue,
                  minimumSize: Size.fromHeight(60.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0.r),
                  ),
                  onPrimary: Colors.blue,
                ),
                onPressed: () {},
                child: Text("Continue", style: AppStyles.titleMediumLight),
              ),
            )
          ],
        ),
      ),
    );
  }
}
