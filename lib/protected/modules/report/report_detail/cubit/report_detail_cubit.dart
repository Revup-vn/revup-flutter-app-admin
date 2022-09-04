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
