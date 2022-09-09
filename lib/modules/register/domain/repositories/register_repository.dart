import 'package:dartz/dartz.dart';
import 'package:paint_home/modules/register/domain/entities/register_entity.dart';

import '../../../../core/error/failure.dart';

abstract class RegisterRepository {
  Future<Either<Failure, String>> doRegister(RegisterEntity registerEntity);
}
