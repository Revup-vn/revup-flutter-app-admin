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

import 'package:flutter/cupertino.dart' as _i9;
import 'package:flutter/material.dart' as _i7;

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:auto_route/empty_router_widgets.dart' as _i1;

import '../init/init.dart' as _i2;
import '../login/login.dart' as _i3;
import '../protected/modules/users/view/view.dart' as _i5;
import '../protected/protected.dart' as _i4;
import 'auth_router.dart' as _i8;

class AppRouter extends _i6.RootStackRouter {
  AppRouter(
      {_i7.GlobalKey<_i7.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i8.AuthGuard authGuard;

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    EmptyRouterRoute.name: (routeData) {
      return _i6.MaterialPageX<void>(
          routeData: routeData, child: const _i1.EmptyRouterPage());
    },
    InitRoute.name: (routeData) {
      return _i6.MaterialPageX<void>(
          routeData: routeData,
          child: const _i2.InitPage(),
          maintainState: false);
    },
    LoginRoute.name: (routeData) {
      return _i6.MaterialPageX<void>(
          routeData: routeData, child: const _i3.LoginPage());
    },
    HomeRoute.name: (routeData) {
      return _i6.MaterialPageX<void>(
          routeData: routeData, child: const _i4.HomePage());
    },
    AccountRoute.name: (routeData) {
      return _i6.MaterialPageX<void>(
          routeData: routeData, child: const _i4.AccountPage());
    },
    UsersRoute.name: (routeData) {
      return _i6.MaterialPageX<void>(
          routeData: routeData, child: const _i5.UsersPage());
    },
    ProviderVerificationRouter.name: (routeData) {
      return _i6.MaterialPageX<void>(
          routeData: routeData, child: const _i1.EmptyRouterPage());
    },
    ReportRouter.name: (routeData) {
      return _i6.MaterialPageX<void>(
          routeData: routeData, child: const _i1.EmptyRouterPage());
    },
    SettingsRoute.name: (routeData) {
      return _i6.MaterialPageX<void>(
          routeData: routeData, child: const _i4.SettingsPage());
    },
    ProviderVerificationRoute.name: (routeData) {
      return _i6.MaterialPageX<void>(
          routeData: routeData, child: const _i4.ProviderVerificationPage());
    },
    VerificationDetailRoute.name: (routeData) {
      final args = routeData.argsAs<VerificationDetailRouteArgs>();
      return _i6.MaterialPageX<void>(
          routeData: routeData,
          child: _i4.VerificationDetailPage(key: args.key, data: args.data));
    },
    ReportRoute.name: (routeData) {
      return _i6.MaterialPageX<void>(
          routeData: routeData, child: const _i4.ReportPage());
    },
    ReportDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ReportDetailRouteArgs>();
      return _i6.MaterialPageX<void>(
          routeData: routeData,
          child: _i4.ReportDetailPage(key: args.key, report: args.report));
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(EmptyRouterRoute.name, path: '/', children: [
          _i6.RouteConfig(InitRoute.name,
              path: '', parent: EmptyRouterRoute.name),
          _i6.RouteConfig(LoginRoute.name,
              path: 'login', parent: EmptyRouterRoute.name),
          _i6.RouteConfig(HomeRoute.name,
              path: 'home',
              parent: EmptyRouterRoute.name,
              guards: [
                authGuard
              ],
              children: [
                _i6.RouteConfig('#redirect',
                    path: '',
                    parent: HomeRoute.name,
                    redirectTo: 'account',
                    fullMatch: true),
                _i6.RouteConfig(AccountRoute.name,
                    path: 'account', parent: HomeRoute.name),
                _i6.RouteConfig(UsersRoute.name,
                    path: 'users', parent: HomeRoute.name),
                _i6.RouteConfig(ProviderVerificationRouter.name,
                    path: 'verifications',
                    parent: HomeRoute.name,
                    children: [
                      _i6.RouteConfig(ProviderVerificationRoute.name,
                          path: '', parent: ProviderVerificationRouter.name),
                      _i6.RouteConfig(VerificationDetailRoute.name,
                          path: 'detail',
                          parent: ProviderVerificationRouter.name)
                    ]),
                _i6.RouteConfig(ReportRouter.name,
                    path: 'reports',
                    parent: HomeRoute.name,
                    children: [
                      _i6.RouteConfig(ReportRoute.name,
                          path: '', parent: ReportRouter.name),
                      _i6.RouteConfig(ReportDetailRoute.name,
                          path: 'details', parent: ReportRouter.name)
                    ]),
                _i6.RouteConfig(SettingsRoute.name,
                    path: 'settings', parent: HomeRoute.name)
              ])
        ])
      ];
}

/// generated route for
/// [_i1.EmptyRouterPage]
class EmptyRouterRoute extends _i6.PageRouteInfo<void> {
  const EmptyRouterRoute({List<_i6.PageRouteInfo>? children})
      : super(EmptyRouterRoute.name, path: '/', initialChildren: children);

  static const String name = 'EmptyRouterRoute';
}

/// generated route for
/// [_i2.InitPage]
class InitRoute extends _i6.PageRouteInfo<void> {
  const InitRoute() : super(InitRoute.name, path: '');

  static const String name = 'InitRoute';
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i6.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: 'login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(HomeRoute.name, path: 'home', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.AccountPage]
class AccountRoute extends _i6.PageRouteInfo<void> {
  const AccountRoute() : super(AccountRoute.name, path: 'account');

  static const String name = 'AccountRoute';
}

/// generated route for
/// [_i5.UsersPage]
class UsersRoute extends _i6.PageRouteInfo<void> {
  const UsersRoute() : super(UsersRoute.name, path: 'users');

  static const String name = 'UsersRoute';
}

/// generated route for
/// [_i1.EmptyRouterPage]
class ProviderVerificationRouter extends _i6.PageRouteInfo<void> {
  const ProviderVerificationRouter({List<_i6.PageRouteInfo>? children})
      : super(ProviderVerificationRouter.name,
            path: 'verifications', initialChildren: children);

  static const String name = 'ProviderVerificationRouter';
}

/// generated route for
/// [_i1.EmptyRouterPage]
class ReportRouter extends _i6.PageRouteInfo<void> {
  const ReportRouter({List<_i6.PageRouteInfo>? children})
      : super(ReportRouter.name, path: 'reports', initialChildren: children);

  static const String name = 'ReportRouter';
}

/// generated route for
/// [_i4.SettingsPage]
class SettingsRoute extends _i6.PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: 'settings');

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [_i4.ProviderVerificationPage]
class ProviderVerificationRoute extends _i6.PageRouteInfo<void> {
  const ProviderVerificationRoute()
      : super(ProviderVerificationRoute.name, path: '');

  static const String name = 'ProviderVerificationRoute';
}

/// generated route for
/// [_i4.VerificationDetailPage]
class VerificationDetailRoute
    extends _i6.PageRouteInfo<VerificationDetailRouteArgs> {
  VerificationDetailRoute({_i9.Key? key, required _i4.VerificationInfo data})
      : super(VerificationDetailRoute.name,
            path: 'detail',
            args: VerificationDetailRouteArgs(key: key, data: data));

  static const String name = 'VerificationDetailRoute';
}

class VerificationDetailRouteArgs {
  const VerificationDetailRouteArgs({this.key, required this.data});

  final _i9.Key? key;

  final _i4.VerificationInfo data;

  @override
  String toString() {
    return 'VerificationDetailRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i4.ReportPage]
class ReportRoute extends _i6.PageRouteInfo<void> {
  const ReportRoute() : super(ReportRoute.name, path: '');

  static const String name = 'ReportRoute';
}

/// generated route for
/// [_i4.ReportDetailPage]
class ReportDetailRoute extends _i6.PageRouteInfo<ReportDetailRouteArgs> {
  ReportDetailRoute({_i9.Key? key, required _i4.Report report})
      : super(ReportDetailRoute.name,
            path: 'details',
            args: ReportDetailRouteArgs(key: key, report: report));

  static const String name = 'ReportDetailRoute';
}

class ReportDetailRouteArgs {
  const ReportDetailRouteArgs({this.key, required this.report});

  final _i9.Key? key;

  final _i4.Report report;

  @override
  String toString() {
    return 'ReportDetailRouteArgs{key: $key, report: $report}';
  }
}
