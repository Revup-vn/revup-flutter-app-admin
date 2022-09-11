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
  UsersBloc(this._iau)
      : super(
          _Loading(
            IMap.empty(
              orderBy<FilterCriteria, int>(
                IntOrder,
                (a) => a.index,
              ),
            ),
          ),
        ) {
    reset();
    on<UsersEvent>(
      (event, emit) => event.map(
        searched: (event) async {
          emit(UsersState.loading(state.criterion));
          await Future<void>.delayed(const Duration(milliseconds: 500));
          return _dataset?.hasValue ?? false
              ? emit(_auxFilteredState(event.term))
              : _dataset?.hasError ?? true
                  ? emit(UsersState.error(state.criterion))
                  : emit(UsersState.empty(event.term, state.criterion));
        },
        failed: (_) => emit(UsersState.error(state.criterion)),
        changeCriteria: (v) {
          emit(
            state.copyWith(
              criterion: state.criterion.put(v.s.head, v.s.tail),
            ),
          );
          return add(
            UsersEvent.searched(
              state.maybeMap(
                orElse: () => '',
                empty: (s) => s.term,
                populated: (s) => s.term,
              ),
            ),
          );
        },
      ),
      transformer: restartable(),
    );
  }

  UsersState _auxFilteredState(String term) {
    final res = _auxFilteredResult(
      _dataset!.value.filter(
        (a) => '${a.firstName} ${a.lastName}'
            .toLowerCase()
            .contains(term.trim().toLowerCase()),
      ),
    );

    return res.isEmpty
        ? UsersState.empty(term, state.criterion)
        : UsersState.populated(res, term, state.criterion);
  }

  List<AppUser> _auxFilteredResult(IList<AppUser> tmp) {
    final banc =
        state.criterion.get(FilterCriteria.Banned).getOrElse(() => false);
    final activec =
        state.criterion.get(FilterCriteria.Active).getOrElse(() => false);

    return banc ^ activec
        ? banc
            ? _auxFilteredConsumerVsProvider(
                tmp.filter((a) => !isUserFreeOfViolation(a)),
              )
            : _auxFilteredConsumerVsProvider(tmp.filter(isUserFreeOfViolation))
        : _auxFilteredConsumerVsProvider(tmp);
  }

  List<AppUser> _auxFilteredConsumerVsProvider(IList<AppUser> tmp) {
    final providerc =
        state.criterion.get(FilterCriteria.Provider).getOrElse(() => false);
    final consumserc =
        state.criterion.get(FilterCriteria.Consumer).getOrElse(() => false);

    return providerc ^ consumserc
        ? providerc
            ? tmp
                .filter((a) =>
                    a.maybeMap(orElse: () => false, provider: (_) => true))
                .toList()
            : tmp
                .filter((a) =>
                    a.maybeMap(orElse: () => false, consumer: (_) => true))
                .toList()
        : tmp.toList();
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

enum FilterCriteria {
  Provider,
  Consumer,
  Active,
  Banned,
}
