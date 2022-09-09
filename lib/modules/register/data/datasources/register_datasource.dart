import 'package:paint_home/modules/register/domain/entities/register_entity.dart';

abstract class RegisterDataSource {
  Future<String> doRegister(RegisterEntity registerEntity);
}
