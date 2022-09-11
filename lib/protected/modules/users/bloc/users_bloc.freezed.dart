// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'users_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UsersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String term) searched,
    required TResult Function() failed,
    required TResult Function(Tuple2<FilterCriteria, bool> s) changeCriteria,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String term)? searched,
    TResult Function()? failed,
    TResult Function(Tuple2<FilterCriteria, bool> s)? changeCriteria,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String term)? searched,
    TResult Function()? failed,
    TResult Function(Tuple2<FilterCriteria, bool> s)? changeCriteria,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Searched value) searched,
    required TResult Function(_Failed value) failed,
    required TResult Function(_ChangeCriteria value) changeCriteria,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Searched value)? searched,
    TResult Function(_Failed value)? failed,
    TResult Function(_ChangeCriteria value)? changeCriteria,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Searched value)? searched,
    TResult Function(_Failed value)? failed,
    TResult Function(_ChangeCriteria value)? changeCriteria,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersEventCopyWith<$Res> {
  factory $UsersEventCopyWith(
          UsersEvent value, $Res Function(UsersEvent) then) =
      _$UsersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UsersEventCopyWithImpl<$Res> implements $UsersEventCopyWith<$Res> {
  _$UsersEventCopyWithImpl(this._value, this._then);

  final UsersEvent _value;
  // ignore: unused_field
  final $Res Function(UsersEvent) _then;
}

/// @nodoc
abstract class _$$_SearchedCopyWith<$Res> {
  factory _$$_SearchedCopyWith(
          _$_Searched value, $Res Function(_$_Searched) then) =
      __$$_SearchedCopyWithImpl<$Res>;
  $Res call({String term});
}

/// @nodoc
class __$$_SearchedCopyWithImpl<$Res> extends _$UsersEventCopyWithImpl<$Res>
    implements _$$_SearchedCopyWith<$Res> {
  __$$_SearchedCopyWithImpl(
      _$_Searched _value, $Res Function(_$_Searched) _then)
      : super(_value, (v) => _then(v as _$_Searched));

  @override
  _$_Searched get _value => super._value as _$_Searched;

  @override
  $Res call({
    Object? term = freezed,
  }) {
    return _then(_$_Searched(
      term == freezed
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Searched implements _Searched {
  const _$_Searched(this.term);

  @override
  final String term;

  @override
  String toString() {
    return 'UsersEvent.searched(term: $term)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Searched &&
            const DeepCollectionEquality().equals(other.term, term));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(term));

  @JsonKey(ignore: true)
  @override
  _$$_SearchedCopyWith<_$_Searched> get copyWith =>
      __$$_SearchedCopyWithImpl<_$_Searched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String term) searched,
    required TResult Function() failed,
    required TResult Function(Tuple2<FilterCriteria, bool> s) changeCriteria,
  }) {
    return searched(term);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String term)? searched,
    TResult Function()? failed,
    TResult Function(Tuple2<FilterCriteria, bool> s)? changeCriteria,
  }) {
    return searched?.call(term);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String term)? searched,
    TResult Function()? failed,
    TResult Function(Tuple2<FilterCriteria, bool> s)? changeCriteria,
    required TResult orElse(),
  }) {
    if (searched != null) {
      return searched(term);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Searched value) searched,
    required TResult Function(_Failed value) failed,
    required TResult Function(_ChangeCriteria value) changeCriteria,
  }) {
    return searched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Searched value)? searched,
    TResult Function(_Failed value)? failed,
    TResult Function(_ChangeCriteria value)? changeCriteria,
  }) {
    return searched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Searched value)? searched,
    TResult Function(_Failed value)? failed,
    TResult Function(_ChangeCriteria value)? changeCriteria,
    required TResult orElse(),
  }) {
    if (searched != null) {
      return searched(this);
    }
    return orElse();
  }
}

abstract class _Searched implements UsersEvent {
  const factory _Searched(final String term) = _$_Searched;

  String get term;
  @JsonKey(ignore: true)
  _$$_SearchedCopyWith<_$_Searched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailedCopyWith<$Res> {
  factory _$$_FailedCopyWith(_$_Failed value, $Res Function(_$_Failed) then) =
      __$$_FailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FailedCopyWithImpl<$Res> extends _$UsersEventCopyWithImpl<$Res>
    implements _$$_FailedCopyWith<$Res> {
  __$$_FailedCopyWithImpl(_$_Failed _value, $Res Function(_$_Failed) _then)
      : super(_value, (v) => _then(v as _$_Failed));

  @override
  _$_Failed get _value => super._value as _$_Failed;
}

/// @nodoc

class _$_Failed implements _Failed {
  const _$_Failed();

  @override
  String toString() {
    return 'UsersEvent.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Failed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String term) searched,
    required TResult Function() failed,
    required TResult Function(Tuple2<FilterCriteria, bool> s) changeCriteria,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String term)? searched,
    TResult Function()? failed,
    TResult Function(Tuple2<FilterCriteria, bool> s)? changeCriteria,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String term)? searched,
    TResult Function()? failed,
    TResult Function(Tuple2<FilterCriteria, bool> s)? changeCriteria,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Searched value) searched,
    required TResult Function(_Failed value) failed,
    required TResult Function(_ChangeCriteria value) changeCriteria,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Searched value)? searched,
    TResult Function(_Failed value)? failed,
    TResult Function(_ChangeCriteria value)? changeCriteria,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Searched value)? searched,
    TResult Function(_Failed value)? failed,
    TResult Function(_ChangeCriteria value)? changeCriteria,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements UsersEvent {
  const factory _Failed() = _$_Failed;
}

/// @nodoc
abstract class _$$_ChangeCriteriaCopyWith<$Res> {
  factory _$$_ChangeCriteriaCopyWith(
          _$_ChangeCriteria value, $Res Function(_$_ChangeCriteria) then) =
      __$$_ChangeCriteriaCopyWithImpl<$Res>;
  $Res call({Tuple2<FilterCriteria, bool> s});
}

/// @nodoc
class __$$_ChangeCriteriaCopyWithImpl<$Res>
    extends _$UsersEventCopyWithImpl<$Res>
    implements _$$_ChangeCriteriaCopyWith<$Res> {
  __$$_ChangeCriteriaCopyWithImpl(
      _$_ChangeCriteria _value, $Res Function(_$_ChangeCriteria) _then)
      : super(_value, (v) => _then(v as _$_ChangeCriteria));

  @override
  _$_ChangeCriteria get _value => super._value as _$_ChangeCriteria;

  @override
  $Res call({
    Object? s = freezed,
  }) {
    return _then(_$_ChangeCriteria(
      s == freezed
          ? _value.s
          : s // ignore: cast_nullable_to_non_nullable
              as Tuple2<FilterCriteria, bool>,
    ));
  }
}

/// @nodoc

class _$_ChangeCriteria implements _ChangeCriteria {
  const _$_ChangeCriteria(this.s);

  @override
  final Tuple2<FilterCriteria, bool> s;

  @override
  String toString() {
    return 'UsersEvent.changeCriteria(s: $s)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeCriteria &&
            const DeepCollectionEquality().equals(other.s, s));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(s));

  @JsonKey(ignore: true)
  @override
  _$$_ChangeCriteriaCopyWith<_$_ChangeCriteria> get copyWith =>
      __$$_ChangeCriteriaCopyWithImpl<_$_ChangeCriteria>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String term) searched,
    required TResult Function() failed,
    required TResult Function(Tuple2<FilterCriteria, bool> s) changeCriteria,
  }) {
    return changeCriteria(s);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String term)? searched,
    TResult Function()? failed,
    TResult Function(Tuple2<FilterCriteria, bool> s)? changeCriteria,
  }) {
    return changeCriteria?.call(s);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String term)? searched,
    TResult Function()? failed,
    TResult Function(Tuple2<FilterCriteria, bool> s)? changeCriteria,
    required TResult orElse(),
  }) {
    if (changeCriteria != null) {
      return changeCriteria(s);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Searched value) searched,
    required TResult Function(_Failed value) failed,
    required TResult Function(_ChangeCriteria value) changeCriteria,
  }) {
    return changeCriteria(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Searched value)? searched,
    TResult Function(_Failed value)? failed,
    TResult Function(_ChangeCriteria value)? changeCriteria,
  }) {
    return changeCriteria?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Searched value)? searched,
    TResult Function(_Failed value)? failed,
    TResult Function(_ChangeCriteria value)? changeCriteria,
    required TResult orElse(),
  }) {
    if (changeCriteria != null) {
      return changeCriteria(this);
    }
    return orElse();
  }
}

abstract class _ChangeCriteria implements UsersEvent {
  const factory _ChangeCriteria(final Tuple2<FilterCriteria, bool> s) =
      _$_ChangeCriteria;

  Tuple2<FilterCriteria, bool> get s;
  @JsonKey(ignore: true)
  _$$_ChangeCriteriaCopyWith<_$_ChangeCriteria> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UsersState {
  IMap<FilterCriteria, bool> get criterion =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String term, IMap<FilterCriteria, bool> criterion)
        empty,
    required TResult Function(IMap<FilterCriteria, bool> criterion) loading,
    required TResult Function(IMap<FilterCriteria, bool> criterion) error,
    required TResult Function(List<AppUser> users, String term,
            IMap<FilterCriteria, bool> criterion)
        populated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String term, IMap<FilterCriteria, bool> criterion)? empty,
    TResult Function(IMap<FilterCriteria, bool> criterion)? loading,
    TResult Function(IMap<FilterCriteria, bool> criterion)? error,
    TResult Function(List<AppUser> users, String term,
            IMap<FilterCriteria, bool> criterion)?
        populated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String term, IMap<FilterCriteria, bool> criterion)? empty,
    TResult Function(IMap<FilterCriteria, bool> criterion)? loading,
    TResult Function(IMap<FilterCriteria, bool> criterion)? error,
    TResult Function(List<AppUser> users, String term,
            IMap<FilterCriteria, bool> criterion)?
        populated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Populated value) populated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Populated value)? populated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Populated value)? populated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsersStateCopyWith<UsersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersStateCopyWith<$Res> {
  factory $UsersStateCopyWith(
          UsersState value, $Res Function(UsersState) then) =
      _$UsersStateCopyWithImpl<$Res>;
  $Res call({IMap<FilterCriteria, bool> criterion});
}

/// @nodoc
class _$UsersStateCopyWithImpl<$Res> implements $UsersStateCopyWith<$Res> {
  _$UsersStateCopyWithImpl(this._value, this._then);

  final UsersState _value;
  // ignore: unused_field
  final $Res Function(UsersState) _then;

  @override
  $Res call({
    Object? criterion = freezed,
  }) {
    return _then(_value.copyWith(
      criterion: criterion == freezed
          ? _value.criterion
          : criterion // ignore: cast_nullable_to_non_nullable
              as IMap<FilterCriteria, bool>,
    ));
  }
}

/// @nodoc
abstract class _$$_EmptyCopyWith<$Res> implements $UsersStateCopyWith<$Res> {
  factory _$$_EmptyCopyWith(_$_Empty value, $Res Function(_$_Empty) then) =
      __$$_EmptyCopyWithImpl<$Res>;
  @override
  $Res call({String term, IMap<FilterCriteria, bool> criterion});
}

/// @nodoc
class __$$_EmptyCopyWithImpl<$Res> extends _$UsersStateCopyWithImpl<$Res>
    implements _$$_EmptyCopyWith<$Res> {
  __$$_EmptyCopyWithImpl(_$_Empty _value, $Res Function(_$_Empty) _then)
      : super(_value, (v) => _then(v as _$_Empty));

  @override
  _$_Empty get _value => super._value as _$_Empty;

  @override
  $Res call({
    Object? term = freezed,
    Object? criterion = freezed,
  }) {
    return _then(_$_Empty(
      term == freezed
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String,
      criterion == freezed
          ? _value.criterion
          : criterion // ignore: cast_nullable_to_non_nullable
              as IMap<FilterCriteria, bool>,
    ));
  }
}

/// @nodoc

class _$_Empty implements _Empty {
  const _$_Empty(this.term, this.criterion);

  @override
  final String term;
  @override
  final IMap<FilterCriteria, bool> criterion;

  @override
  String toString() {
    return 'UsersState.empty(term: $term, criterion: $criterion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Empty &&
            const DeepCollectionEquality().equals(other.term, term) &&
            const DeepCollectionEquality().equals(other.criterion, criterion));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(term),
      const DeepCollectionEquality().hash(criterion));

  @JsonKey(ignore: true)
  @override
  _$$_EmptyCopyWith<_$_Empty> get copyWith =>
      __$$_EmptyCopyWithImpl<_$_Empty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String term, IMap<FilterCriteria, bool> criterion)
        empty,
    required TResult Function(IMap<FilterCriteria, bool> criterion) loading,
    required TResult Function(IMap<FilterCriteria, bool> criterion) error,
    required TResult Function(List<AppUser> users, String term,
            IMap<FilterCriteria, bool> criterion)
        populated,
  }) {
    return empty(term, criterion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String term, IMap<FilterCriteria, bool> criterion)? empty,
    TResult Function(IMap<FilterCriteria, bool> criterion)? loading,
    TResult Function(IMap<FilterCriteria, bool> criterion)? error,
    TResult Function(List<AppUser> users, String term,
            IMap<FilterCriteria, bool> criterion)?
        populated,
  }) {
    return empty?.call(term, criterion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String term, IMap<FilterCriteria, bool> criterion)? empty,
    TResult Function(IMap<FilterCriteria, bool> criterion)? loading,
    TResult Function(IMap<FilterCriteria, bool> criterion)? error,
    TResult Function(List<AppUser> users, String term,
            IMap<FilterCriteria, bool> criterion)?
        populated,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(term, criterion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Populated value) populated,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Populated value)? populated,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Populated value)? populated,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements UsersState {
  const factory _Empty(
      final String term, final IMap<FilterCriteria, bool> criterion) = _$_Empty;

  String get term;
  @override
  IMap<FilterCriteria, bool> get criterion;
  @override
  @JsonKey(ignore: true)
  _$$_EmptyCopyWith<_$_Empty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> implements $UsersStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  $Res call({IMap<FilterCriteria, bool> criterion});
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$UsersStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;

  @override
  $Res call({
    Object? criterion = freezed,
  }) {
    return _then(_$_Loading(
      criterion == freezed
          ? _value.criterion
          : criterion // ignore: cast_nullable_to_non_nullable
              as IMap<FilterCriteria, bool>,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading(this.criterion);

  @override
  final IMap<FilterCriteria, bool> criterion;

  @override
  String toString() {
    return 'UsersState.loading(criterion: $criterion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            const DeepCollectionEquality().equals(other.criterion, criterion));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(criterion));

  @JsonKey(ignore: true)
  @override
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String term, IMap<FilterCriteria, bool> criterion)
        empty,
    required TResult Function(IMap<FilterCriteria, bool> criterion) loading,
    required TResult Function(IMap<FilterCriteria, bool> criterion) error,
    required TResult Function(List<AppUser> users, String term,
            IMap<FilterCriteria, bool> criterion)
        populated,
  }) {
    return loading(criterion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String term, IMap<FilterCriteria, bool> criterion)? empty,
    TResult Function(IMap<FilterCriteria, bool> criterion)? loading,
    TResult Function(IMap<FilterCriteria, bool> criterion)? error,
    TResult Function(List<AppUser> users, String term,
            IMap<FilterCriteria, bool> criterion)?
        populated,
  }) {
    return loading?.call(criterion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String term, IMap<FilterCriteria, bool> criterion)? empty,
    TResult Function(IMap<FilterCriteria, bool> criterion)? loading,
    TResult Function(IMap<FilterCriteria, bool> criterion)? error,
    TResult Function(List<AppUser> users, String term,
            IMap<FilterCriteria, bool> criterion)?
        populated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(criterion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Populated value) populated,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Populated value)? populated,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
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

abstract class _Loading implements UsersState {
  const factory _Loading(final IMap<FilterCriteria, bool> criterion) =
      _$_Loading;

  @override
  IMap<FilterCriteria, bool> get criterion;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> implements $UsersStateCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @override
  $Res call({IMap<FilterCriteria, bool> criterion});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$UsersStateCopyWithImpl<$Res>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, (v) => _then(v as _$_Error));

  @override
  _$_Error get _value => super._value as _$_Error;

  @override
  $Res call({
    Object? criterion = freezed,
  }) {
    return _then(_$_Error(
      criterion == freezed
          ? _value.criterion
          : criterion // ignore: cast_nullable_to_non_nullable
              as IMap<FilterCriteria, bool>,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.criterion);

  @override
  final IMap<FilterCriteria, bool> criterion;

  @override
  String toString() {
    return 'UsersState.error(criterion: $criterion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            const DeepCollectionEquality().equals(other.criterion, criterion));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(criterion));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String term, IMap<FilterCriteria, bool> criterion)
        empty,
    required TResult Function(IMap<FilterCriteria, bool> criterion) loading,
    required TResult Function(IMap<FilterCriteria, bool> criterion) error,
    required TResult Function(List<AppUser> users, String term,
            IMap<FilterCriteria, bool> criterion)
        populated,
  }) {
    return error(criterion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String term, IMap<FilterCriteria, bool> criterion)? empty,
    TResult Function(IMap<FilterCriteria, bool> criterion)? loading,
    TResult Function(IMap<FilterCriteria, bool> criterion)? error,
    TResult Function(List<AppUser> users, String term,
            IMap<FilterCriteria, bool> criterion)?
        populated,
  }) {
    return error?.call(criterion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String term, IMap<FilterCriteria, bool> criterion)? empty,
    TResult Function(IMap<FilterCriteria, bool> criterion)? loading,
    TResult Function(IMap<FilterCriteria, bool> criterion)? error,
    TResult Function(List<AppUser> users, String term,
            IMap<FilterCriteria, bool> criterion)?
        populated,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(criterion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Populated value) populated,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Populated value)? populated,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
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

abstract class _Error implements UsersState {
  const factory _Error(final IMap<FilterCriteria, bool> criterion) = _$_Error;

  @override
  IMap<FilterCriteria, bool> get criterion;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PopulatedCopyWith<$Res>
    implements $UsersStateCopyWith<$Res> {
  factory _$$_PopulatedCopyWith(
          _$_Populated value, $Res Function(_$_Populated) then) =
      __$$_PopulatedCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<AppUser> users, String term, IMap<FilterCriteria, bool> criterion});
}

/// @nodoc
class __$$_PopulatedCopyWithImpl<$Res> extends _$UsersStateCopyWithImpl<$Res>
    implements _$$_PopulatedCopyWith<$Res> {
  __$$_PopulatedCopyWithImpl(
      _$_Populated _value, $Res Function(_$_Populated) _then)
      : super(_value, (v) => _then(v as _$_Populated));

  @override
  _$_Populated get _value => super._value as _$_Populated;

  @override
  $Res call({
    Object? users = freezed,
    Object? term = freezed,
    Object? criterion = freezed,
  }) {
    return _then(_$_Populated(
      users == freezed
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<AppUser>,
      term == freezed
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String,
      criterion == freezed
          ? _value.criterion
          : criterion // ignore: cast_nullable_to_non_nullable
              as IMap<FilterCriteria, bool>,
    ));
  }
}

/// @nodoc

class _$_Populated implements _Populated {
  const _$_Populated(final List<AppUser> users, this.term, this.criterion)
      : _users = users;

  final List<AppUser> _users;
  @override
  List<AppUser> get users {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  final String term;
  @override
  final IMap<FilterCriteria, bool> criterion;

  @override
  String toString() {
    return 'UsersState.populated(users: $users, term: $term, criterion: $criterion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Populated &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality().equals(other.term, term) &&
            const DeepCollectionEquality().equals(other.criterion, criterion));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(term),
      const DeepCollectionEquality().hash(criterion));

  @JsonKey(ignore: true)
  @override
  _$$_PopulatedCopyWith<_$_Populated> get copyWith =>
      __$$_PopulatedCopyWithImpl<_$_Populated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String term, IMap<FilterCriteria, bool> criterion)
        empty,
    required TResult Function(IMap<FilterCriteria, bool> criterion) loading,
    required TResult Function(IMap<FilterCriteria, bool> criterion) error,
    required TResult Function(List<AppUser> users, String term,
            IMap<FilterCriteria, bool> criterion)
        populated,
  }) {
    return populated(users, term, criterion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String term, IMap<FilterCriteria, bool> criterion)? empty,
    TResult Function(IMap<FilterCriteria, bool> criterion)? loading,
    TResult Function(IMap<FilterCriteria, bool> criterion)? error,
    TResult Function(List<AppUser> users, String term,
            IMap<FilterCriteria, bool> criterion)?
        populated,
  }) {
    return populated?.call(users, term, criterion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String term, IMap<FilterCriteria, bool> criterion)? empty,
    TResult Function(IMap<FilterCriteria, bool> criterion)? loading,
    TResult Function(IMap<FilterCriteria, bool> criterion)? error,
    TResult Function(List<AppUser> users, String term,
            IMap<FilterCriteria, bool> criterion)?
        populated,
    required TResult orElse(),
  }) {
    if (populated != null) {
      return populated(users, term, criterion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Populated value) populated,
  }) {
    return populated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Populated value)? populated,
  }) {
    return populated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
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

abstract class _Populated implements UsersState {
  const factory _Populated(final List<AppUser> users, final String term,
      final IMap<FilterCriteria, bool> criterion) = _$_Populated;

  List<AppUser> get users;
  String get term;
  @override
  IMap<FilterCriteria, bool> get criterion;
  @override
  @JsonKey(ignore: true)
  _$$_PopulatedCopyWith<_$_Populated> get copyWith =>
      throw _privateConstructorUsedError;
}
