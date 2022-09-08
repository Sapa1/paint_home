import '../../../domain/entities/user_entity.dart';

abstract class ProfileDataSource {
  Future<UserEntity> getUser();
}
