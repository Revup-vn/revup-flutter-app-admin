import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import '../../../router/router.dart';
import '../../modules/settings/view/view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) => AutoTabsRouter(
        routes: const [
          AccountRoute(),
          ReportRoute(),
          SettingsRoute(),
        ],
        builder: (context, child, animation) {
          final _tabRouter = AutoTabsRouter.of(context);
          return Scaffold(
            body: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NavigationRail(
                  destinations: const [
                    NavigationRailDestination(
                      icon: Icon(Icons.person),
                      label: Text('Account'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.document_scanner_outlined),
                      label: Text('Reports'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.settings),
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
                  child: SafeArea(
                    bottom: false,
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.fromLTRB(30, 10, 10, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _tabRouter.currentPath
                                .split('/')
                                .last
                                .toUpperCase(),
                            style:
                                Theme.of(context).textTheme.headline3?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          child,
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
}
