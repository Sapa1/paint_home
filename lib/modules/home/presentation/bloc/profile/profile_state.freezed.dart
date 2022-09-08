// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileStateTearOff {
  const _$ProfileStateTearOff();

  _ProfileStateInitial initial() {
    return const _ProfileStateInitial();
  }

  _ProfileStateLoading loading() {
    return const _ProfileStateLoading();
  }

  _ProfileStateFailure failure(String message) {
    return _ProfileStateFailure(
      message,
    );
  }

  _ProfileStateSuccess success({required UserEntity userEntity}) {
    return _ProfileStateSuccess(
      userEntity: userEntity,
    );
  }
}

/// @nodoc
const $ProfileState = _$ProfileStateTearOff();

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(UserEntity userEntity) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(UserEntity userEntity)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(UserEntity userEntity)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileStateInitial value) initial,
    required TResult Function(_ProfileStateLoading value) loading,
    required TResult Function(_ProfileStateFailure value) failure,
    required TResult Function(_ProfileStateSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProfileStateInitial value)? initial,
    TResult Function(_ProfileStateLoading value)? loading,
    TResult Function(_ProfileStateFailure value)? failure,
    TResult Function(_ProfileStateSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileStateInitial value)? initial,
    TResult Function(_ProfileStateLoading value)? loading,
    TResult Function(_ProfileStateFailure value)? failure,
    TResult Function(_ProfileStateSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;
}

/// @nodoc
abstract class _$ProfileStateInitialCopyWith<$Res> {
  factory _$ProfileStateInitialCopyWith(_ProfileStateInitial value,
          $Res Function(_ProfileStateInitial) then) =
      __$ProfileStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$ProfileStateInitialCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateInitialCopyWith<$Res> {
  __$ProfileStateInitialCopyWithImpl(
      _ProfileStateInitial _value, $Res Function(_ProfileStateInitial) _then)
      : super(_value, (v) => _then(v as _ProfileStateInitial));

  @override
  _ProfileStateInitial get _value => super._value as _ProfileStateInitial;
}

/// @nodoc

class _$_ProfileStateInitial implements _ProfileStateInitial {
  const _$_ProfileStateInitial();

  @override
  String toString() {
    return 'ProfileState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ProfileStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(UserEntity userEntity) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(UserEntity userEntity)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(UserEntity userEntity)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileStateInitial value) initial,
    required TResult Function(_ProfileStateLoading value) loading,
    required TResult Function(_ProfileStateFailure value) failure,
    required TResult Function(_ProfileStateSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProfileStateInitial value)? initial,
    TResult Function(_ProfileStateLoading value)? loading,
    TResult Function(_ProfileStateFailure value)? failure,
    TResult Function(_ProfileStateSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileStateInitial value)? initial,
    TResult Function(_ProfileStateLoading value)? loading,
    TResult Function(_ProfileStateFailure value)? failure,
    TResult Function(_ProfileStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ProfileStateInitial implements ProfileState {
  const factory _ProfileStateInitial() = _$_ProfileStateInitial;
}

/// @nodoc
abstract class _$ProfileStateLoadingCopyWith<$Res> {
  factory _$ProfileStateLoadingCopyWith(_ProfileStateLoading value,
          $Res Function(_ProfileStateLoading) then) =
      __$ProfileStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$ProfileStateLoadingCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateLoadingCopyWith<$Res> {
  __$ProfileStateLoadingCopyWithImpl(
      _ProfileStateLoading _value, $Res Function(_ProfileStateLoading) _then)
      : super(_value, (v) => _then(v as _ProfileStateLoading));

  @override
  _ProfileStateLoading get _value => super._value as _ProfileStateLoading;
}

/// @nodoc

class _$_ProfileStateLoading implements _ProfileStateLoading {
  const _$_ProfileStateLoading();

  @override
  String toString() {
    return 'ProfileState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ProfileStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(UserEntity userEntity) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(UserEntity userEntity)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(UserEntity userEntity)? success,
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
    required TResult Function(_ProfileStateInitial value) initial,
    required TResult Function(_ProfileStateLoading value) loading,
    required TResult Function(_ProfileStateFailure value) failure,
    required TResult Function(_ProfileStateSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProfileStateInitial value)? initial,
    TResult Function(_ProfileStateLoading value)? loading,
    TResult Function(_ProfileStateFailure value)? failure,
    TResult Function(_ProfileStateSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileStateInitial value)? initial,
    TResult Function(_ProfileStateLoading value)? loading,
    TResult Function(_ProfileStateFailure value)? failure,
    TResult Function(_ProfileStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ProfileStateLoading implements ProfileState {
  const factory _ProfileStateLoading() = _$_ProfileStateLoading;
}

/// @nodoc
abstract class _$ProfileStateFailureCopyWith<$Res> {
  factory _$ProfileStateFailureCopyWith(_ProfileStateFailure value,
          $Res Function(_ProfileStateFailure) then) =
      __$ProfileStateFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$ProfileStateFailureCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateFailureCopyWith<$Res> {
  __$ProfileStateFailureCopyWithImpl(
      _ProfileStateFailure _value, $Res Function(_ProfileStateFailure) _then)
      : super(_value, (v) => _then(v as _ProfileStateFailure));

  @override
  _ProfileStateFailure get _value => super._value as _ProfileStateFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_ProfileStateFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ProfileStateFailure implements _ProfileStateFailure {
  const _$_ProfileStateFailure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ProfileState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileStateFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ProfileStateFailureCopyWith<_ProfileStateFailure> get copyWith =>
      __$ProfileStateFailureCopyWithImpl<_ProfileStateFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(UserEntity userEntity) success,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(UserEntity userEntity)? success,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(UserEntity userEntity)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileStateInitial value) initial,
    required TResult Function(_ProfileStateLoading value) loading,
    required TResult Function(_ProfileStateFailure value) failure,
    required TResult Function(_ProfileStateSuccess value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProfileStateInitial value)? initial,
    TResult Function(_ProfileStateLoading value)? loading,
    TResult Function(_ProfileStateFailure value)? failure,
    TResult Function(_ProfileStateSuccess value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileStateInitial value)? initial,
    TResult Function(_ProfileStateLoading value)? loading,
    TResult Function(_ProfileStateFailure value)? failure,
    TResult Function(_ProfileStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _ProfileStateFailure implements ProfileState {
  const factory _ProfileStateFailure(String message) = _$_ProfileStateFailure;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ProfileStateFailureCopyWith<_ProfileStateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ProfileStateSuccessCopyWith<$Res> {
  factory _$ProfileStateSuccessCopyWith(_ProfileStateSuccess value,
          $Res Function(_ProfileStateSuccess) then) =
      __$ProfileStateSuccessCopyWithImpl<$Res>;
  $Res call({UserEntity userEntity});
}

/// @nodoc
class __$ProfileStateSuccessCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateSuccessCopyWith<$Res> {
  __$ProfileStateSuccessCopyWithImpl(
      _ProfileStateSuccess _value, $Res Function(_ProfileStateSuccess) _then)
      : super(_value, (v) => _then(v as _ProfileStateSuccess));

  @override
  _ProfileStateSuccess get _value => super._value as _ProfileStateSuccess;

  @override
  $Res call({
    Object? userEntity = freezed,
  }) {
    return _then(_ProfileStateSuccess(
      userEntity: userEntity == freezed
          ? _value.userEntity
          : userEntity // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc

class _$_ProfileStateSuccess implements _ProfileStateSuccess {
  const _$_ProfileStateSuccess({required this.userEntity});

  @override
  final UserEntity userEntity;

  @override
  String toString() {
    return 'ProfileState.success(userEntity: $userEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileStateSuccess &&
            (identical(other.userEntity, userEntity) ||
                const DeepCollectionEquality()
                    .equals(other.userEntity, userEntity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userEntity);

  @JsonKey(ignore: true)
  @override
  _$ProfileStateSuccessCopyWith<_ProfileStateSuccess> get copyWith =>
      __$ProfileStateSuccessCopyWithImpl<_ProfileStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(UserEntity userEntity) success,
  }) {
    return success(userEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(UserEntity userEntity)? success,
  }) {
    return success?.call(userEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(UserEntity userEntity)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(userEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileStateInitial value) initial,
    required TResult Function(_ProfileStateLoading value) loading,
    required TResult Function(_ProfileStateFailure value) failure,
    required TResult Function(_ProfileStateSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProfileStateInitial value)? initial,
    TResult Function(_ProfileStateLoading value)? loading,
    TResult Function(_ProfileStateFailure value)? failure,
    TResult Function(_ProfileStateSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileStateInitial value)? initial,
    TResult Function(_ProfileStateLoading value)? loading,
    TResult Function(_ProfileStateFailure value)? failure,
    TResult Function(_ProfileStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ProfileStateSuccess implements ProfileState {
  const factory _ProfileStateSuccess({required UserEntity userEntity}) =
      _$_ProfileStateSuccess;

  UserEntity get userEntity => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ProfileStateSuccessCopyWith<_ProfileStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
