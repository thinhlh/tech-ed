import 'package:dio/dio.dart';
import 'package:tech_ed/base/failure.dart';
import 'package:tech_ed/services/rest_api/api.dart';
import 'package:tech_ed/services/rest_api/models/base_error.dart';

abstract class BaseApi extends Api {
  Failure mapExceptionToFailure(Exception exception) {
    String? message;

    if (exception is DioError) {
      message = _dioErrorHandler(exception);
    }
    return Failure(message: message);
  }

  String? _dioErrorHandler(DioError exception) {
    String? message;
    switch (exception.type) {
      case DioErrorType.connectTimeout:
        break;
      case DioErrorType.sendTimeout:
        break;
      case DioErrorType.receiveTimeout:
        break;
      case DioErrorType.cancel:
        break;
      case DioErrorType.other:
        break;
      case DioErrorType.response:
        {
          if (exception.response?.statusCode != null) {
            message = _handlingErrorOnStatusCode(exception);
          } else {
            if (exception.response == null) {
              break;
            } else {
              final Map<String, dynamic> payload = exception.response?.data;

              try {
                final error = BaseError.fromMap(payload);
                message = error.message;
              } on Exception {
                // On parse error
                // Do nothing
              }
            }
          }
        }
    }

    return message;
  }

  String? _handlingErrorOnStatusCode(DioError exception) {
    String? message;
    if (exception.response?.statusCode == 401) {
      message = 'Auth error';
    } else {
      //
    }

    return message;
  }
}
