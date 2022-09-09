import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:paint_home/modules/register/domain/entities/register_entity.dart';

import '../../../../core/connection_status/connections_status.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/helpers/handle_failures.dart';
import '../../domain/repositories/register_repository.dart';
import '../datasources/register_datasource.dart';

class RegisterRepositoryImpl extends RegisterRepository with HandleFailures {
  final RegisterDataSource _registerDataSource;
  final ConnectionStatus _connectionStatus;

  RegisterRepositoryImpl(
    this._registerDataSource,
    this._connectionStatus,
  );

  @override
  Future<Either<Failure, String>> doRegister(RegisterEntity registerEntity) async {
    try {
      final result = await _registerDataSource.doRegister(registerEntity);
      return Right(result);
    } on DioError catch (e, s) {
      return Left(await handleFailure(_connectionStatus, e, s));
    } on Exception catch (e, s) {
      return Left(await handleFailure(_connectionStatus, e, s));
    }
  }
}
