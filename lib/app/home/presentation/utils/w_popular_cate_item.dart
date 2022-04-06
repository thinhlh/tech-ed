import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_ed/config/dimens.dart';
import 'package:tech_ed/config/styles.dart';

class PopularItem extends StatelessWidget {
  const PopularItem({Key? key, required Widget image, required String title})
      : _image = image,
        _title = title,
        super(key: key);
  final Widget _image;
  final String _title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140.h,
      width: 160.w,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(AppDimens.buttonBorderRadius),
            child: _image,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(18.w, 0.h, 17.w, 25.h),
            child: Text(
              _title,
              style: AppStyles.categoryTitle,
            ),
          )
        ],
      ),
    );
  }
}
