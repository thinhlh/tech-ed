import 'package:tech_ed/core/env/env.dart';

class AppConfig {
  Env env = Env.dev();
  // Define more configuration of application

  AppConfig._internal();

  factory AppConfig.initialize({required Env env}) {
    instance.env = env;

    return instance;
  }

  static final AppConfig instance = AppConfig._internal();
}
