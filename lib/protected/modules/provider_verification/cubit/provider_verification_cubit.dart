import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

import '../models/models.dart';

part 'provider_verification_state.dart';
part 'provider_verification_cubit.freezed.dart';

class ProviderVerificationCubit extends Cubit<ProviderVerificationState> {
  ProviderVerificationCubit(this._iau)
      : super(const ProviderVerificationState.initial());
  final IStore<AppUser> _iau;

  StreamSubscription<QuerySnapshot<Map<String, dynamic>>>? _s;

  Future<Unit> watch() async {
    await _s?.cancel();
    emit(const ProviderVerificationState.loading());

    _s = _iau
        .collection()
        .where('type', isEqualTo: '2')
        .where(
          AppUserDummy.field(AppUserFields.ProviderInactiveTo),
          isNotEqualTo: null,
        )
        .where(AppUserDummy.field(AppUserFields.Active), isEqualTo: false)
        .orderBy(
          AppUserDummy.field(AppUserFields.CreatedDate),
          descending: true,
        )
        .snapshots()
        .listen(
          _mapDataToStates,
          onError: _mapErrorToStates,
          cancelOnError: true,
        );

    return unit;
  }

  void _mapErrorToStates(Object? _) =>
      emit(const ProviderVerificationState.failed('Cannot get the data'));

  Future<void> _mapDataToStates(QuerySnapshot<Map<String, dynamic>> e) async {
    if (e.size == 0) {
      emit(const ProviderVerificationState.empty());
    } else {
      final records = e.docs.map(_iau.parseRawData).fold<IList<AppUser>>(
            nil(),
            (p, e) => e.fold((_) => p, (r) => cons(r, p)),
          );
      if (records.isEmpty) {
        emit(const ProviderVerificationState.empty());
      } else {
        catching(
          () => records.map(VerificationInfo.fromDto),
        ).fold(
          (dynamic _) => throw NullThrownError(),
          (r) => emit(ProviderVerificationState.populated(r.toList())),
        );
      }
    }
  }

  @override
  Future<void> close() async {
    await _s?.cancel();

    return super.close();
  }
}
