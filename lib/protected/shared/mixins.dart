import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:revup_core/core.dart';

mixin AppUserMixin {
  Future<bool> isUserPermissible(
    IStore<AppUser> iau,
    String uid,
  ) async =>
      (await iau.get(uid))
          .fold((l) => false, (r) async => _isUserFreeOfViolation(r));

  Future<bool> banUser(AppUser r, IStore<AppUser> iau, String uid) async =>
      await r.map(
        consumer: (c) async => _auxConsumer(iau, uid, ban: true),
        provider: (p) async => _auxProvider(iau, uid, ban: true),
        admin: (_) => false,
      );

  Future<bool> unBanUser(AppUser r, IStore<AppUser> iau, String uid) async =>
      await r.map(
        consumer: (c) async => _auxConsumer(iau, uid, ban: true),
        provider: (p) async => _auxProvider(iau, uid, ban: true),
        admin: (_) => false,
      );

  bool _isUserFreeOfViolation(AppUser r) => r.map(
        consumer: (c) =>
            c.bannedValidatedDate == null ||
            c.violatedTimes < 3 ||
            (c.bannedValidatedDate ?? DateTime.now())
                    .compareTo(DateTime.now()) <
                0,
        provider: (p) =>
            p.active && p.inactiveTo != null ||
            (p.inactiveTo ?? DateTime.now()).compareTo(DateTime.now()) < 0,
        admin: (_) => false,
      );

  Future<bool> _auxConsumer(
    IStore<AppUser> iau,
    String uid, {
    required bool ban,
  }) async =>
      (await iau.updateFields(
        ban
            ? _auxCreateConsumerBanStatus(uid)
            : _auxCreateConsumerUnBanStatus(uid),
        ilist([
          AppUserDummy.field(AppUserFields.BannedValidatedDate),
          AppUserDummy.field(AppUserFields.ViolatedTimes),
        ]),
      ))
          .fold((l) => false, (r) => true);

  Future<bool> _auxProvider(
    IStore<AppUser> iau,
    String uid, {
    required bool ban,
  }) async =>
      (await iau.updateFields(
        ban
            ? _auxCreateProviderBanStatus(uid)
            : _auxCreateProviderUnBanStatus(uid),
        ilist([
          AppUserDummy.field(AppUserFields.Active),
          AppUserDummy.field(AppUserFields.ProviderInactiveTo),
        ]),
      ))
          .fold((l) => false, (r) => true);

  AppUser _auxCreateProviderBanStatus(String uid) =>
      AppUserDummy.dummyConsumer(uid).maybeMap(
        provider: (p) => p.copyWith(
          inactiveTo: DateTime.now().add(const Duration(days: 7)),
          active: false,
        ),
        orElse: () => throw NullThrownError(),
      );

  AppUser _auxCreateProviderUnBanStatus(String uid) =>
      AppUserDummy.dummyConsumer(uid).maybeMap(
        provider: (p) => p.copyWith(
          inactiveTo: null,
          active: true,
        ),
        orElse: () => throw NullThrownError(),
      );

  AppUser _auxCreateConsumerBanStatus(String uid) =>
      AppUserDummy.dummyConsumer(uid).maybeMap(
        consumer: (c) => c.copyWith(
          bannedValidatedDate: DateTime.now().add(const Duration(days: 7)),
          violatedTimes: 3,
        ),
        orElse: () => throw NullThrownError(),
      );

  AppUser _auxCreateConsumerUnBanStatus(String uid) =>
      AppUserDummy.dummyConsumer(uid).maybeMap(
        consumer: (c) => c.copyWith(
          bannedValidatedDate: null,
          violatedTimes: 0,
        ),
        orElse: () => throw NullThrownError(),
      );
}
