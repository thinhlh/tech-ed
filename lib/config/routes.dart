import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:tech_ed/app/home/presentation/pages/home_page.dart';
import 'package:tech_ed/app/home/presentation/provider/home_provider.dart';
import 'package:tech_ed/utils/route_util.dart';
import 'package:tech_ed/app/forgot_password/presentation/pages/forgot_password_page.dart';

class Routes {
  Routes._internal();

  static String get initial => forgotPass;

  static const String home = '/home';
  static const String about = '/about';
  static const String forgotPass = '/forgot';

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
      case Routes.forgotPass:
        {
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => RouteUtil.createPageProvider<HomeProvider>(
              provider: (_) => HomeProvider(GetIt.I()),
              child: ForgotPasswordPage(),
            ),
          );
        }
      default:
        return null;
    }
  }
}
