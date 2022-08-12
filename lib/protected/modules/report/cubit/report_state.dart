part of 'report_cubit.dart';

@freezed
class ReportState with _$ReportState {
  const factory ReportState.initial() = _initial;
  const factory ReportState.empty() = _empty;
  const factory ReportState.loading() = _loading;
  const factory ReportState.failed(String message) = _failed;
  const factory ReportState.populated(List<Report> records) = _populated;
}
