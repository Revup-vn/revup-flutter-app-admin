import 'package:auto_route/auto_route.dart';

import '../home/view/home_page.dart';
import '../login/view/login_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute<void>(
      page: LoginPage,
      initial: true,
    ),
    AutoRoute<void>(page: HomePage)
  ],
)
class $AppRouter {}
