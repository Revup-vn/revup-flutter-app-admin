import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import '../../../router/router.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) => AutoTabsScaffold(
        routes: const [
          AccountRoute(),
          DashboardRoute(),
          ProviderVerificationRouter(),
          UsersRoute(),
          ReportRouter(),
          SettingsRoute(),
        ],
        builder: (context, child, animation) {
          final _tabRouter = AutoTabsRouter.of(context);

          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NavigationRail(
                destinations: const [
                  NavigationRailDestination(
                    icon: Icon(Icons.person_outline),
                    selectedIcon: Icon(Icons.person),
                    label: Text('Account'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.admin_panel_settings_outlined),
                    selectedIcon: Icon(Icons.admin_panel_settings),
                    label: Text('Dashboard'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.check_circle_outline),
                    selectedIcon: Icon(Icons.check_circle),
                    label: Text(
                      'Accounts\nverification',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.person_search_outlined),
                    selectedIcon: Icon(Icons.person_search),
                    label: Text('Users'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.document_scanner_outlined),
                    selectedIcon: Icon(Icons.document_scanner),
                    label: Text('Reports'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.settings_applications_outlined),
                    selectedIcon: Icon(Icons.settings_applications),
                    label: Text('Settings'),
                  ),
                ],
                backgroundColor:
                    Theme.of(context).colorScheme.primary.withAlpha(50),
                selectedIndex: _tabRouter.activeIndex,
                onDestinationSelected: _tabRouter.setActiveIndex,
                labelType: NavigationRailLabelType.all,
                useIndicator: true,
              ),
              const VerticalDivider(width: 1, thickness: 1),
              Expanded(
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 1500),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          _tabRouter.currentPath
                              .split('/')
                              .last
                              .split('_')
                              .join(' ')
                              .toUpperCase(),
                          style:
                              Theme.of(context).textTheme.headline3?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: child,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      );
}
