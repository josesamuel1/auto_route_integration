import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

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
            Text(
              'This page is not protected.',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 16.0),
            Text('Anyone have access to this page.')
          ],
        ),
      ),
    );
  }
}
