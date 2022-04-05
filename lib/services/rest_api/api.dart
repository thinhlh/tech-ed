import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:tech_ed/base/models/response_model.dart';
import 'package:tech_ed/core/env/app_config.dart';
import 'package:tech_ed/services/rest_api/interceptors/dio_logger.dart';
import 'package:tech_ed/services/rest_api/interceptors/jwt_interceptor.dart';

abstract class Api {
  Dio get _dio => _initDio();

  Dio _initDio() {
    final Dio dio = Dio();

    final env = AppConfig.instance.env;

    dio
      ..options.baseUrl = env.baseUrl
      ..options.connectTimeout = env.connectionTimeOut
      ..options.receiveTimeout = env.receiveTimeOut
      ..options.headers = {'Content-Type': 'application/json; charset=utf-8'}
      ..interceptors.add(PrettyDioLogger(
        request: true,
        requestBody: true,
        responseBody: true,
        requestHeader: true,
        responseHeader: false,
        error: true,
      ))
      ..interceptors.add(JWTInterceptor());

    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (client) {
      // You can verify the certificate here
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;

      return client;
    };

    return dio;
  }

  Future<ResponseModel> get(
    String endpoint, {
    Map<String, dynamic>? query,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgres,
  }) async {
    try {
      final response = await _dio.get(
        AppConfig.instance.env.baseUrl + endpoint,
        queryParameters: query,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgres,
      );

      return ResponseModel.fromMap(response.data);
    } on Exception {
      rethrow;
    }
  }
}
