import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../router/router.dart';
import '../widgets/widgets.dart';

class InitView extends StatelessWidget {
  const InitView({super.key, required this.auth});
  final FirebaseAuth auth;

  @override
  Widget build(BuildContext context) {
    final sessionConfig = auth.setPersistence(Persistence.LOCAL);

    return FutureBuilder<void>(
      future: sessionConfig,
      builder: (_, snapShot) {
        late Widget child;

        switch (snapShot.connectionState) {
          case ConnectionState.none:
            child = const InitNone();
            break;
          case ConnectionState.waiting:
            child = const InitWaiting();
            break;
          case ConnectionState.active:
            child = const InitActive();
            break;
          case ConnectionState.done:
            child = snapShot.hasError ? const InitError() : const InitSuccess();
            if (!snapShot.hasError) {
              Future<void>.delayed(
                const Duration(milliseconds: 300),
                () => context.router.push(const HomeRoute()),
              );
            }
            break;
        }

        return Scaffold(
          body: Center(
            child: child,
          ),
        );
      },
    );
  }
}
