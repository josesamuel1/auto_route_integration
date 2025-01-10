import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MyComments extends StatelessWidget {
  const MyComments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Comments'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'My Comments Screen',
              style: TextStyle(fontSize: 24.0),
            ),
          )
        ],
      ),
    );
  }
}
