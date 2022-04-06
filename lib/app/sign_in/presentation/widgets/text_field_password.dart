import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class PasswordFieldInput extends StatefulWidget {
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
  bool obcureText = true;
  Function()? onSuffixIconTap;
  String? Function(String?)? validator;

  PasswordFieldInput({
    Key? key,
    this.lableText,
    this.obcureText = true,
    this.readOnly = false,
    this.bgColor = Colors.transparent,
    // ignore: non_constant_identifier_names
    // this.TextColor = AppColor.kIconBackgroundColor,
    this.onTap,
    this.onSuffixIconTap,
    required this.onTextSubmitted,
    required this.textController,
    required this.textinputType,
    required this.validator,
  }) : super(key: key);

  @override
  State<PasswordFieldInput> createState() => _PasswordFieldInputState();
}

class _PasswordFieldInputState extends State<PasswordFieldInput> {
  void togglePasswordVisibity() =>
      setState(() => widget.obcureText = !widget.obcureText);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10.h),
      width: double.infinity,
      height: 50.h,
      child: Form(
        autovalidateMode: AutovalidateMode.always,
        child: TextFormField(
          // obscureText: widget.obcureText,
          onTap: widget.onTap,
          keyboardType: widget.textinputType,
          validator: widget.validator,
          onFieldSubmitted: (value) {
            widget.onTextSubmitted(value);
          },
          controller: widget.textController,
          readOnly: widget.readOnly,
          // cursorColor: AppColor.kIconBackgroundColor,
          decoration: InputDecoration(
            // border: OutlineInputBorder(
            //     borderSide:
            //         const BorderSide(color: AppColor.kIconBackgroundColor),
            //     borderRadius: BorderRadius.circular(0.r)),
            contentPadding: EdgeInsets.only(bottom: 12.h),
            focusedBorder: const OutlineInputBorder(
              // borderRadius: BorderRadius.circular(0.r),
              borderSide: BorderSide(color: Colors.blue),
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
            ),

            labelText:
                widget.validator.toString().isEmpty ? widget.lableText : "",
            labelStyle: const TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold),
            suffixIcon: Padding(
              padding: const EdgeInsetsDirectional.only(end: 12.0, bottom: 4.0),
              child: IconButton(
                onPressed: togglePasswordVisibity,
                icon: widget.obcureText
                    ? const ImageIcon(
                        AssetImage('assets/icons/icon_eye_open.png'),
                        // color: AppColor.kIconBackgroundColor,
                      )
                    : const ImageIcon(
                        AssetImage('assets/icons/icon_eye.png'),
                        // color: AppColor.kIconBackgroundColor,
                      ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
