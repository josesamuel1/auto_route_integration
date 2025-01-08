import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../routes/app_router.gr.dart';

@RoutePage()
class ScreenB extends StatelessWidget {
  const ScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen B'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.green),
                foregroundColor: WidgetStatePropertyAll(Colors.white),
              ),
              onPressed: () {
                context.router.push(RouteC());
              },
              child: Text('Go to Screen C'),
            )
          ],
        ),
      ),
    );
  }
}
