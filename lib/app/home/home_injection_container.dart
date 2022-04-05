import 'package:tech_ed/app/home/data/datasources/home_remote_data_source.dart';
import 'package:tech_ed/app/home/data/repositories/home_repository_impl.dart';
import 'package:tech_ed/app/home/domain/repositories/home_repository.dart';
import 'package:tech_ed/app/home/domain/usecases/check_connection_usecase.dart';
import 'package:tech_ed/base/injection/injection_container.dart';

class HomeInjectionContainer extends InjectionContainer {
  HomeInjectionContainer._internal();

  static final HomeInjectionContainer instance =
      HomeInjectionContainer._internal();

  @override
  Future<void> init() async {
    getIt.registerLazySingleton(() => CheckConnectionUseCase(getIt()));

    getIt.registerLazySingleton<HomeRepository>(
        () => HomeRepositoryImpl(getIt()));

    getIt.registerLazySingleton<HomeRemoteDataSource>(
        () => HomeRemoteDataSourceImpl());
  }
}
