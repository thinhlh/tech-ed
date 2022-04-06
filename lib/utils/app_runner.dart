import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:tech_ed/app/app.dart';
import 'package:tech_ed/config/languages.dart';
import 'package:tech_ed/core/env/app_config.dart';
import 'package:tech_ed/core/env/env.dart';
import 'package:tech_ed/services/local/local_store.dart';
import 'package:tech_ed/utils/dependency_initializer.dart';

class AppRunner {
  AppRunner._();

  static final AppRunner instance = AppRunner._();

  Future<void> runApplication() async {
    WidgetsFlutterBinding.ensureInitialized();

    AppConfig.initialize(env: Env.dev());

    await Future.wait([
      _initializeDependencies(),
      _appConfigurations(),
      _initServices(),
    ]);

    runApp(const App());
  }

  Future<void> _initializeDependencies() async {
    await EasyLocalization.ensureInitialized();
    await DependencyInitializer.init();
  }

  Future<void> _initServices() async {
    // TODO error handler or logging
    await Firebase.initializeApp();
    await LocalStore.instance.init();
  }

  Future<void> _appConfigurations() async {
    Intl.defaultLocale = Languages.defaultLocaleString;
  }
}
