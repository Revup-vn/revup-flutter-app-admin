part of 'users_bloc.dart';

@freezed
class UsersState with _$UsersState {
  const factory UsersState.empty(
    String term,
    IMap<FilterCriteria, bool> criterion,
  ) = _Empty;
  const factory UsersState.loading(
    IMap<FilterCriteria, bool> criterion,
  ) = _Loading;
  const factory UsersState.error(
    IMap<FilterCriteria, bool> criterion,
  ) = _Error;
  const factory UsersState.populated(
    List<AppUser> users,
    String term,
    IMap<FilterCriteria, bool> criterion,
  ) = _Populated;
}
