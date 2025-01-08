import 'package:auto_route/auto_route.dart';
import 'package:auto_route_integration/routes/app_router.gr.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    // Resgatando o valor de 'logged_in' armazenado nas SharedPreferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // Armazenando valor em variável com verificação para saber se é nulo
    // Caso o valor seja nulo, automaticamente altera para 'false'
    bool loggedIn = prefs.getBool('logged_in') ?? false;

    if (loggedIn) {
      // Se o usuário ja tivesse logado, a LoginScreen é skipada
      resolver.next(true);
    } else {
      router.push(
        LoginRoute(onResult: (result) {
          // Caso a tentativa de login retorne True
          if (result == true) {
            // Libera o acesso à rota prevista
            resolver.next(true);
            // Remove a tela de login do caminho
            router.removeLast();
          }
        }),
      );
    }
  }
}
