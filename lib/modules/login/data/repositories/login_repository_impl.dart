import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:paint_home/modules/login/domain/entities/login_entity.dart';

import '../../../../core/connection_status/connections_status.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/helpers/handle_failures.dart';
import '../../domain/repositories/login_repository.dart';
import '../datasources/login_datasource.dart';
import '../model/login_response.dart';

class LoginRepositoryImpl extends LoginRepository with HandleFailures {
  final LoginDataSource _loginDataSource;
  final ConnectionStatus _connectionStatus;

  LoginRepositoryImpl(
    this._loginDataSource,
    this._connectionStatus,
  );

  @override
  Future<Either<Failure, LoginResponse>> doLogin(LoginEntity loginEntity) async {
    try {
      final result = await _loginDataSource.doLogin(loginEntity);
      return Right(result);
    } on DioError catch (e, s) {
      return Left(await handleFailure(_connectionStatus, e, s));
    } on Exception catch (e, s) {
      return Left(await handleFailure(_connectionStatus, e, s));
    }
  }
}
