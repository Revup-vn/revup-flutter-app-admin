part of 'report_detail_cubit.dart';

@freezed
class ReportDetailState with _$ReportDetailState {
  const factory ReportDetailState.initial(Tuple2<bool, bool> showBanActions) =
      _initial;
  const factory ReportDetailState.saved(
    Tuple2<bool, bool> showBanActions,
    String message, {
    required bool isPop,
  }) = _saved;
  const factory ReportDetailState.loading(
    Tuple2<bool, bool> showBanActions,
    Completer<Unit> isDone,
  ) = _loading;
  const factory ReportDetailState.failed(Tuple2<bool, bool> showBanActions) =
      _failed;
}
