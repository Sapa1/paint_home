import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/register_entity.dart';
import '../repositories/register_repository.dart';

class DoRegisterUseCase implements UseCase<String, RegisterEntity> {
  final RegisterRepository registerRepository;

  DoRegisterUseCase(this.registerRepository);

  @override
  Future<Either<Failure, String>> call(RegisterEntity registerEntity) async =>
      registerRepository.doRegister(registerEntity);
}
