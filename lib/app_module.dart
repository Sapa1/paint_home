import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:paint_home/modules/home/home_module.dart';

import 'core/connection_status/connection_status_impl.dart';
import 'core/connection_status/connections_status.dart';
import 'core/const/routes.dart';
import 'core/dio/paint_dio.dart';
import 'core/local_storage/local_storage_impl.dart';
import 'core/local_storage/secure_local_storage_impl.dart';
import 'modules/login/login_module.dart';

class AppModule extends Module {
  AppModule();

  @override
  List<Bind> get binds => [
        //Components
        Bind.factory((i) => PaintDio()),
        Bind.singleton<ConnectionStatus>((i) => ConnectionStatusImpl()),

        //region Local Dependencies
        Bind.singleton((i) => const FlutterSecureStorage()),
        Bind.singleton((i) => SecureLocalStorageImpl(i.get())),
        //endregion

        Bind.factory((i) => LocalStorageImpl()),

        //Bloc

        //usecase

        //repository

        //datasource
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(AppRoutes.initial, module: LoginModule()),
        ModuleRoute(AppRoutes.home, module: HomeModule()),
      ];
}
