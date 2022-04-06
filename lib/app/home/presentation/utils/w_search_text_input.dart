import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_ed/config/colors.dart';
import 'package:tech_ed/config/dimens.dart';
import 'package:tech_ed/config/styles.dart';

// ignore: must_be_immutable
class SearchTextInputField extends StatelessWidget {
  final TextEditingController textController;
  bool readOnly = false;
  // ignore: prefer_typing_uninitialized_variables
  var hintText;
  Color bgColor = Colors.transparent;
  // ignore: non_constant_identifier_names
  Color TextColor = Colors.black;
  final Function(String) onTextSubmitted;
  Function()? onTap;
  final TextInputType textinputType;
  Widget suffixIcon = const Icon(null);
  bool obcureText = false;
  Function()? onSuffixIconTap;
  String? Function(String?)? validator;

  SearchTextInputField({
    Key? key,
    this.hintText,
    this.obcureText = false,
    this.readOnly = false,
    this.bgColor = Colors.transparent,
    // ignore: non_constant_identifier_names
    this.TextColor = Colors.black,
    this.onTap,
    this.onSuffixIconTap,
    this.suffixIcon = const Icon(null),
    required this.onTextSubmitted,
    required this.textController,
    required this.textinputType,
    required this.validator,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10.h),
      width: 335.w,
      height: 60.h,
      child: Form(
        autovalidateMode: AutovalidateMode.always,
        child: TextFormField(
          obscureText: obcureText,
          onTap: onTap,
          keyboardType: textinputType,
          validator: validator,
          onFieldSubmitted: (value) {
            onTextSubmitted(value);
          },
          controller: textController,
          readOnly: readOnly,
          cursorColor: AppColors.textPrimary,
          decoration: InputDecoration(
            fillColor: AppColors.searchInputBackground,
            border: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(AppDimens.textInputFieldRadius)),
            contentPadding:
                EdgeInsets.symmetric(vertical: 25.h, horizontal: 20.w),
            focusedBorder: OutlineInputBorder(
              borderRadius:
                  BorderRadius.circular(AppDimens.textInputFieldRadius),
            ),
            hintText: hintText,
            hintStyle: AppStyles.searchField,
            // labelStyle:
            //     TextStyle(color: TextColor, fontWeight: FontWeight.bold),
            suffixIcon: Padding(
              padding: EdgeInsets.fromLTRB(0.w, 16.h, 16.w, 16.h),
              child: Image.asset(
                'assets/icons/search_inactive.png',
                height: 28.w,
                width: 28.w,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
