// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/material.dart' as _i5;

import 'package:auto_route/auto_route.dart' as _i4;

import '../init/init.dart' as _i2;
import '../login/view/login_page.dart' as _i1;
import '../protected/protected.dart' as _i3;
import 'auth_router.dart' as _i6;

class AppRouter extends _i4.RootStackRouter {
  AppRouter(
      {_i5.GlobalKey<_i5.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i6.AuthGuard authGuard;

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i4.MaterialPageX<void>(
          routeData: routeData, child: const _i1.LoginPage());
    },
    InitRoute.name: (routeData) {
      return _i4.MaterialPageX<void>(
          routeData: routeData, child: const _i2.InitPage());
    },
    HomeRoute.name: (routeData) {
      return _i4.MaterialPageX<void>(
          routeData: routeData, child: const _i3.HomePage());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(LoginRoute.name, path: '/login'),
        _i4.RouteConfig(InitRoute.name, path: '/'),
        _i4.RouteConfig(HomeRoute.name, path: '/home', guards: [authGuard])
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i4.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.InitPage]
class InitRoute extends _i4.PageRouteInfo<void> {
  const InitRoute() : super(InitRoute.name, path: '/');

  static const String name = 'InitRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home');

  static const String name = 'HomeRoute';
}
