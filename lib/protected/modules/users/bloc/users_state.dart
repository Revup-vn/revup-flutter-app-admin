part of 'users_bloc.dart';

@freezed
class UsersState with _$UsersState {
  const factory UsersState.empty(String term) = _Empty;
  const factory UsersState.loading() = _Loading;
  const factory UsersState.error() = _Error;
  const factory UsersState.populated(
    List<AppUser> users,
    String term,
  ) = _Populated;
}
