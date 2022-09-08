import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';
import 'package:rxdart/rxdart.dart';

import '../../../shared/mixins.dart';

part 'users_event.dart';
part 'users_state.dart';
part 'users_bloc.freezed.dart';

class UsersBloc extends Bloc<UsersEvent, UsersState> with AppUserMixin {
  UsersBloc(this._iau) : super(const _Loading()) {
    reset();
    on<UsersEvent>(
      (event, emit) => event.map(
        searched: (event) async {
          emit(const UsersState.loading());
          await Future<void>.delayed(const Duration(milliseconds: 500));
          return _dataset?.hasValue ?? false
              ? emit(
                  UsersState.populated(
                    _dataset!.value
                        .filter(
                          (a) => '${a.firstName} ${a.lastName}'
                              .toLowerCase()
                              .contains(event.term.trim().toLowerCase()),
                        )
                        .toList(),
                    event.term,
                  ),
                )
              : _dataset?.hasError ?? true
                  ? emit(const UsersState.error())
                  : emit(UsersState.empty(event.term));
        },
        failed: (_) => emit(const UsersState.error()),
      ),
      transformer: restartable(),
    );
  }

  final IStore<AppUser> _iau;
  BehaviorSubject<IList<AppUser>>? _dataset;
  StreamSubscription<QuerySnapshot<Map<String, dynamic>>>? _rawStream;

  Future<Unit> reset() async {
    await _dataset?.close();
    await _rawStream?.cancel();

    _dataset = BehaviorSubject<IList<AppUser>>();

    _rawStream = _iau
        .collection()
        .where('type', whereIn: ['1', '2'])
        .orderBy(AppUserDummy.field(AppUserFields.FirstName))
        .snapshots()
        .listen(
          (data) {
            _dataset!.add(
              data.docs
                  .map(_iau.parseRawData)
                  .fold<IList<AppUser>>(
                    nil(),
                    (pre, e) => e.fold((l) => pre, (r) => cons(r, pre)),
                  )
                  .partition(isUserFreeOfViolation)
                  .apply((a, b) => b.plus(a)),
            );
            state.maybeMap(
              orElse: () => unit,
              empty: (v) => add(UsersEvent.searched(v.term)),
              populated: (v) => add(UsersEvent.searched(v.term)),
            );
          },
          onError: (dynamic _) => add(const UsersEvent.failed()),
        );

    return unit;
  }

  Future<bool> ban(String uid) => banUser(_iau, uid);

  Future<bool> unBan(String uid) => unBanUser(_iau, uid);

  @override
  Future<void> close() async {
    await _dataset?.close();
    await _rawStream?.cancel();

    return super.close();
  }
}
