import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_ed/config/colors.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController textController;
  bool readOnly = false;
  // ignore: prefer_typing_uninitialized_variables
  var lableText;
  Color bgColor = Colors.transparent;
  // ignore: non_constant_identifier_names
  // Color TextColor = AppColor.kIconBackgroundColor;
  final Function(String) onTextSubmitted;
  Function()? onTap;
  final TextInputType textinputType;
  Widget suffixIcon = const Icon(null);
  bool obcureText = false;
  Function()? onSuffixIconTap;
  String? Function(String?)? validator;

  TextFieldInput({
    Key? key,
    // ignore: non_constant_identifier_names
    // this.TextColor = AppColor.kIconBackgroundColor,
    required this.textController,
    this.readOnly = false,
    this.lableText,
    this.bgColor = Colors.transparent,
    required this.onTextSubmitted,
    this.onTap,
    required this.textinputType,
    this.obcureText = false,
    this.onSuffixIconTap,
    required this.validator,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(bottom: 20.h),
      width: double.infinity,
      height: 35.h,
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
          // cursorColor: AppColor.kIconBackgroundColor,
          decoration: InputDecoration(
            // border: OutlineInputBorder(
            //     borderSide: const BorderSide(color: AppColors.primary),
            //     borderRadius: BorderRadius.circular(0.r)),
            contentPadding: EdgeInsets.symmetric(vertical: 25.h),
            // focusedBorder: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(0.r),
            // ),
            labelText: lableText,
            // labelStyle:
            //     TextStyle(color: TextColor, fontWeight: FontWeight.bold),
            suffixIcon: Padding(
              padding: EdgeInsetsDirectional.only(end: 12.0.w, bottom: 4.0.h),
              child: IconButton(
                onPressed: onSuffixIconTap,
                icon: suffixIcon,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
