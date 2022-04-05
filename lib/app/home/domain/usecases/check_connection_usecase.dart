import 'package:dartz/dartz.dart';
import 'package:tech_ed/app/home/domain/entities/home_entity.dart';
import 'package:tech_ed/app/home/domain/repositories/home_repository.dart';
import 'package:tech_ed/base/domain/usecase/base_usecase.dart';
import 'package:tech_ed/base/domain/usecase/params.dart';
import 'package:tech_ed/base/failure.dart';

class CheckConnectionUseCase extends BaseUseCase<NoParams, HomeEntity> {
  final HomeRepository _repository;

  CheckConnectionUseCase(this._repository);

  @override
  Future<Either<Failure, HomeEntity>> call(NoParams params) async {
    return await _repository.checkConnection();
  }
}
