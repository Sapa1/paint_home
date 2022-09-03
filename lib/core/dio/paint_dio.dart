import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:paint_home/core/dio/paint_dio_interceptor.dart';

import 'dio_adapter_unsupported.dart';

class PaintDio extends DioForNative {
  HttpClientAdapter client = getAdapter();

  PaintDio() {
    interceptors.addAll([
      PaintDioInterceptor(),
      LogInterceptor(
        requestBody: true,
        responseBody: true,
      ),
    ]);
    options.baseUrl = 'https://62968cc557b625860610144c.mockapi.io';
    httpClientAdapter = client;
  }
}
