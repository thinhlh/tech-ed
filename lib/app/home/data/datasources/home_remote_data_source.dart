import 'package:dartz/dartz.dart';
import 'package:tech_ed/app/home/data/models/home_connection_model.dart';
import 'package:tech_ed/base/failure.dart';
import 'package:tech_ed/services/rest_api/models/base_api.dart';

mixin _EndPoint {
  final String ping = '/ping';
}

abstract class HomeRemoteDataSource extends BaseApi {
  Future<Either<Failure, HomeConnectionModel>> checkConnection();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource with _EndPoint {
  @override
  Future<Either<Failure, HomeConnectionModel>> checkConnection() async {
    try {
      final result = await get(ping);

      return Right(HomeConnectionModel.fromRawData(result.data));
    } on Exception catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }
}
