import 'package:paint_home/core/dio/paint_dio.dart';
import 'package:paint_home/modules/login/data/model/login_response.dart';
import 'package:paint_home/modules/login/domain/entities/login_entity.dart';

import 'login_datasource.dart';

class LoginDataSourceImpl implements LoginDataSource {
  final PaintDio paintDio;

  LoginDataSourceImpl(this.paintDio);

  @override
  Future<LoginResponse> doLogin(LoginEntity loginEntity) async {
    final response = await paintDio.get('/login');
    return LoginResponse.fromMap(response.data);
  }
}
