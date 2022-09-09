import 'package:paint_home/core/dio/paint_dio.dart';
import 'package:paint_home/modules/register/domain/entities/register_entity.dart';

import 'register_datasource.dart';

class RegisterDataSourceImpl implements RegisterDataSource {
  final PaintDio paintDio;

  RegisterDataSourceImpl(this.paintDio);

  @override
  Future<String> doRegister(RegisterEntity registerEntity) async {
    final response = await paintDio.post(
      '/user',
      data: registerEntity.toJson(),
    );
    print(response.data);
    return '';
  }
}
