import 'package:flutter_modular/flutter_modular.dart';
import 'package:paint_home/modules/home/presentation/page/cart_page.dart';
import 'package:paint_home/modules/home/presentation/page/home_page.dart';
import 'package:paint_home/modules/home/presentation/page/home_pageview.dart';
import 'package:paint_home/modules/home/presentation/page/profile_page.dart';

import '../../core/const/routes.dart';
import 'data/datasources/home_datasource.dart';
import 'data/datasources/home_datasource_impl.dart';
import 'data/repositories/home_repository_impl.dart';
import 'domain/repositories/home_repository.dart';
import 'domain/usecases/get_paint_usecase.dart';
import 'presentation/bloc/home_bloc.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        //Bloc
        Bind.factory((i) => HomeBloc(i.get())),

        //UseCases
        Bind.factory((i) => GetPaintUseCase(i.get())),

        //Repositories
        Bind.factory<HomeRepository>((i) => HomeRepositoryImpl(i.get(), i.get())),

        //DataSources
        Bind.factory<HomeDataSource>((i) => HomeDataSourceImpl(i.get())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          AppRoutes.initial,
          child: (context, args) => const HomePageView(),
        ),
        ChildRoute(
          AppRoutes.home,
          child: (context, args) => const HomePage(),
        ),
        ChildRoute(
          AppRoutes.cart,
          child: (context, args) => const CartPage(),
        ),
        ChildRoute(
          AppRoutes.profile,
          child: (context, args) => const ProfilePage(),
        ),
      ];
}
