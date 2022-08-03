// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool obscureText) empty,
    required TResult Function(Completer<Unit> loading) loading,
    required TResult Function(String errorMessage) error,
    required TResult Function() success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool obscureText)? empty,
    TResult Function(Completer<Unit> loading)? loading,
    TResult Function(String errorMessage)? error,
    TResult Function()? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool obscureText)? empty,
    TResult Function(Completer<Unit> loading)? loading,
    TResult Function(String errorMessage)? error,
    TResult Function()? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_empty value) empty,
    required TResult Function(_loading value) loading,
    required TResult Function(_error value) error,
    required TResult Function(_success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_empty value)? empty,
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_empty value)? empty,
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;
}

/// @nodoc
abstract class _$$_emptyCopyWith<$Res> {
  factory _$$_emptyCopyWith(_$_empty value, $Res Function(_$_empty) then) =
      __$$_emptyCopyWithImpl<$Res>;
  $Res call({bool obscureText});
}

/// @nodoc
class __$$_emptyCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_emptyCopyWith<$Res> {
  __$$_emptyCopyWithImpl(_$_empty _value, $Res Function(_$_empty) _then)
      : super(_value, (v) => _then(v as _$_empty));

  @override
  _$_empty get _value => super._value as _$_empty;

  @override
  $Res call({
    Object? obscureText = freezed,
  }) {
    return _then(_$_empty(
      obscureText: obscureText == freezed
          ? _value.obscureText
          : obscureText // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_empty implements _empty {
  const _$_empty({required this.obscureText});

  @override
  final bool obscureText;

  @override
  String toString() {
    return 'LoginState.empty(obscureText: $obscureText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_empty &&
            const DeepCollectionEquality()
                .equals(other.obscureText, obscureText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(obscureText));

  @JsonKey(ignore: true)
  @override
  _$$_emptyCopyWith<_$_empty> get copyWith =>
      __$$_emptyCopyWithImpl<_$_empty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool obscureText) empty,
    required TResult Function(Completer<Unit> loading) loading,
    required TResult Function(String errorMessage) error,
    required TResult Function() success,
  }) {
    return empty(obscureText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool obscureText)? empty,
    TResult Function(Completer<Unit> loading)? loading,
    TResult Function(String errorMessage)? error,
    TResult Function()? success,
  }) {
    return empty?.call(obscureText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool obscureText)? empty,
    TResult Function(Completer<Unit> loading)? loading,
    TResult Function(String errorMessage)? error,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(obscureText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_empty value) empty,
    required TResult Function(_loading value) loading,
    required TResult Function(_error value) error,
    required TResult Function(_success value) success,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_empty value)? empty,
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_empty value)? empty,
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _empty implements LoginState {
  const factory _empty({required final bool obscureText}) = _$_empty;

  bool get obscureText;
  @JsonKey(ignore: true)
  _$$_emptyCopyWith<_$_empty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_loadingCopyWith<$Res> {
  factory _$$_loadingCopyWith(
          _$_loading value, $Res Function(_$_loading) then) =
      __$$_loadingCopyWithImpl<$Res>;
  $Res call({Completer<Unit> loading});
}

/// @nodoc
class __$$_loadingCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_loadingCopyWith<$Res> {
  __$$_loadingCopyWithImpl(_$_loading _value, $Res Function(_$_loading) _then)
      : super(_value, (v) => _then(v as _$_loading));

  @override
  _$_loading get _value => super._value as _$_loading;

  @override
  $Res call({
    Object? loading = freezed,
  }) {
    return _then(_$_loading(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as Completer<Unit>,
    ));
  }
}

/// @nodoc

class _$_loading implements _loading {
  const _$_loading({required this.loading});

  @override
  final Completer<Unit> loading;

  @override
  String toString() {
    return 'LoginState.loading(loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_loading &&
            const DeepCollectionEquality().equals(other.loading, loading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(loading));

  @JsonKey(ignore: true)
  @override
  _$$_loadingCopyWith<_$_loading> get copyWith =>
      __$$_loadingCopyWithImpl<_$_loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool obscureText) empty,
    required TResult Function(Completer<Unit> loading) loading,
    required TResult Function(String errorMessage) error,
    required TResult Function() success,
  }) {
    return loading(this.loading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool obscureText)? empty,
    TResult Function(Completer<Unit> loading)? loading,
    TResult Function(String errorMessage)? error,
    TResult Function()? success,
  }) {
    return loading?.call(this.loading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool obscureText)? empty,
    TResult Function(Completer<Unit> loading)? loading,
    TResult Function(String errorMessage)? error,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this.loading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_empty value) empty,
    required TResult Function(_loading value) loading,
    required TResult Function(_error value) error,
    required TResult Function(_success value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_empty value)? empty,
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_empty value)? empty,
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _loading implements LoginState {
  const factory _loading({required final Completer<Unit> loading}) = _$_loading;

  Completer<Unit> get loading;
  @JsonKey(ignore: true)
  _$$_loadingCopyWith<_$_loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_errorCopyWith<$Res> {
  factory _$$_errorCopyWith(_$_error value, $Res Function(_$_error) then) =
      __$$_errorCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$$_errorCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_errorCopyWith<$Res> {
  __$$_errorCopyWithImpl(_$_error _value, $Res Function(_$_error) _then)
      : super(_value, (v) => _then(v as _$_error));

  @override
  _$_error get _value => super._value as _$_error;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$_error(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_error implements _error {
  const _$_error({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'LoginState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_error &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_errorCopyWith<_$_error> get copyWith =>
      __$$_errorCopyWithImpl<_$_error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool obscureText) empty,
    required TResult Function(Completer<Unit> loading) loading,
    required TResult Function(String errorMessage) error,
    required TResult Function() success,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool obscureText)? empty,
    TResult Function(Completer<Unit> loading)? loading,
    TResult Function(String errorMessage)? error,
    TResult Function()? success,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool obscureText)? empty,
    TResult Function(Completer<Unit> loading)? loading,
    TResult Function(String errorMessage)? error,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_empty value) empty,
    required TResult Function(_loading value) loading,
    required TResult Function(_error value) error,
    required TResult Function(_success value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_empty value)? empty,
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_empty value)? empty,
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _error implements LoginState {
  const factory _error({required final String errorMessage}) = _$_error;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$_errorCopyWith<_$_error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_successCopyWith<$Res> {
  factory _$$_successCopyWith(
          _$_success value, $Res Function(_$_success) then) =
      __$$_successCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_successCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_successCopyWith<$Res> {
  __$$_successCopyWithImpl(_$_success _value, $Res Function(_$_success) _then)
      : super(_value, (v) => _then(v as _$_success));

  @override
  _$_success get _value => super._value as _$_success;
}

/// @nodoc

class _$_success implements _success {
  const _$_success();

  @override
  String toString() {
    return 'LoginState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool obscureText) empty,
    required TResult Function(Completer<Unit> loading) loading,
    required TResult Function(String errorMessage) error,
    required TResult Function() success,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool obscureText)? empty,
    TResult Function(Completer<Unit> loading)? loading,
    TResult Function(String errorMessage)? error,
    TResult Function()? success,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool obscureText)? empty,
    TResult Function(Completer<Unit> loading)? loading,
    TResult Function(String errorMessage)? error,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_empty value) empty,
    required TResult Function(_loading value) loading,
    required TResult Function(_error value) error,
    required TResult Function(_success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_empty value)? empty,
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_empty value)? empty,
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _success implements LoginState {
  const factory _success() = _$_success;
}
