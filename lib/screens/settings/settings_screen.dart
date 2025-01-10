import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../routes/app_router.gr.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          ListTile(
            title: Text('My Account'),
            onTap: () {
              AutoRouter.of(context).push(AccountRoute());
            },
          ),
          ListTile(
            title: Text('Notifications'),
            onTap: () {
              AutoRouter.of(context).push(NotificationsRoute());
            },
          ),
          ListTile(
            title: Text('About'),
            onTap: () {
              AutoRouter.of(context).push(AboutRoute());
            },
          ),
        ],
      ),
    );
  }
}
