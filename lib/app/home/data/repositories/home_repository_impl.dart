import 'package:dartz/dartz.dart';
import 'package:tech_ed/app/home/data/datasources/home_remote_data_source.dart';
import 'package:tech_ed/app/home/domain/entities/home_entity.dart';
import 'package:tech_ed/app/home/domain/repositories/home_repository.dart';
import 'package:tech_ed/base/failure.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource _remoteDataSource;

  HomeRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, HomeEntity>> checkConnection() async {
    return _remoteDataSource.checkConnection();
  }
}
