import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:bitspan_flutter_task/core/constants/api_constants.dart';

class DioClient {
  final Dio dio;

  DioClient(this.dio) {
    dio.options.baseUrl = ApiConstants.baseUrl;
    dio.options.headers['Authorization'] = 'Basic ${base64Encode(utf8.encode('${ApiConstants.username}:${ApiConstants.password}'))}';
  }
}

void setupDio() {
  GetIt.I.registerSingleton(DioClient(Dio()));
}