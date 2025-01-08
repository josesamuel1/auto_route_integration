import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This page is protected.',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 16.0),
            Text('Login successful.'),
            Text('You have access to this page.')
          ],
        ),
      ),
    );
  }
}
