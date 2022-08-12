import 'package:auto_route/auto_route.dart';

import '../init/init.dart';
import '../login/login.dart';
import '../protected/protected.dart';
import 'auth_router.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute<void>(
      page: LoginPage,
      path: '/login',
    ),
    AutoRoute<void>(
      page: InitPage,
      path: '/',
      initial: true,
      maintainState: false,
    ),
    AutoRoute<void>(
      guards: [AuthGuard],
      page: HomePage,
      path: '/home',
      children: [
        RedirectRoute(path: '', redirectTo: 'account'),
        AutoRoute<void>(
          page: AccountPage,
          path: 'account',
        ),
        AutoRoute<void>(
          page: ReportPage,
          path: 'reports',
          children: [
            AutoRoute<void>(
              page: ReportDetailPage,
              path: 'detail',
            ),
          ],
        ),
        AutoRoute<void>(
          page: SettingsPage,
          path: 'settings',
        ),
      ],
    ),
  ],
)
class $AppRouter {}
