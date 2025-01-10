import 'package:auto_route/auto_route.dart';
import 'package:auto_route_integration/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          ListTile(
            title: Text('My Posts'),
            onTap: () {
              AutoRouter.of(context).push(MyPosts());
            },
          ),
          ListTile(
            title: Text('My Likes'),
            onTap: () {
              AutoRouter.of(context).push(MyLikes());
            },
          ),
          ListTile(
            title: Text('My Comments'),
            onTap: () {
              AutoRouter.of(context).push(MyComments());
            },
          ),
        ],
      ),
    );
  }
}
