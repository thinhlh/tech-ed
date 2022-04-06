import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:tech_ed/app/home/data/models/course.dart';
import 'package:tech_ed/app/home/data/models/teachers.dart';
import 'package:tech_ed/app/home/presentation/provider/home_provider.dart';
import 'package:tech_ed/app/home/presentation/utils/w_home_free_trial.dart';
import 'package:tech_ed/app/home/presentation/utils/w_home_nf_title.dart';
import 'package:tech_ed/app/home/presentation/utils/w_most_watching_item.dart';
import 'package:tech_ed/app/home/presentation/utils/w_popular_cate_item.dart';
import 'package:tech_ed/app/home/presentation/utils/w_popular_teacher_item.dart';
import 'package:tech_ed/app/home/presentation/utils/w_search_text_input.dart';
import 'package:tech_ed/base/presentation/pages/p_loading_stateless.dart';
import 'package:tech_ed/config/colors.dart';
import 'package:tech_ed/config/dimens.dart';
import 'package:tech_ed/config/styles.dart';

class HomePage extends PageLoadingStateless<HomeProvider> {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget buildPage(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        provider.showLoading(true);
        await provider.checkConnection();
        provider.showLoading(false);
      },
      child: Center(
        child: Selector<HomeProvider, String>(
          selector: (_, provider) => provider.title,
          builder: (_, value, child) => Text(
            value,
            style: const TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }

  @override
  void initialization(BuildContext context) {}
}

class HomePageTemp extends StatelessWidget {
  HomePageTemp({Key? key}) : super(key: key);
  final TextEditingController _txtSearchController = TextEditingController();
  final List<Course> _courses = [
    Course(
      image: 'assets/images/temp_course_image_1.png',
      courseName: "Take care your home plants!",
      teacherName: "Sarrah Maningger",
      tag: "Best sell",
      star: 4,
      voteQuantity: 7051,
    ),
    Course(
      image: 'assets/images/temp_course_image_2.png',
      courseName: "Grow your creative business with Insta!",
      teacherName: "Samantha Rossye",
      tag: "NEW",
      star: 4,
      voteQuantity: 1028,
    ),
    Course(
      image: "assets/images/most_watching_2.png",
      courseName: "Modern interior desgn for beginner!",
      teacherName: "Samantha Rossye",
      tag: "HOT",
      star: 4,
      voteQuantity: 551,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(bottom: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20.w, 34.h, 18.w, 0.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello, Thien Nhan",
                            style: AppStyles.homeTitleLarge,
                          ),
                          Text(
                            "What do you wanna learn today?",
                            style: AppStyles.homeTitleMedium,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 44.h,
                        width: 44.w,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(AppDimens.avatar),
                          child: Image.asset(
                            'assets/images/temp_avatar.png',
                            height: 44.h,
                            width: 44.w,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20.w, 40.h, 20.w, 0.h),
                  child: SearchTextInputField(
                    onTextSubmitted: (str) {},
                    textController: _txtSearchController,
                    textinputType: TextInputType.name,
                    validator: (str) {},
                    hintText: "Search courses...",
                  ),
                ),
                const NewsFeedTitle(title: "Popular category in our platform"),
                Padding(
                  padding: EdgeInsets.fromLTRB(20.w, 25.h, 20.w, 0.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 7.w),
                        child: PopularItem(
                          image: Image.asset(
                            'assets/images/popular_cate_1.png',
                            height: 140.h,
                            width: 160.w,
                          ),
                          title: "Interior design",
                        ),
                      ),
                      PopularItem(
                        image: Image.asset(
                          'assets/images/popular_cate_2.png',
                          height: 140.h,
                          width: 160.w,
                        ),
                        title: "Traditional Art",
                      ),
                    ],
                  ),
                ),
                const NewsFeedTitle(title: "Most watching category in month"),
                Padding(
                  padding: EdgeInsets.fromLTRB(20.w, 30.h, 20.w, 0.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MostWatchingItem(
                        course: Course(
                          image: "assets/images/most_watching_1.png",
                          courseName: "HTML, CSS for noob and nerds!",
                          teacherName: "Sayef Mamud, PixelCo",
                          tag: "NEW",
                          star: 4,
                          voteQuantity: 4051,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      MostWatchingItem(
                        course: Course(
                          image: "assets/images/most_watching_2.png",
                          courseName: "Modern interior desgn for beginner!",
                          teacherName: "Samantha Rossye",
                          tag: "HOT",
                          star: 4,
                          voteQuantity: 551,
                        ),
                      ),
                    ],
                  ),
                ),
                const NewsFeedTitle(
                    title: "Our top popular teacher this month"),
                Padding(
                  padding: EdgeInsets.fromLTRB(20.w, 30.h, 20.w, 0.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PopularTeacherItem(
                        teacher: Teacher(
                          image: 'assets/images/temp_teacher_1.png',
                          name: "Sayef Mahmud",
                          jobName: "Eng for Programmer",
                        ),
                      ),
                      PopularTeacherItem(
                        teacher: Teacher(
                          image: 'assets/images/temp_teacher_2.png',
                          name: "Sarrah Morry",
                          jobName: "Eng for Artist",
                        ),
                      ),
                    ],
                  ),
                ),
                const HomeFreeTrialCard(
                  title: "Try free trial to enhance your creative journey!",
                  textButton: "Get free trial",
                ),
                const NewsFeedTitle(title: "Continue to watch previous course"),
                Padding(
                  padding: EdgeInsets.fromLTRB(20.w, 30.h, 13.w, 0.h),
                  child: SizedBox(
                    height: 240.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _courses.length,
                      itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.only(right: 22.w),
                        child: MostWatchingItem(course: _courses[index]),
                      ),
                    ),
                  ),
                ),
                const NewsFeedTitle(title: "What others are watching in app"),
                Padding(
                  padding: EdgeInsets.fromLTRB(20.w, 30.h, 20.w, 0.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MostWatchingItem(
                        course: Course(
                          image: 'assets/images/temp_course_image_1.png',
                          courseName: "Take care your home plants!",
                          teacherName: "Sarrah Maningger",
                          tag: "Best sell",
                          star: 4,
                          voteQuantity: 7051,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      MostWatchingItem(
                        course: Course(
                          image: 'assets/images/temp_course_image_2.png',
                          courseName: "Grow your creative business with Insta!",
                          teacherName: "Samantha Rossye",
                          tag: "NEW",
                          star: 4,
                          voteQuantity: 1028,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
