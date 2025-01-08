// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:auto_route_integration/screens/screen_a.dart' as _i1;
import 'package:auto_route_integration/screens/screen_b.dart' as _i2;
import 'package:auto_route_integration/screens/screen_c.dart' as _i3;

/// generated route for
/// [_i1.ScreenA]
class RouteA extends _i4.PageRouteInfo<void> {
  const RouteA({List<_i4.PageRouteInfo>? children})
      : super(
          RouteA.name,
          initialChildren: children,
        );

  static const String name = 'RouteA';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.ScreenA();
    },
  );
}

/// generated route for
/// [_i2.ScreenB]
class RouteB extends _i4.PageRouteInfo<void> {
  const RouteB({List<_i4.PageRouteInfo>? children})
      : super(
          RouteB.name,
          initialChildren: children,
        );

  static const String name = 'RouteB';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.ScreenB();
    },
  );
}

/// generated route for
/// [_i3.ScreenC]
class RouteC extends _i4.PageRouteInfo<void> {
  const RouteC({List<_i4.PageRouteInfo>? children})
      : super(
          RouteC.name,
          initialChildren: children,
        );

  static const String name = 'RouteC';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.ScreenC();
    },
  );
}
