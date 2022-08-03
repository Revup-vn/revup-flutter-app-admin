part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.empty({required bool obscureText}) = _empty;
  const factory LoginState.loading({required Completer<Unit> loading}) =
      _loading;
  const factory LoginState.error({required String errorMessage}) = _error;
  const factory LoginState.success() = _success;
}
