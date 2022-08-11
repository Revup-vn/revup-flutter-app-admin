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
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../init/init.dart' as _i2;
import '../login/view/login_page.dart' as _i1;
import '../protected/modules/account/account.dart' as _i4;
import '../protected/modules/report/view/view.dart' as _i5;
import '../protected/modules/settings/view/view.dart' as _i6;
import '../protected/protected.dart' as _i3;
import 'auth_router.dart' as _i9;

class AppRouter extends _i7.RootStackRouter {
  AppRouter(
      {_i8.GlobalKey<_i8.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i9.AuthGuard authGuard;

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i7.MaterialPageX<void>(
          routeData: routeData, child: const _i1.LoginPage());
    },
    InitRoute.name: (routeData) {
      return _i7.MaterialPageX<void>(
          routeData: routeData, child: const _i2.InitPage());
    },
    HomeRoute.name: (routeData) {
      return _i7.MaterialPageX<void>(
          routeData: routeData, child: const _i3.HomePage());
    },
    AccountRoute.name: (routeData) {
      return _i7.MaterialPageX<void>(
          routeData: routeData, child: const _i4.AccountPage());
    },
    ReportRoute.name: (routeData) {
      return _i7.MaterialPageX<void>(
          routeData: routeData, child: const _i5.ReportPage());
    },
    SettingsRoute.name: (routeData) {
      return _i7.MaterialPageX<void>(
          routeData: routeData, child: const _i6.SettingsPage());
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(LoginRoute.name, path: '/login'),
        _i7.RouteConfig(InitRoute.name, path: '/'),
        _i7.RouteConfig(HomeRoute.name, path: '/home', guards: [
          authGuard
        ], children: [
          _i7.RouteConfig('#redirect',
              path: '',
              parent: HomeRoute.name,
              redirectTo: 'account',
              fullMatch: true),
          _i7.RouteConfig(AccountRoute.name,
              path: 'account', parent: HomeRoute.name),
          _i7.RouteConfig(ReportRoute.name,
              path: 'reports', parent: HomeRoute.name),
          _i7.RouteConfig(SettingsRoute.name,
              path: 'settings', parent: HomeRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i7.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.InitPage]
class InitRoute extends _i7.PageRouteInfo<void> {
  const InitRoute() : super(InitRoute.name, path: '/');

  static const String name = 'InitRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/home', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.AccountPage]
class AccountRoute extends _i7.PageRouteInfo<void> {
  const AccountRoute() : super(AccountRoute.name, path: 'account');

  static const String name = 'AccountRoute';
}

/// generated route for
/// [_i5.ReportPage]
class ReportRoute extends _i7.PageRouteInfo<void> {
  const ReportRoute() : super(ReportRoute.name, path: 'reports');

  static const String name = 'ReportRoute';
}

/// generated route for
/// [_i6.SettingsPage]
class SettingsRoute extends _i7.PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: 'settings');

  static const String name = 'SettingsRoute';
}
