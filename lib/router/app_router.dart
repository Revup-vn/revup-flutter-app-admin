import 'package:auto_route/auto_route.dart';

import '../init/init.dart';
import '../login/view/login_page.dart';
import '../protected/modules/account/account.dart';
import '../protected/modules/report/view/report_page.dart';
import '../protected/modules/settings/view/view.dart';
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
