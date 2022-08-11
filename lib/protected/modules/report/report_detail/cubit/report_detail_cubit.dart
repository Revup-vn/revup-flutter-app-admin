import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

import '../../models/models.dart';

part 'report_detail_state.dart';
part 'report_detail_cubit.freezed.dart';

class ReportDetailCubit extends Cubit<ReportDetailState> {
  ReportDetailCubit(this._irr) : super(const ReportDetailState.initial());
  final IStore<RepairRecord> _irr;

  void reset() => emit(const ReportDetailState.initial());

  Future<Unit> save(Report data) async {
    final isDone = Completer<Unit>();
    emit(ReportDetailState.loading(isDone));
    if (await _isValidReport(data)) {
      final eitherFailureOrSuccess = await _irr.updateFields(
        RepairRecordDummy.dummyFinished(data.id).maybeMap(
          orElse: () => throw NullThrownError(),
          finished: (v) => v.copyWith(report: data.report),
        ),
        cons(RepairRecordDummy.field(RepairRecordFields.Report), nil()),
      );
      isDone.complete(unit);
      eitherFailureOrSuccess.fold(
        (l) => emit(const ReportDetailState.failed()),
        (r) => emit(const ReportDetailState.saved('Saved!')),
      );
    } else {
      isDone.complete(unit);
      emit(const ReportDetailState.saved('Consumer is aborted this report!'));
    }
    await isDone.future;

    return unit;
  }

  Future<bool> _isValidReport(Report data) async => (await _irr.get(data.id))
      .map(
        (r) => r.maybeMap(
          orElse: () => false,
          finished: (v) =>
              v.report
                  ?.maybeMap(orElse: () => false, unresolved: (_) => true) ??
              false,
        ),
      )
      .getOrElse(() => false);
}
