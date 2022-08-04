// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginAccount _$$_LoginAccountFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_LoginAccount',
      json,
      ($checkedConvert) {
        final val = _$_LoginAccount(
          email: $checkedConvert('email', (v) => v as String),
          password: $checkedConvert('password', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_LoginAccountToJson(_$_LoginAccount instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
