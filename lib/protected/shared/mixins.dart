import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:revup_core/core.dart';

mixin AppUserMixin {
  @protected
  Future<bool> fetchIsUserPermissible(
    IStore<AppUser> iau,
    String uid,
  ) async =>
      (await iau.get(uid))
          .fold((l) => false, (r) async => isUserFreeOfViolation(r));

  @protected
  Future<bool> banUser(IStore<AppUser> iau, String uid) async =>
      (await iau.get(uid))
          .map<Future<bool>>(
            (r) async => r.map(
              consumer: (c) async => _auxConsumer(iau, uid, ban: true),
              provider: (p) async => _auxProvider(iau, uid, ban: true),
              admin: (_) => false,
            ),
          )
          .getOrElse(() async => false);

  @protected
  Future<bool> unBanUser(AppUser r, IStore<AppUser> iau, String uid) async =>
      (await iau.get(uid))
          .map<Future<bool>>(
            (r) async => r.map(
              consumer: (c) async => _auxConsumer(iau, uid, ban: false),
              provider: (p) async => _auxProvider(iau, uid, ban: false),
              admin: (_) => false,
            ),
          )
          .getOrElse(() async => false);

  bool isUserFreeOfViolation(AppUser r) => r.map(
        consumer: (c) =>
            c.bannedValidatedDate == null ||
            c.violatedTimes < 3 ||
            (c.bannedValidatedDate ?? DateTime.now())
                    .compareTo(DateTime.now()) <
                0,
        provider: (p) =>
            p.inactiveTo == null ||
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
        cons(AppUserDummy.field(AppUserFields.ProviderInactiveTo), nil()),
      ))
          .fold((l) => false, (r) => true);

  AppUser _auxCreateProviderBanStatus(String uid) =>
      AppUserDummy.dummyProvider(uid).maybeMap(
        provider: (p) => p.copyWith(
          inactiveTo: DateTime.now().add(const Duration(days: 7)),
        ),
        orElse: () => throw NullThrownError(),
      );

  AppUser _auxCreateProviderUnBanStatus(String uid) =>
      AppUserDummy.dummyProvider(uid).maybeMap(
        provider: (p) => p.copyWith(inactiveTo: null),
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
