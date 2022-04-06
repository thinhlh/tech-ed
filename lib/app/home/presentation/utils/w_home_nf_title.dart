import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_ed/config/styles.dart';

class NewsFeedTitle extends StatelessWidget {
  const NewsFeedTitle({
    Key? key,
    required String title,
  })  : _title = title,
        super(key: key);
  final String _title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20.w, 40.h, 20.w, 0.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 58.h,
            width: 195.w,
            child: Text(
              _title,
              style: AppStyles.homeCategoryLarge,
            ),
          ),
          Text(
            "see more",
            style: AppStyles.homeCategorySmall,
          ),
        ],
      ),
    );
  }
}
