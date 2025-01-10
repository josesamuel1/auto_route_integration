import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hey!\n\nThis app was created to study and\npractice Auto Route concepts.\n\nEnjoy the code!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
