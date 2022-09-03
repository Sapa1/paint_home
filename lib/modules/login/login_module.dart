import 'package:flutter_modular/flutter_modular.dart';
import 'package:paint_home/modules/login/data/datasources/login_datasource.dart';
import 'package:paint_home/modules/login/data/datasources/login_datasource_impl.dart';
import 'package:paint_home/modules/login/presentation/bloc/login_bloc.dart';

import '../../core/const/routes.dart';
import 'data/repositories/login_repository_impl.dart';
import 'domain/repositories/login_repository.dart';
import 'domain/usecases/do_login_usecase.dart';
import 'presentation/page/login_page.dart';

class LoginModule extends Module {
  @override
  List<Bind> get binds => [
        //Bloc
        Bind.factory((i) => LoginBloc(i.get())),
        //UseCases
        Bind.factory((i) => DoLoginUseCase(i.get())),

        //Repositories
        Bind.factory<LoginRepository>((i) => LoginRepositoryImpl(i.get(), i.get())),

        //DataSources
        Bind.factory<LoginDataSource>((i) => LoginDataSourceImpl(i.get())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          AppRoutes.initial,
          child: (context, args) => const LoginPage(),
        ),
      ];
}
