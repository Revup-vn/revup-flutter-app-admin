import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../../../../router/router.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () => context
          ..read<AuthenticateBloc>().add(
            AuthenticateEvent.signOut(
              authType: context.read<AuthenticateBloc>().state.maybeWhen(
                    orElse: () => throw NullThrownError(),
                    authenticated: (authType) => authType,
                  ),
            ),
          )
          ..router.pushAndPopUntil(const LoginRoute(), predicate: (_) => true),
        child: const Text('Sign out'),
      ),
    );
  }
}
