import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_ed/app/home/data/models/teachers.dart';
import 'package:tech_ed/config/dimens.dart';
import 'package:tech_ed/config/styles.dart';

class PopularTeacherItem extends StatelessWidget {
  const PopularTeacherItem({
    Key? key,
    required Teacher teacher,
  })  : _teacher = teacher,
        super(key: key);
  final Teacher _teacher;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 232.h,
      width: 166.w,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(AppDimens.buttonBorderRadius),
            child: Image.asset(
              'assets/images/teacher_background.png',
              width: 173.w,
              height: 150.h,
            ),
          ),
          Image.asset(
            _teacher.image,
            height: 232.h,
            width: 157.w,
          ),
          SizedBox(
            height: 56.h,
            width: 173.w,
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.only(left: 10.w, top: 3.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _teacher.name,
                      style: AppStyles.popularTeacher,
                    ),
                    SizedBox(height: 3.h),
                    Text(
                      _teacher.jobName,
                      style: AppStyles.homeTitleMedium,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
