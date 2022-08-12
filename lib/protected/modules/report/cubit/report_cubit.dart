import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

import '../models/models.dart';

part 'report_state.dart';
part 'report_cubit.freezed.dart';

class ReportCubit extends Cubit<ReportState> {
  ReportCubit(this.irr, this.iau) : super(const ReportState.initial());

  final IStore<RepairRecord> irr;
  final IStore<AppUser> iau;

  StreamSubscription<QuerySnapshot<Map<String, dynamic>>>? _s;

  Future<Unit> watch() async {
    await _s?.cancel();
    emit(const ReportState.loading());

    _s = irr
        .collection()
        .where('type', isEqualTo: 6)
        .where('report', isNull: false)
        .orderBy('report')
        .orderBy('report.created', descending: true)
        .snapshots()
        .listen(
          _mapDataToStates,
          onError: _mapErrorToStates,
          cancelOnError: true,
        );

    return unit;
  }

  void _mapErrorToStates(Object? _) =>
      emit(const ReportState.failed('Cannot get the data'));

  Future<void> _mapDataToStates(QuerySnapshot<Map<String, dynamic>> e) async {
    if (e.size == 0) {
      emit(const ReportState.empty());
    } else {
      final records = e.docs.map(irr.parseRawData).fold<IList<RepairRecord>>(
            nil(),
            (p, e) => e.fold((_) => p, (r) => cons(r, p)),
          );
      if (records.isEmpty) {
        emit(const ReportState.empty());
      } else {
        final maybeUsersProviders = await await records
            .map((a) => tuple2(a.cid, a.pid))
            .traverseTask(
              (a) => Task.value(tuple2(iau.get(a.head), iau.get(a.tail))),
            )
            .attempt()
            .map<Future<IList<Tuple2<Option<AppUser>, Option<AppUser>>>>>(
              (a) => a.toOption().fold(
                    () async => nil<Tuple2<Option<AppUser>, Option<AppUser>>>(),
                    (a) async => a.traverseFuture(
                      (a) => a.apply(
                        (a, b) async =>
                            tuple2((await a).toOption(), (await b).toOption()),
                      ),
                    ),
                  ),
            )
            .run();

        catching(
          () => records
              .zip(maybeUsersProviders)
              .filter((a) => a.tail.head.isSome() && a.tail.tail.isSome())
              .map(
                (a) => Report.fromDto(
                  a.head,
                  a.tail.head.getOrElse(() => throw NullThrownError()),
                  a.tail.tail.getOrElse(() => throw NullThrownError()),
                ),
              ),
        ).fold(
          (dynamic _) => throw NullThrownError(),
          (r) => emit(ReportState.populated(r.toList())),
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
