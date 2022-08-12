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
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/cupertino.dart' as _i7;
import 'package:flutter/material.dart' as _i5;

import '../init/init.dart' as _i2;
import '../login/login.dart' as _i1;
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
          routeData: routeData,
          child: const _i2.InitPage(),
          maintainState: false);
    },
    HomeRoute.name: (routeData) {
      return _i4.MaterialPageX<void>(
          routeData: routeData, child: const _i3.HomePage());
    },
    AccountRoute.name: (routeData) {
      return _i4.MaterialPageX<void>(
          routeData: routeData, child: const _i3.AccountPage());
    },
    ReportRoute.name: (routeData) {
      return _i4.MaterialPageX<void>(
          routeData: routeData, child: const _i3.ReportPage());
    },
    SettingsRoute.name: (routeData) {
      return _i4.MaterialPageX<void>(
          routeData: routeData, child: const _i3.SettingsPage());
    },
    ReportDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ReportDetailRouteArgs>();
      return _i4.MaterialPageX<void>(
          routeData: routeData,
          child: _i3.ReportDetailPage(key: args.key, report: args.report));
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(LoginRoute.name, path: '/login'),
        _i4.RouteConfig(InitRoute.name, path: '/'),
        _i4.RouteConfig(HomeRoute.name, path: '/home', guards: [
          authGuard
        ], children: [
          _i4.RouteConfig('#redirect',
              path: '',
              parent: HomeRoute.name,
              redirectTo: 'account',
              fullMatch: true),
          _i4.RouteConfig(AccountRoute.name,
              path: 'account', parent: HomeRoute.name),
          _i4.RouteConfig(ReportRoute.name,
              path: 'reports',
              parent: HomeRoute.name,
              children: [
                _i4.RouteConfig(ReportDetailRoute.name,
                    path: 'detail', parent: ReportRoute.name)
              ]),
          _i4.RouteConfig(SettingsRoute.name,
              path: 'settings', parent: HomeRoute.name)
        ])
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
  const HomeRoute({List<_i4.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/home', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.AccountPage]
class AccountRoute extends _i4.PageRouteInfo<void> {
  const AccountRoute() : super(AccountRoute.name, path: 'account');

  static const String name = 'AccountRoute';
}

/// generated route for
/// [_i3.ReportPage]
class ReportRoute extends _i4.PageRouteInfo<void> {
  const ReportRoute({List<_i4.PageRouteInfo>? children})
      : super(ReportRoute.name, path: 'reports', initialChildren: children);

  static const String name = 'ReportRoute';
}

/// generated route for
/// [_i3.SettingsPage]
class SettingsRoute extends _i4.PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: 'settings');

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [_i3.ReportDetailPage]
class ReportDetailRoute extends _i4.PageRouteInfo<ReportDetailRouteArgs> {
  ReportDetailRoute({_i7.Key? key, required _i3.Report report})
      : super(ReportDetailRoute.name,
            path: 'detail',
            args: ReportDetailRouteArgs(key: key, report: report));

  static const String name = 'ReportDetailRoute';
}

class ReportDetailRouteArgs {
  const ReportDetailRouteArgs({this.key, required this.report});

  final _i7.Key? key;

  final _i3.Report report;

  @override
  String toString() {
    return 'ReportDetailRouteArgs{key: $key, report: $report}';
  }
}
