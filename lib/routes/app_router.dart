import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  // Contém todas as rotas existentes no app
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: MainRoute.page,
          initial: true,
          children: [
            AutoRoute(page: HomeRoute.page),
            AutoRoute(
              page: ProfileNavRoute.page,
              children: [
                AutoRoute(page: ProfileRoute.page, initial: true),
                AutoRoute(page: MyPosts.page),
                AutoRoute(page: MyLikes.page),
                AutoRoute(page: MyComments.page),
              ],
            ),
            AutoRoute(
              page: SettingsNavRoute.page,
              children: [
                AutoRoute(page: SettingsRoute.page, initial: true),
                AutoRoute(page: AccountRoute.page),
                AutoRoute(page: NotificationsRoute.page),
                AutoRoute(page: AboutRoute.page),
              ],
            ),
          ],
        ),
      ];
}
