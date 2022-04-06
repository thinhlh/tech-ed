import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:tech_ed/app/home/presentation/pages/home_page.dart';
import 'package:tech_ed/app/home/presentation/provider/home_provider.dart';
import 'package:tech_ed/app/page_container/presentation/pages/page_container_page.dart';
import 'package:tech_ed/app/page_container/presentation/provider/page_container_provider.dart';
import 'package:tech_ed/utils/route_util.dart';

class Routes {
  Routes._internal();

  static String get initial => container;

  static const String container = '/home_container';
  static const String home = '/home';
  static const String about = '/about';

  /// This is where you handle routing by name and arguments
  static Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.home:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => RouteUtil.createPageProvider<HomeProvider>(
            provider: (_) => HomeProvider(GetIt.I()),
            child: HomePage(),
          ),
        );
      case Routes.about:
      case Routes.container:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => RouteUtil.createPageProvider<PageContainerProvider>(
            provider: (_) => PageContainerProvider(),
            child: PageContainerPage(),
          ),
        );

      default:
        return null;
    }
  }
}
