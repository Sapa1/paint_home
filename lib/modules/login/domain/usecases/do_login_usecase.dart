import 'package:dartz/dartz.dart';
import 'package:paint_home/modules/login/domain/entities/login_entity.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../data/model/login_response.dart';
import '../repositories/login_repository.dart';

class DoLoginUseCase implements UseCase<LoginResponse, LoginEntity> {
  final LoginRepository loginRepository;

  DoLoginUseCase(this.loginRepository);

  @override
  Future<Either<Failure, LoginResponse>> call(LoginEntity loginEntity) async =>
      loginRepository.doLogin(loginEntity);
}
