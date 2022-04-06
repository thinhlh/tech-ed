import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_ed/config/colors.dart';
import 'package:tech_ed/config/dimens.dart';
import 'package:tech_ed/config/styles.dart';

class HomeFreeTrialCard extends StatelessWidget {
  const HomeFreeTrialCard({
    Key? key,
    required String title,
    required String textButton,
  })  : _title = title,
        _textButton = textButton,
        super(key: key);
  final String _title, _textButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20.w, 40.h, 20.w, 0.h),
      child: Container(
        height: 162.h,
        width: 335.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppDimens.textInputFieldRadius),
          color: AppColors.searchInputBackground,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(46.w, 20.h, 46.w, 0.h),
              child: SizedBox(
                height: 58.h,
                width: 243.w,
                child: Text(
                  //"Try free trial to enhance your creative journey!",
                  _title,
                  textAlign: TextAlign.center,
                  style: AppStyles.homeCategoryLarge,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(98.w, 20.h, 98.w, 20.h),
              child: SizedBox(
                height: 44.h,
                width: 139.w,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    //"Get free Trial",
                    _textButton,
                    textAlign: TextAlign.center,
                    style: AppStyles.textButton,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
