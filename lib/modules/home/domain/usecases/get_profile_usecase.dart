import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/user_entity.dart';
import '../repositories/profile_repository.dart';

class GetProfileUseCase implements UseCase<UserEntity, NoParams> {
  final ProfileRepository profileRepository;

  GetProfileUseCase(this.profileRepository);

  @override
  Future<Either<Failure, UserEntity>> call([void params]) async => profileRepository.getUser();
}
