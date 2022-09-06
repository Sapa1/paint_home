import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:paint_home/modules/home/domain/repositories/home_repository.dart';

import '../../../../core/connection_status/connections_status.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/helpers/handle_failures.dart';
import '../datasources/home/home_datasource.dart';
import '../model/paint_response.dart';

class HomeRepositoryImpl extends HomeRepository with HandleFailures {
  final HomeDataSource _homeDataSource;
  final ConnectionStatus _connectionStatus;

  HomeRepositoryImpl(
    this._homeDataSource,
    this._connectionStatus,
  );

  @override
  Future<Either<Failure, PaintResponse>> getPaint() async {
    try {
      final result = await _homeDataSource.getPaint();
      return Right(result);
    } on DioError catch (e, s) {
      return Left(await handleFailure(_connectionStatus, e, s));
    } on Exception catch (e, s) {
      return Left(await handleFailure(_connectionStatus, e, s));
    }
  }
}
