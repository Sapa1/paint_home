import 'package:paint_home/modules/login/data/model/login_response.dart';

import '../../domain/entities/login_entity.dart';

abstract class LoginDataSource {
  Future<LoginResponse> doLogin(LoginEntity loginEntity);
}
