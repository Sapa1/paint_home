import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../connection_status/connections_status.dart';
import '../error/failure.dart';

mixin HandleFailures {
  Future<Failure> handleFailure(
    ConnectionStatus connectionStatus,
    Object exception,
    StackTrace stackTrace,
  ) async {
    if (kIsWeb) {
      return handleFailureWeb(exception, stackTrace);
    } else {
      return handleFailureMobile(connectionStatus, exception, stackTrace);
    }
  }

  Future<Failure> handleFailureWeb(
    Object exception,
    StackTrace stackTrace,
  ) async {
    if (exception is DioError) {
      if (exception.response?.data != null) {
        return ServerFailure(
            message: handleMessage((exception.response?.data as Map<String, dynamic>)['message']));
      } else {
        return ServerFailure(message: handleMessage(''));
      }
    } else {
      return ServerFailure(message: handleMessage(null));
    }
  }

  Future<Failure> handleFailureMobile(
    ConnectionStatus connectionStatus,
    Object exception,
    StackTrace stackTrace,
  ) async {
    final bool isInternetAvailable = await connectionStatus.isConnected();

    if (!isInternetAvailable) {
      return const ConnectionFailure(message: 'Verifique a sua conexão com a internet');
    } else {
      if (exception is DioError) {
        if (exception.response?.data != null) {
          return ServerFailure(
              message:
                  handleMessage((exception.response?.data as Map<String, dynamic>)['message']));
        } else {
          return ServerFailure(message: handleMessage(''));
        }
      } else {
        return ServerFailure(message: handleMessage(null));
      }
    }
  }

  String handleMessage(String? message) =>
      (message?.isNotEmpty ?? false) ? message! : 'Não foi possível completar esta ação!';
}
