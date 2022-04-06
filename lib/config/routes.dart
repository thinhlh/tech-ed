import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:tech_ed/app/home/presentation/pages/home_page.dart';
import 'package:tech_ed/app/home/presentation/provider/home_provider.dart';
import 'package:tech_ed/app/onboarding/presentation/pages/onboard_page.dart';
import 'package:tech_ed/app/sign_in/presentation/pages/sign_in.dart';
import 'package:tech_ed/app/sign_in/presentation/pages/sign_in_detail.dart';
import 'package:tech_ed/app/sign_up/presentation/pages/sign_up.dart';
import 'package:tech_ed/utils/route_util.dart';

class Routes {
  Routes._internal();

  static String get initial => onBoard;

  static const String home = '/home';
  static const String about = '/about';
  static const String onBoard = '/onBoard';
  static const String signUp = '/signUp';
  static const String signIn = '/signIn';
  static const String signInDetail = '/signInDetail';

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
      case Routes.onBoard:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const OnboardingScreen(),
        );
      case Routes.signUp:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const SignUp(),
        );
      case Routes.signIn:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const SignIn(),
        );
      case Routes.signInDetail:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const SignInDetail(),
        );
      case Routes.about:

      default:
        return null;
    }
  }
}
