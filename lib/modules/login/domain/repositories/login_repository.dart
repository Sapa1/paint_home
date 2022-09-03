import 'package:dartz/dartz.dart';
import 'package:paint_home/modules/login/domain/entities/login_entity.dart';

import '../../../../core/error/failure.dart';
import '../../data/model/login_response.dart';

abstract class LoginRepository {
  Future<Either<Failure, LoginResponse>> doLogin(LoginEntity loginEntity);
}
