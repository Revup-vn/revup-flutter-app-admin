import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';

import '../init/init.dart';
import '../login/login.dart';
import '../protected/protected.dart';
import 'auth_router.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute<void>(
      page: EmptyRouterPage,
      path: '/',
      children: [
        AutoRoute<void>(
          page: InitPage,
          path: '',
          maintainState: false,
        ),
        AutoRoute<void>(
          page: LoginPage,
          path: 'login',
        ),
        AutoRoute<void>(
          guards: [AuthGuard],
          page: HomePage,
          path: 'home',
          children: [
            RedirectRoute(
              path: '',
              redirectTo: 'account',
            ),
            AutoRoute<void>(
              page: AccountPage,
              path: 'account',
            ),
            AutoRoute<void>(
              page: EmptyRouterPage,
              path: 'verifications',
              name: 'ProviderVerificationRouter',
              children: [
                AutoRoute<void>(
                  page: ProviderVerificationPage,
                  path: '',
                ),
                AutoRoute<void>(
                  page: VerificationDetailPage,
                  path: 'detail',
                ),
              ],
            ),
            AutoRoute<void>(
              page: EmptyRouterPage,
              path: 'reports',
              name: 'ReportRouter',
              children: [
                AutoRoute<void>(
                  page: ReportPage,
                  path: '',
                ),
                AutoRoute<void>(
                  page: ReportDetailPage,
                  path: 'details',
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
    ),
  ],
)
class $AppRouter {}
