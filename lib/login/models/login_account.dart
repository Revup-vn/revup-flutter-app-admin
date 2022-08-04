import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_account.freezed.dart';
part 'login_account.g.dart';

@freezed
class LoginAccount with _$LoginAccount {
  const factory LoginAccount({
    required String email,
    required String password,
  }) = _LoginAccount;
  factory LoginAccount.fromJson(Map<String, dynamic> json) =>
      _$LoginAccountFromJson(json);
}
