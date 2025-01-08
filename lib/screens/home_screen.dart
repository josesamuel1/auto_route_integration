import 'package:auto_route/auto_route.dart';
import 'package:auto_route_integration/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Função para verificar o estado de login do usuário atual
  _logout(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool loggedIn = prefs.getBool('logged_in') ?? false;

    if (loggedIn) {
      // Caso o usuário estivesse logado
      prefs.clear();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Successful logout.')),
      );
    } else {
      // Caso não estivesse logado
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('You are no longer logged in.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Botão para visualizar a ProfileScreen
            // Rota protegida (redireciona para LoginScreen)
            ElevatedButton(
              child: Text('Go To Profile Screen (Protected)'),
              onPressed: () {
                AutoRouter.of(context).push(ProfileRoute());
              },
            ),
            SizedBox(height: 20.0),
            // Botão para visualizar a AboutScreen
            // Rota não protegida (redireciona para AboutScreen)
            ElevatedButton(
              child: Text('Go To About Screen (Not Protected)'),
              onPressed: () {
                AutoRouter.of(context).push(AboutRoute());
              },
            ),
            SizedBox(height: 20.0),
            // Botão de Logout
            // Muda o valor de 'logged_in' armazenado nas SharedPreferences
            ElevatedButton(
              child: Text('Logout'),
              onPressed: () async {
                _logout(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
