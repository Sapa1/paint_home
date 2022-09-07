import 'package:paint_home/core/dio/paint_dio.dart';

import '../../../domain/entities/user_entity.dart';
import 'profile_datasource.dart';

class ProfileDataSourceImpl implements ProfileDataSource {
  final PaintDio paintDio;

  ProfileDataSourceImpl(this.paintDio);

  @override
  Future<UserEntity> getUser() async {
    final response = await paintDio.get('/profile');
    return UserEntity.fromMap(response.data);
  }
}
