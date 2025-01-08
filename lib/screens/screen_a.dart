import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../routes/app_router.gr.dart';

@RoutePage()
class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen A'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.red),
                foregroundColor: WidgetStatePropertyAll(Colors.white),
              ),
              onPressed: () {
                AutoRouter.of(context).push(RouteB());
              },
              child: Text('Go to Screen B'),
            )
          ],
        ),
      ),
    );
  }
}
