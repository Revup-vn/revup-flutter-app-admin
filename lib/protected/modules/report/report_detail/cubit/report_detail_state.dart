part of 'report_detail_cubit.dart';

@freezed
class ReportDetailState with _$ReportDetailState {
  const factory ReportDetailState.initial() = _initial;
  const factory ReportDetailState.saved(String message) = _saved;
  const factory ReportDetailState.loading(Completer<Unit> isDone) = _loading;
  const factory ReportDetailState.failed() = _failed;
}
