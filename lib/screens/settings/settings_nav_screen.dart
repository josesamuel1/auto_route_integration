import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SettingsNavScreen extends StatelessWidget {
  const SettingsNavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoRouter();
  }
}
