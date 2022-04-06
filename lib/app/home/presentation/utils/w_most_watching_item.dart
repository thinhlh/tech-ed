import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_ed/app/home/data/models/course.dart';
import 'package:tech_ed/config/colors.dart';
import 'package:tech_ed/config/dimens.dart';
import 'package:tech_ed/config/styles.dart';

class MostWatchingItem extends StatelessWidget {
  const MostWatchingItem({
    Key? key,
    required Course course,
  })  : _course = course,
        super(key: key);
  final Course _course;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240.h,
      width: 160.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VideoTag(
            image: ClipRRect(
              borderRadius: BorderRadius.circular(AppDimens.buttonBorderRadius),
              child: Image.asset(
                _course.image,
                height: 143.h,
                width: 300.w,
              ),
            ),
            title: _course.tag,
          ),
          Padding(
            padding: EdgeInsets.only(top: 12.h),
            child: SizedBox(
              height: 38.h,
              width: 144.w,
              child: Text(
                _course.courseName,
                style: AppStyles.cateCourseName,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.h),
            child: Text(
              _course.teacherName,
              style: AppStyles.cateTeacherName,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  _course.star.toString(),
                  style: AppStyles.cateCourseCount,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.w),
                  child: Image.asset(
                    'assets/images/star.png',
                    height: 13.34.h,
                    width: 14.w,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.w),
                  child: Image.asset(
                    'assets/images/star.png',
                    height: 13.34.h,
                    width: 14.w,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.w),
                  child: Image.asset(
                    'assets/images/star.png',
                    height: 13.34.h,
                    width: 14.w,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.w),
                  child: Image.asset(
                    'assets/images/star.png',
                    height: 13.34.h,
                    width: 14.w,
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 10.w),
                  child: Text(
                    "(${_course.voteQuantity})",
                    style: AppStyles.cateCourseCount,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class VideoTag extends StatelessWidget {
  const VideoTag({
    Key? key,
    required Widget image,
    required String title,
  })  : _image = image,
        _title = title,
        super(key: key);
  final Widget _image;
  final String _title;

  @override
  Widget build(BuildContext context) {
    final TextStyle _txtTitleStyle = TextStyle(
      fontFamily: 'Plus Jakarta Display',
      fontSize: AppDimens.extraSmallText,
      fontWeight: FontWeight.w500,
      color: AppColors.textPrimaryLight,
    );

    return SizedBox(
      height: 143.h,
      width: 300.w,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(AppDimens.buttonBorderRadius),
            child: _image,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w, top: 10.h),
            child: Container(
              height: 24.h,
              width: 56.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: AppColors.secondary,
                  borderRadius:
                      BorderRadius.circular(AppDimens.textInputFieldRadius)),
              child: Text(
                _title,
                style: _txtTitleStyle,
              ),
            ),
          )
        ],
      ),
    );
  }
}
