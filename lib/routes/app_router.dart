import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  // Contém todas as rotas existentes no app
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: RouteA.page, initial: true),
        AutoRoute(page: RouteB.page),
        AutoRoute(page: RouteC.page),
      ];
}
