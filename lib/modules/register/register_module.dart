import 'package:flutter_modular/flutter_modular.dart';
import 'package:paint_home/modules/register/presentation/bloc/register_bloc.dart';

import '../../core/const/routes.dart';
import 'data/datasources/register_datasource.dart';
import 'data/datasources/register_datasource_impl.dart';
import 'data/repositories/register_repository_impl.dart';
import 'domain/repositories/register_repository.dart';
import 'domain/usecases/do_register_usecase.dart';
import 'presentation/page/register_page.dart';

class RegisterModule extends Module {
  @override
  List<Bind> get binds => [
        //Bloc
        Bind.factory((i) => RegisterBloc(i.get())),
        //UseCases
        Bind.factory((i) => DoRegisterUseCase(i.get())),

        //Repositories
        Bind.factory<RegisterRepository>((i) => RegisterRepositoryImpl(i.get(), i.get())),

        //DataSources
        Bind.factory<RegisterDataSource>((i) => RegisterDataSourceImpl(i.get())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          AppRoutes.initial,
          child: (context, args) => const RegisterPage(),
        ),
      ];
}
