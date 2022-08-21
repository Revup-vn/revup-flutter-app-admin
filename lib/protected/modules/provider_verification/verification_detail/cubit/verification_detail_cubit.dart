import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

part 'verification_detail_state.dart';
part 'verification_detail_cubit.freezed.dart';

class VerificationDetailCubit extends Cubit<VerificationDetailState> {
  VerificationDetailCubit(this._iau)
      : super(const VerificationDetailState.initial());
  final IStore<AppUser> _iau;

  void reset() => emit(const VerificationDetailState.initial());

  Future<Unit> save(String id) async {
    final isDone = Completer<Unit>();
    emit(VerificationDetailState.loading(isDone));
    if (!(await _iau.isFieldValid(AppUserDummy.field(AppUserFields.UserId), id))
        .getOrElse(() => true)) {
      final eitherFailureOrSuccess = await _iau.updateFields(
        AppUserDummy.dummyProvider(id).maybeMap(
          orElse: () => throw NullThrownError(),
          provider: (v) => v.copyWith(active: true),
        ),
        cons(AppUserDummy.field(AppUserFields.Active), nil()),
      );
      isDone.complete(unit);
      eitherFailureOrSuccess.fold(
        (l) => emit(const VerificationDetailState.failed()),
        (r) => emit(const VerificationDetailState.saved('Saved!')),
      );
    } else {
      isDone.complete(unit);
      emit(
        const VerificationDetailState.saved(
          'There is an error when processing the action',
        ),
      );
    }
    await isDone.future;

    return unit;
  }
}
