import 'package:tech_ed/app/home/domain/entities/home_entity.dart';

class HomeConnectionModel extends HomeEntity {
  HomeConnectionModel._internal(String message) : super(message);

  // Raw data is the data field inside the response
  factory HomeConnectionModel.fromRawData(dynamic rawData) {
    if (rawData is String) {
      return HomeConnectionModel._internal(rawData);
    } else {
      return HomeConnectionModel._internal(rawData['data']);
    }
  }
}
