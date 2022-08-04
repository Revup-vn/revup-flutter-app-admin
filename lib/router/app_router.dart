import 'package:auto_route/auto_route.dart';

import '../init/init.dart';
import '../login/view/login_page.dart';
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
    ),
  ],
)
class $AppRouter {}
