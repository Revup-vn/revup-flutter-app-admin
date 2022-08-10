import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:revup_core/core.dart';

import '../models/models.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._authenticateBloc)
      : super(const LoginState.empty(obscureText: true));

  final AuthenticateBloc _authenticateBloc;

  Unit toggle() => state.maybeWhen(
        empty: (val) {
          emit(
            LoginState.empty(
              obscureText: !val,
            ),
          );

          return unit;
        },
        orElse: () => unit,
      );

  Future<Unit> signUp({required LoginAccount account}) async {
    final isDoneLogin = Completer<Unit>();
    emit(LoginState.loading(loading: isDoneLogin));
    _authenticateBloc.add(
      AuthenticateEvent.signUpWithEmail(
        email: account.email,
        password: account.password,
        onCompleteSignUp: (user) => AppUser.admin(
          uuid: user.uid,
          firstName: 'John',
          lastName: 'Doe',
          phone: 'XXX-XXX-XXXX',
          dob: DateTime(1997),
          addr: 'Netherlands',
          email: account.email,
          active: true,
          avatarUrl:
              'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
          createdTime: DateTime.now(),
          lastUpdatedTime: DateTime.now(),
        ),
      ),
    );

    // only emit signUpSuccess or failure
    return _listenOnce(
      isDoneLogin,
      (event) async => event.maybeWhen(
        signUpSuccess: () => emit(const LoginState.success()),
        failure: (failure) =>
            emit(LoginState.error(errorMessage: failure.toString())),
        orElse: () => emit(
          const LoginState.error(
            errorMessage: 'Cannot happened',
          ),
        ),
      ),
    );
  }

  Future<Unit> _listenOnce(
    Completer<Unit> isDone,
    Function1<AuthenticateState, void> map,
  ) async {
    final _tmp = _authenticateBloc.stream.listen(
      (event) {
        map(event);

        event.maybeMap(
          orElse: () => unit,
          failure: (_) =>
              _authenticateBloc.add(const AuthenticateEvent.reset()),
        );

        isDone.complete(unit);
      },
    );
    await isDone.future;
    await _tmp.cancel();

    return unit;
  }

  Future<Unit> signIn({required LoginAccount account}) async {
    final isDoneLogin = Completer<Unit>();
    emit(LoginState.loading(loading: isDoneLogin));
    _authenticateBloc.add(
      AuthenticateEvent.loginWithEmail(
        email: account.email,
        password: account.password,
      ),
    );
    // only emit Authenticated or failure

    return _listenOnce(
      isDoneLogin,
      (event) => event.maybeWhen(
        authenticated: (type) => emit(const LoginState.success()),
        failure: (failure) =>
            emit(LoginState.error(errorMessage: failure.toString())),
        orElse: () => emit(
          const LoginState.error(
            errorMessage: 'Cannot happened',
          ),
        ),
      ),
    );
  }
}
