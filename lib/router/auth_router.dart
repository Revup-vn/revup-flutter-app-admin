import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:revup_core/core.dart';

import 'app_router.gr.dart';

class AuthGuard extends AutoRouteGuard {
  AuthGuard(this._auth, this._fAuth);

  final AuthenticateBloc _auth;
  final FirebaseAuth _fAuth;
  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async =>
      await _fAuth.authStateChanges().first == null ||
              _auth.state.maybeMap(
                orElse: () => true,
                authenticated: (_) => false,
              )
          ? _fAuth.signOut().then((_) => _auth.clear()).then(
                (_) => router.pushAndPopUntil<void>(
                  const LoginRoute(),
                  predicate: (_) => true,
                ),
              )
          : resolver.next();
}
