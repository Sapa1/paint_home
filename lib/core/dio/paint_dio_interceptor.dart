import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:universal_platform/universal_platform.dart';

import '../const/local_storage_keys.dart';
import '../local_storage/secure_local_storage.dart';

class PaintDioInterceptor extends InterceptorsWrapper {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    await addAuthorizationHeaders(options);

    await addHeaders(options);
    super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 401 || err.response?.statusCode == 403) {}

    super.onError(err, handler);
  }

  Future<void> addHeaders(RequestOptions options) async {
    options.headers['x-origin-channel'] = 'mobile';
    if (UniversalPlatform.isAndroid) {
      options.headers['x-origin-application'] = 'android';
    } else {
      options.headers['x-origin-application'] = 'ios';
    }
  }

  Future<void> addAuthorizationHeaders(RequestOptions options) async {
    if (options.headers.containsKey('Authorization')) {
      return;
    }
    final String? token = await getToken();
    options.headers['Authorization'] = token;
  }

  Future<String?> getToken() async {
    try {
      return await Modular.get<SecureLocalStorage>()
          .getData(key: AppLocalStorageKeys.token);
    } on Exception catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }
}
