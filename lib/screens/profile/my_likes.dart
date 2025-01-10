import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MyLikes extends StatelessWidget {
  const MyLikes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Likes'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'My Likes Screen',
              style: TextStyle(fontSize: 24.0),
            ),
          )
        ],
      ),
    );
  }
}
