import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProfileNavScreen extends StatelessWidget {
  const ProfileNavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoRouter();
  }
}
