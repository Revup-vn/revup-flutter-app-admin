part of 'dashboard_cubit.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.loading() = _Loading;
  const factory DashboardState.error() = _Error;

  const factory DashboardState.populated({
    required int newUsers,
    required int earnings,
    required int installations,
    required int totTrans,
    required Tuple2<int, int> percents,
    required Map<int, List<double>> userData,
  }) = _Populated;
}
