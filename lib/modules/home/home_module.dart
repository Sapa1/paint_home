import 'package:flutter_modular/flutter_modular.dart';
import 'package:paint_home/modules/home/presentation/page/home_page.dart';

import '../../core/const/routes.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        //Bloc

        //UseCases

        //Repositories

        //DataSources
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          AppRoutes.initial,
          child: (context, args) => const HomePage(),
        ),
      ];
}
