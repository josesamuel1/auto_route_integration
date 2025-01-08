// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:auto_route_integration/screens/about_screen.dart' as _i1;
import 'package:auto_route_integration/screens/home_screen.dart' as _i2;
import 'package:auto_route_integration/screens/login_screen.dart' as _i3;
import 'package:auto_route_integration/screens/profile_screen.dart' as _i4;
import 'package:flutter/material.dart' as _i6;

/// generated route for
/// [_i1.AboutScreen]
class AboutRoute extends _i5.PageRouteInfo<void> {
  const AboutRoute({List<_i5.PageRouteInfo>? children})
      : super(
          AboutRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.AboutScreen();
    },
  );
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomeScreen();
    },
  );
}

/// generated route for
/// [_i3.LoginScreen]
class LoginRoute extends _i5.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i6.Key? key,
    required dynamic Function(bool?) onResult,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(
            key: key,
            onResult: onResult,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoginRouteArgs>();
      return _i3.LoginScreen(
        key: args.key,
        onResult: args.onResult,
      );
    },
  );
}

class LoginRouteArgs {
  const LoginRouteArgs({
    this.key,
    required this.onResult,
  });

  final _i6.Key? key;

  final dynamic Function(bool?) onResult;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, onResult: $onResult}';
  }
}

/// generated route for
/// [_i4.ProfileScreen]
class ProfileRoute extends _i5.PageRouteInfo<void> {
  const ProfileRoute({List<_i5.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.ProfileScreen();
    },
  );
}
