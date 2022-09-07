import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:paint_home/modules/home/domain/repositories/profile_repository.dart';

import '../../../../core/connection_status/connections_status.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/helpers/handle_failures.dart';
import '../../domain/entities/user_entity.dart';
import '../datasources/profile/profile_datasource.dart';

class ProfileRepositoryImpl extends ProfileRepository with HandleFailures {
  final ProfileDataSource _profileDataSource;
  final ConnectionStatus _connectionStatus;

  ProfileRepositoryImpl(
    this._profileDataSource,
    this._connectionStatus,
  );

  @override
  Future<Either<Failure, UserEntity>> getUser() async {
    try {
      final result = await _profileDataSource.getUser();
      return Right(result);
    } on DioError catch (e, s) {
      return Left(await handleFailure(_connectionStatus, e, s));
    } on Exception catch (e, s) {
      return Left(await handleFailure(_connectionStatus, e, s));
    }
  }
}
