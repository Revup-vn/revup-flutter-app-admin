import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

part 'dashboard_cubit.freezed.dart';
part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit(
    this._iau,
    this._irr,
    this._sr,
  ) : super(const DashboardState.loading());
  final IStore<AppUser> _iau;
  final IStore<RepairRecord> _irr;
  final StoreRepository _sr;
  Future<Unit> fetchData() async {
    final month = DateTime.now().month;
    final users = (await _iau.all()).getOrElse(nil);
    if (users.isEmpty) {
      emit(const DashboardState.error());
      return unit;
    }
    final records = (await _irr.all()).getOrElse(nil);
    if (records.isEmpty) {
      emit(const DashboardState.error());
      return unit;
    }

    final consumerProvider = users
        .filter(
          (a) => a.map(
            consumer: (_) => true,
            provider: (_) => true,
            admin: (_) => false,
          ),
        )
        .partition(
          (a) => a.maybeMap(orElse: () => false, consumer: (_) => true),
        );

    final percents = consumerProvider.apply((a, b) {
      final lena = a.length();
      final lenb = b.length();
      final tot = lena + lenb;
      final perca = (lena / tot * 100).truncate();
      return tuple2((perca), 100 - perca);
    });
    final transactions = records.length();

    final monthlyUsers =
        users.filter((a) => a.createdTime.month == month).length();
    final monthlyEarnings = (await Future.wait(
          records
              .filter((a) => a.created.month == month)
              .map(_sr.repairPaymentRepo)
              .map((a) => a.get('transFee'))
              .toList(),
        ).onError(
          (error, stackTrace) =>
              Future.value(<Either<StoreFailure, PaymentService>>[]),
        ))
            .map(
              (e) => e
                  .getOrElse(
                    () => PaymentServiceDummy.dummyPaid('').maybeMap(
                      orElse: () => throw NullThrownError(),
                      paid: (_) => _.copyWith(moneyAmount: 0),
                    ),
                  )
                  .map(
                    pending: (p) => p.moneyAmount,
                    paid: (p) => p.moneyAmount,
                    needToVerify: (_) => 0,
                  ),
            )
            .reduce((value, element) => value + element) *
        .1;

    final inses = (await Future.wait(
      users
          .map(_sr.userNotificationTokenRepo)
          .map((a) async => (await a.all()).getOrElse(nil).length())
          .toList(),
    ).onError((error, stackTrace) => Future.value([])))
        .reduce((value, element) => value + element);

    final usersGroup = IMap.from(
      IntOrder,
      groupBy<AppUser, int>(
        users.toList(),
        (p0) => p0.createdTime.month,
      ),
    ).map((v) => v.length);

    if (monthlyUsers > inses) {
      emit(const DashboardState.error());
      return unit;
    }

    final activeUserData = usersGroup.keys().foldLeft(
      <int, List<double>>{},
      (previous, a) => previous
        ..[a] = [
          usersGroup.get(a - 1).getOrElse(() => 0).toDouble(),
          usersGroup.get(a).getOrElse(() => 0) +
              usersGroup.get(a - 1).getOrElse(() => 0).toDouble()
        ],
    );

    emit(
      DashboardState.populated(
        newUsers: monthlyUsers,
        earnings: monthlyEarnings.toInt(),
        installations: inses,
        totTrans: transactions,
        percents: percents,
        userData: activeUserData,
      ),
    );

    return unit;
  }
}
