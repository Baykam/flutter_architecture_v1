import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:repository/src/config/app_environment.dart';

final class NetworkManager {
  NetworkManager._internal();
  static final NetworkManager instance = NetworkManager._internal();
  factory NetworkManager() => instance;

  final Dio _dio = Dio(BaseOptions(baseUrl: AppEnvironmentItems.baseUrl.value));

  Dio get dio => _dio;

  ///Handle error[onErrorStatus] is error status code [HttpStatus]
  void setupInterceptors({required ValueChanged<int> onErrorStatus}) {
    _dio.interceptors.add(InterceptorsWrapper(
      // onRequest: (options, handler) => handler.next(options),
      // onResponse: (response, handler) => handler.next(response),
      onError: (error, handler) {
        onErrorStatus(error.response?.statusCode ?? HttpStatus.notFound);
        handler.next(error);
      },
    ));
  }
}
