import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:tech_ed/app/home/presentation/pages/home_page.dart';
import 'package:tech_ed/app/home/presentation/provider/home_provider.dart';
import 'package:tech_ed/utils/route_util.dart';

class Routes {
  Routes._internal();

  static String get initial => home;

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

      default:
        return null;
    }
  }
}
