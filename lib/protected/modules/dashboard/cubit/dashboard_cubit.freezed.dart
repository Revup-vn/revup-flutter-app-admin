// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dashboard_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DashboardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(
            int newUsers,
            int earnings,
            int installations,
            int totTrans,
            Tuple2<int, int> percents,
            Map<int, List<double>> userData)
        populated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(
            int newUsers,
            int earnings,
            int installations,
            int totTrans,
            Tuple2<int, int> percents,
            Map<int, List<double>> userData)?
        populated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(
            int newUsers,
            int earnings,
            int installations,
            int totTrans,
            Tuple2<int, int> percents,
            Map<int, List<double>> userData)?
        populated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Populated value) populated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Populated value)? populated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Populated value)? populated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  final DashboardState _value;
  // ignore: unused_field
  final $Res Function(DashboardState) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$DashboardStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'DashboardState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(
            int newUsers,
            int earnings,
            int installations,
            int totTrans,
            Tuple2<int, int> percents,
            Map<int, List<double>> userData)
        populated,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(
            int newUsers,
            int earnings,
            int installations,
            int totTrans,
            Tuple2<int, int> percents,
            Map<int, List<double>> userData)?
        populated,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(
            int newUsers,
            int earnings,
            int installations,
            int totTrans,
            Tuple2<int, int> percents,
            Map<int, List<double>> userData)?
        populated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Populated value) populated,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Populated value)? populated,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Populated value)? populated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DashboardState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$DashboardStateCopyWithImpl<$Res>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, (v) => _then(v as _$_Error));

  @override
  _$_Error get _value => super._value as _$_Error;
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'DashboardState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(
            int newUsers,
            int earnings,
            int installations,
            int totTrans,
            Tuple2<int, int> percents,
            Map<int, List<double>> userData)
        populated,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(
            int newUsers,
            int earnings,
            int installations,
            int totTrans,
            Tuple2<int, int> percents,
            Map<int, List<double>> userData)?
        populated,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(
            int newUsers,
            int earnings,
            int installations,
            int totTrans,
            Tuple2<int, int> percents,
            Map<int, List<double>> userData)?
        populated,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Populated value) populated,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Populated value)? populated,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Populated value)? populated,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements DashboardState {
  const factory _Error() = _$_Error;
}

/// @nodoc
abstract class _$$_PopulatedCopyWith<$Res> {
  factory _$$_PopulatedCopyWith(
          _$_Populated value, $Res Function(_$_Populated) then) =
      __$$_PopulatedCopyWithImpl<$Res>;
  $Res call(
      {int newUsers,
      int earnings,
      int installations,
      int totTrans,
      Tuple2<int, int> percents,
      Map<int, List<double>> userData});
}

/// @nodoc
class __$$_PopulatedCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res>
    implements _$$_PopulatedCopyWith<$Res> {
  __$$_PopulatedCopyWithImpl(
      _$_Populated _value, $Res Function(_$_Populated) _then)
      : super(_value, (v) => _then(v as _$_Populated));

  @override
  _$_Populated get _value => super._value as _$_Populated;

  @override
  $Res call({
    Object? newUsers = freezed,
    Object? earnings = freezed,
    Object? installations = freezed,
    Object? totTrans = freezed,
    Object? percents = freezed,
    Object? userData = freezed,
  }) {
    return _then(_$_Populated(
      newUsers: newUsers == freezed
          ? _value.newUsers
          : newUsers // ignore: cast_nullable_to_non_nullable
              as int,
      earnings: earnings == freezed
          ? _value.earnings
          : earnings // ignore: cast_nullable_to_non_nullable
              as int,
      installations: installations == freezed
          ? _value.installations
          : installations // ignore: cast_nullable_to_non_nullable
              as int,
      totTrans: totTrans == freezed
          ? _value.totTrans
          : totTrans // ignore: cast_nullable_to_non_nullable
              as int,
      percents: percents == freezed
          ? _value.percents
          : percents // ignore: cast_nullable_to_non_nullable
              as Tuple2<int, int>,
      userData: userData == freezed
          ? _value._userData
          : userData // ignore: cast_nullable_to_non_nullable
              as Map<int, List<double>>,
    ));
  }
}

/// @nodoc

class _$_Populated implements _Populated {
  const _$_Populated(
      {required this.newUsers,
      required this.earnings,
      required this.installations,
      required this.totTrans,
      required this.percents,
      required final Map<int, List<double>> userData})
      : _userData = userData;

  @override
  final int newUsers;
  @override
  final int earnings;
  @override
  final int installations;
  @override
  final int totTrans;
  @override
  final Tuple2<int, int> percents;
  final Map<int, List<double>> _userData;
  @override
  Map<int, List<double>> get userData {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_userData);
  }

  @override
  String toString() {
    return 'DashboardState.populated(newUsers: $newUsers, earnings: $earnings, installations: $installations, totTrans: $totTrans, percents: $percents, userData: $userData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Populated &&
            const DeepCollectionEquality().equals(other.newUsers, newUsers) &&
            const DeepCollectionEquality().equals(other.earnings, earnings) &&
            const DeepCollectionEquality()
                .equals(other.installations, installations) &&
            const DeepCollectionEquality().equals(other.totTrans, totTrans) &&
            const DeepCollectionEquality().equals(other.percents, percents) &&
            const DeepCollectionEquality().equals(other._userData, _userData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(newUsers),
      const DeepCollectionEquality().hash(earnings),
      const DeepCollectionEquality().hash(installations),
      const DeepCollectionEquality().hash(totTrans),
      const DeepCollectionEquality().hash(percents),
      const DeepCollectionEquality().hash(_userData));

  @JsonKey(ignore: true)
  @override
  _$$_PopulatedCopyWith<_$_Populated> get copyWith =>
      __$$_PopulatedCopyWithImpl<_$_Populated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(
            int newUsers,
            int earnings,
            int installations,
            int totTrans,
            Tuple2<int, int> percents,
            Map<int, List<double>> userData)
        populated,
  }) {
    return populated(
        newUsers, earnings, installations, totTrans, percents, userData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(
            int newUsers,
            int earnings,
            int installations,
            int totTrans,
            Tuple2<int, int> percents,
            Map<int, List<double>> userData)?
        populated,
  }) {
    return populated?.call(
        newUsers, earnings, installations, totTrans, percents, userData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(
            int newUsers,
            int earnings,
            int installations,
            int totTrans,
            Tuple2<int, int> percents,
            Map<int, List<double>> userData)?
        populated,
    required TResult orElse(),
  }) {
    if (populated != null) {
      return populated(
          newUsers, earnings, installations, totTrans, percents, userData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Populated value) populated,
  }) {
    return populated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Populated value)? populated,
  }) {
    return populated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Populated value)? populated,
    required TResult orElse(),
  }) {
    if (populated != null) {
      return populated(this);
    }
    return orElse();
  }
}

abstract class _Populated implements DashboardState {
  const factory _Populated(
      {required final int newUsers,
      required final int earnings,
      required final int installations,
      required final int totTrans,
      required final Tuple2<int, int> percents,
      required final Map<int, List<double>> userData}) = _$_Populated;

  int get newUsers;
  int get earnings;
  int get installations;
  int get totTrans;
  Tuple2<int, int> get percents;
  Map<int, List<double>> get userData;
  @JsonKey(ignore: true)
  _$$_PopulatedCopyWith<_$_Populated> get copyWith =>
      throw _privateConstructorUsedError;
}
