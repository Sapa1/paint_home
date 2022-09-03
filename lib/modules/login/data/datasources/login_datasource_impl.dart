import 'package:paint_home/core/dio/paint_dio.dart';
import 'package:paint_home/modules/login/data/model/login_response.dart';
import 'package:paint_home/modules/login/domain/entities/login_entity.dart';

import 'login_datasource.dart';

class LoginDataSourceImpl implements LoginDataSource {
  final PaintDio paintDio;

  LoginDataSourceImpl(this.paintDio);

//TODO: ver se esse endpoint está correto ( se não é pra mandar a informação do usuario )
  @override
  Future<LoginResponse> doLogin(LoginEntity loginEntity) async {
    final response = await paintDio.get('/login');
    return LoginResponse.fromMap(response.data);
  }
}
