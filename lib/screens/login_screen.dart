import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  // Variável usada pelo AuthGuard para verificação de Login
  final Function(bool?) onResult;
  const LoginScreen({
    super.key,
    required this.onResult,
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Controllers para a entrada de dados do login
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  void dispose() {
    _username.dispose();
    _password.dispose();
    super.dispose();
  }

  _login() async {
    // Formatação da variável sem espaços no início e fim
    String username = _username.text.trim();
    String password = _password.text.trim();

    // Verificação de login
    if (username == 'username' && password == 'password') {
      // Caso o login seja bem sucedido
      // Salvando o login no SharedPreferences
      SharedPreferences prefs = await SharedPreferences.getInstance();
      // Salvando o estado do usuário logado
      prefs.setBool('logged_in', true);
      widget.onResult.call(true);
    } else {
      // Mensagem de erro
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Wrong username or pasword. Please try again.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          // Entrada de dado 'username'
          TextFormField(
            controller: _username,
            decoration: InputDecoration(hintText: 'Username'),
          ),
          SizedBox(height: 20.0),
          // Entrada de dado 'password'
          TextFormField(
            controller: _password,
            decoration: InputDecoration(hintText: 'Password'),
          ),
          SizedBox(height: 20.0),
          // Botão para executar o login
          ElevatedButton(
            child: Text('Login'),
            onPressed: () {
              _login();
            },
          )
        ],
      ),
    );
  }
}
