// ignore: implementation_imports
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:provider/provider.dart';
import 'package:tech_ed/app/home/presentation/pages/home_page.dart';
import 'package:tech_ed/app/page_container/presentation/provider/page_container_provider.dart';
import 'package:tech_ed/base/presentation/pages/p_stateless.dart';
import 'package:tech_ed/config/colors.dart';
import 'package:tech_ed/config/routes.dart';

class PageContainerPage extends PageStateless<PageContainerProvider> {
  PageContainerPage({Key? key}) : super(key: key);

  @override
  Widget buildPage(BuildContext context) {
    //Create variables for bottom navigation bar
    final List<Widget> _screens = [
      HomePageTemp(),
      const TempPage(),
      const TempPage(),
      const TempPage(),
    ];
    const double _scaleIcon = 2.0;
    final _navBarItems = <PersistentBottomNavBarItem>[
      PersistentBottomNavBarItem(
        icon: Transform.scale(
          scale: _scaleIcon,
          child: Image.asset(
            'assets/icons/home_active.png',
            height: 98.w,
            width: 40.h,
          ),
        ),
        inactiveIcon: Image.asset(
          'assets/icons/home_inactive.png',
          height: 28.w,
          width: 28.w,
        ),
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          onGenerateRoute: (settings) => Routes.onGenerateRoute(settings),
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Transform.scale(
          scale: _scaleIcon,
          child: Image.asset(
            'assets/icons/search_active.png',
            height: 98.w,
            width: 40.h,
          ),
        ),
        inactiveIcon: Image.asset(
          'assets/icons/search_inactive.png',
          height: 28.w,
          width: 28.w,
        ),
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          onGenerateRoute: (settings) => Routes.onGenerateRoute(settings),
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Transform.scale(
          scale: _scaleIcon,
          child: Image.asset(
            'assets/icons/bookmark_active.png',
            height: 98.w,
            width: 40.h,
          ),
        ),
        inactiveIcon: Image.asset(
          'assets/icons/bookmark_inactive.png',
          height: 28.w,
          width: 28.w,
        ),
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          onGenerateRoute: (settings) => Routes.onGenerateRoute(settings),
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Transform.scale(
          scale: _scaleIcon,
          child: Image.asset(
            'assets/icons/user_active.png',
            height: 98.w,
            width: 40.h,
          ),
        ),
        inactiveIcon: Image.asset(
          'assets/icons/user_inactive.png',
          height: 28.w,
          width: 28.w,
        ),
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          onGenerateRoute: (settings) => Routes.onGenerateRoute(settings),
        ),
      ),
    ];

    // Build widget
    return PersistentTabView(
      context,
      screens: _screens,
      items: _navBarItems,
      controller: context.read<PageContainerProvider>().controller,
      confineInSafeArea: true,
      popActionScreens: PopActionScreensType.all,
      backgroundColor: AppColors.btmNavBarBackground,
      navBarHeight: 58.h,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 400),
        curve: Curves.ease,
      ),
      padding: NavBarPadding.only(
        top: 17.5.h,
        left: 56.w,
        right: 56.w,
        bottom: 17.5.h,
      ),
      bottomScreenMargin: 50.h,
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style6,
    );
  }

  @override
  void initialization(BuildContext context) {
    // TODO: implement initialization
  }
}

class TempPage extends StatelessWidget {
  const TempPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Temp Page"),
    );
  }
}
