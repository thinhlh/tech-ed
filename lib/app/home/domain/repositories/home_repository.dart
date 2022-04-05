import 'package:dartz/dartz.dart';
import 'package:tech_ed/app/home/domain/entities/home_entity.dart';
import 'package:tech_ed/base/failure.dart';

abstract class HomeRepository {
  Future<Either<Failure, HomeEntity>> checkConnection();
}
