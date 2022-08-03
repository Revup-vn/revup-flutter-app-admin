// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginAccount _$LoginAccountFromJson(Map<String, dynamic> json) {
  return _LoginAccount.fromJson(json);
}

/// @nodoc
mixin _$LoginAccount {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginAccountCopyWith<LoginAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginAccountCopyWith<$Res> {
  factory $LoginAccountCopyWith(
          LoginAccount value, $Res Function(LoginAccount) then) =
      _$LoginAccountCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$LoginAccountCopyWithImpl<$Res> implements $LoginAccountCopyWith<$Res> {
  _$LoginAccountCopyWithImpl(this._value, this._then);

  final LoginAccount _value;
  // ignore: unused_field
  final $Res Function(LoginAccount) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LoginAccountCopyWith<$Res>
    implements $LoginAccountCopyWith<$Res> {
  factory _$$_LoginAccountCopyWith(
          _$_LoginAccount value, $Res Function(_$_LoginAccount) then) =
      __$$_LoginAccountCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

/// @nodoc
class __$$_LoginAccountCopyWithImpl<$Res>
    extends _$LoginAccountCopyWithImpl<$Res>
    implements _$$_LoginAccountCopyWith<$Res> {
  __$$_LoginAccountCopyWithImpl(
      _$_LoginAccount _value, $Res Function(_$_LoginAccount) _then)
      : super(_value, (v) => _then(v as _$_LoginAccount));

  @override
  _$_LoginAccount get _value => super._value as _$_LoginAccount;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_LoginAccount(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginAccount implements _LoginAccount {
  const _$_LoginAccount({required this.email, required this.password});

  factory _$_LoginAccount.fromJson(Map<String, dynamic> json) =>
      _$$_LoginAccountFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginAccount(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginAccount &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_LoginAccountCopyWith<_$_LoginAccount> get copyWith =>
      __$$_LoginAccountCopyWithImpl<_$_LoginAccount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginAccountToJson(
      this,
    );
  }
}

abstract class _LoginAccount implements LoginAccount {
  const factory _LoginAccount(
      {required final String email,
      required final String password}) = _$_LoginAccount;

  factory _LoginAccount.fromJson(Map<String, dynamic> json) =
      _$_LoginAccount.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_LoginAccountCopyWith<_$_LoginAccount> get copyWith =>
      throw _privateConstructorUsedError;
}
