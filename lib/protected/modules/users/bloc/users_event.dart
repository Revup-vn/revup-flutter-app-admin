part of 'users_bloc.dart';

@freezed
class UsersEvent with _$UsersEvent {
  const factory UsersEvent.searched(String term) = _Searched;
  const factory UsersEvent.failed() = _Failed;
  const factory UsersEvent.changeCriteria(Tuple2<FilterCriteria, bool> s) =
      _ChangeCriteria;
}
