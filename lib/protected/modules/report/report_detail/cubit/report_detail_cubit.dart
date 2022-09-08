import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

import '../../../../shared/mixins.dart';
import '../../models/models.dart';

part 'report_detail_state.dart';
part 'report_detail_cubit.freezed.dart';

class ReportDetailCubit extends Cubit<ReportDetailState> with AppUserMixin {
  ReportDetailCubit(
    this._irr,
    this._iau,
    String cid,
    String pid,
  ) : super(ReportDetailState.initial(tuple2(false, false))) {
    Future.wait([isUserPermissible(_iau, cid), isUserPermissible(_iau, pid)])
        .then(
      (value) => emit(
        ReportDetailState.initial(
          tuple2(
            catching(() => value[0]).getOrElse(() => true),
            catching(() => value[1]).getOrElse(() => true),
          ),
        ),
      ),
    );
  }
  final IStore<RepairRecord> _irr;
  final IStore<AppUser> _iau;

  void reset() => emit(ReportDetailState.initial(state.showBanActions));

  Future<Unit> ban(String id, {required bool isConsumer}) async {
    final isDone = Completer<Unit>();
    emit(ReportDetailState.loading(state.showBanActions, isDone));
    final banRes = await banUser(_iau, id);
    isDone.complete(unit);
    await isDone.future;
    banRes
        ? emit(
            ReportDetailState.saved(
              isConsumer
                  ? state.showBanActions.copyWith(value1: false)
                  : state.showBanActions.copyWith(value2: false),
              'Ban successfully',
              isPop: false,
            ),
          )
        : emit(
            ReportDetailState.failed(
              state.showBanActions,
            ),
          );
    return unit;
  }

  Future<Unit> save(Report data) async {
    final isDone = Completer<Unit>();
    emit(ReportDetailState.loading(state.showBanActions, isDone));
    final tester = await _isValidReport(data);
    if (tester.head) {
      final eitherFailureOrSuccess = await _irr.updateFields(
        tester.tail == 'f'
            ? RepairRecordDummy.dummyFinished(data.id).maybeMap(
                orElse: () => throw NullThrownError(),
                finished: (v) => v.copyWith(report: data.report),
              )
            : tester.tail == 'a'
                ? RepairRecordDummy.dummyAborted(data.id).maybeMap(
                    orElse: () => throw NullThrownError(),
                    aborted: (v) => v.copyWith(report: data.report),
                  )
                : throw NullThrownError(),
        cons(RepairRecordDummy.field(RepairRecordFields.Report), nil()),
      );
      isDone.complete(unit);
      await isDone.future;
      eitherFailureOrSuccess.fold(
        (l) => emit(ReportDetailState.failed(state.showBanActions)),
        (r) => emit(
          ReportDetailState.saved(
            state.showBanActions,
            'Saved!',
            isPop: true,
          ),
        ),
      );
    } else {
      isDone.complete(unit);
      await isDone.future;
      emit(
        ReportDetailState.saved(
          state.showBanActions,
          'Consumer is aborted this report!',
          isPop: true,
        ),
      );
    }

    return unit;
  }

  Future<Tuple2<bool, String>> _isValidReport(Report data) async {
    final t = (await _irr.get(data.id)).map(
      (r) => r.maybeMap(
        orElse: () => tuple2(false, 'other'),
        finished: (v) =>
            v.report?.maybeMap(
              orElse: () => tuple2(false, 'finished other'),
              unresolved: (_) => tuple2(true, 'f'),
            ) ??
            tuple2(false, 'finished null'),
        aborted: (v) =>
            v.report?.maybeMap(
              orElse: () => tuple2(false, 'aborted other'),
              unresolved: (_) => tuple2(true, 'a'),
            ) ??
            tuple2(false, 'aborted null'),
      ),
    );
    return t.getOrElse(() => tuple2(false, ''));
  }
}
