import 'package:get_it/get_it.dart';

/// All the injection container will extends this base class
abstract class InjectionContainer {
  final getIt = GetIt.instance;

  Future<void> init();
}
