import 'package:flutter_modular/flutter_modular.dart';

import '../../core/const/routes.dart';
import 'presentation/page/login_page.dart';

class LoginModule extends Module {
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
          child: (context, args) => const LoginPage(),
        ),
      ];
}
