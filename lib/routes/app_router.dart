import 'package:auto_route/auto_route.dart';
import 'package:auto_route_integration/routes/guard/auth_guard.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  // Contém todas as rotas existentes no app
  @override
  List<AutoRoute> get routes => [
        // Home Page
        // Página Inicial
        AutoRoute(page: HomeRoute.page, initial: true),

        // Login Page
        // Página que faz a autenticação
        AutoRoute(page: LoginRoute.page),

        // Profile Page
        // Página protegida pela Autenticação
        AutoRoute(page: ProfileRoute.page, guards: [AuthGuard()]),

        // About Page
        AutoRoute(page: AboutRoute.page),
      ];
}
