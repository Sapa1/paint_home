// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegisterStateTearOff {
  const _$RegisterStateTearOff();

  _RegisterStateInitial initial() {
    return const _RegisterStateInitial();
  }

  _RegisterStateLoading loading() {
    return const _RegisterStateLoading();
  }

  _RegisterStateFailure failure(String message) {
    return _RegisterStateFailure(
      message,
    );
  }

  _RegisterStateSuccess success() {
    return const _RegisterStateSuccess();
  }
}

/// @nodoc
const $RegisterState = _$RegisterStateTearOff();

/// @nodoc
mixin _$RegisterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function() success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function()? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function()? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterStateInitial value) initial,
    required TResult Function(_RegisterStateLoading value) loading,
    required TResult Function(_RegisterStateFailure value) failure,
    required TResult Function(_RegisterStateSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterStateInitial value)? initial,
    TResult Function(_RegisterStateLoading value)? loading,
    TResult Function(_RegisterStateFailure value)? failure,
    TResult Function(_RegisterStateSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterStateInitial value)? initial,
    TResult Function(_RegisterStateLoading value)? loading,
    TResult Function(_RegisterStateFailure value)? failure,
    TResult Function(_RegisterStateSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  final RegisterState _value;
  // ignore: unused_field
  final $Res Function(RegisterState) _then;
}

/// @nodoc
abstract class _$RegisterStateInitialCopyWith<$Res> {
  factory _$RegisterStateInitialCopyWith(_RegisterStateInitial value,
          $Res Function(_RegisterStateInitial) then) =
      __$RegisterStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$RegisterStateInitialCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterStateInitialCopyWith<$Res> {
  __$RegisterStateInitialCopyWithImpl(
      _RegisterStateInitial _value, $Res Function(_RegisterStateInitial) _then)
      : super(_value, (v) => _then(v as _RegisterStateInitial));

  @override
  _RegisterStateInitial get _value => super._value as _RegisterStateInitial;
}

/// @nodoc

class _$_RegisterStateInitial implements _RegisterStateInitial {
  const _$_RegisterStateInitial();

  @override
  String toString() {
    return 'RegisterState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RegisterStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function() success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function()? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function()? success,
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
    required TResult Function(_RegisterStateInitial value) initial,
    required TResult Function(_RegisterStateLoading value) loading,
    required TResult Function(_RegisterStateFailure value) failure,
    required TResult Function(_RegisterStateSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterStateInitial value)? initial,
    TResult Function(_RegisterStateLoading value)? loading,
    TResult Function(_RegisterStateFailure value)? failure,
    TResult Function(_RegisterStateSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterStateInitial value)? initial,
    TResult Function(_RegisterStateLoading value)? loading,
    TResult Function(_RegisterStateFailure value)? failure,
    TResult Function(_RegisterStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _RegisterStateInitial implements RegisterState {
  const factory _RegisterStateInitial() = _$_RegisterStateInitial;
}

/// @nodoc
abstract class _$RegisterStateLoadingCopyWith<$Res> {
  factory _$RegisterStateLoadingCopyWith(_RegisterStateLoading value,
          $Res Function(_RegisterStateLoading) then) =
      __$RegisterStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$RegisterStateLoadingCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterStateLoadingCopyWith<$Res> {
  __$RegisterStateLoadingCopyWithImpl(
      _RegisterStateLoading _value, $Res Function(_RegisterStateLoading) _then)
      : super(_value, (v) => _then(v as _RegisterStateLoading));

  @override
  _RegisterStateLoading get _value => super._value as _RegisterStateLoading;
}

/// @nodoc

class _$_RegisterStateLoading implements _RegisterStateLoading {
  const _$_RegisterStateLoading();

  @override
  String toString() {
    return 'RegisterState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RegisterStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function() success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function()? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function()? success,
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
    required TResult Function(_RegisterStateInitial value) initial,
    required TResult Function(_RegisterStateLoading value) loading,
    required TResult Function(_RegisterStateFailure value) failure,
    required TResult Function(_RegisterStateSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterStateInitial value)? initial,
    TResult Function(_RegisterStateLoading value)? loading,
    TResult Function(_RegisterStateFailure value)? failure,
    TResult Function(_RegisterStateSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterStateInitial value)? initial,
    TResult Function(_RegisterStateLoading value)? loading,
    TResult Function(_RegisterStateFailure value)? failure,
    TResult Function(_RegisterStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _RegisterStateLoading implements RegisterState {
  const factory _RegisterStateLoading() = _$_RegisterStateLoading;
}

/// @nodoc
abstract class _$RegisterStateFailureCopyWith<$Res> {
  factory _$RegisterStateFailureCopyWith(_RegisterStateFailure value,
          $Res Function(_RegisterStateFailure) then) =
      __$RegisterStateFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$RegisterStateFailureCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterStateFailureCopyWith<$Res> {
  __$RegisterStateFailureCopyWithImpl(
      _RegisterStateFailure _value, $Res Function(_RegisterStateFailure) _then)
      : super(_value, (v) => _then(v as _RegisterStateFailure));

  @override
  _RegisterStateFailure get _value => super._value as _RegisterStateFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_RegisterStateFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RegisterStateFailure implements _RegisterStateFailure {
  const _$_RegisterStateFailure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'RegisterState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterStateFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$RegisterStateFailureCopyWith<_RegisterStateFailure> get copyWith =>
      __$RegisterStateFailureCopyWithImpl<_RegisterStateFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function() success,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function()? success,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function()? success,
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
    required TResult Function(_RegisterStateInitial value) initial,
    required TResult Function(_RegisterStateLoading value) loading,
    required TResult Function(_RegisterStateFailure value) failure,
    required TResult Function(_RegisterStateSuccess value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterStateInitial value)? initial,
    TResult Function(_RegisterStateLoading value)? loading,
    TResult Function(_RegisterStateFailure value)? failure,
    TResult Function(_RegisterStateSuccess value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterStateInitial value)? initial,
    TResult Function(_RegisterStateLoading value)? loading,
    TResult Function(_RegisterStateFailure value)? failure,
    TResult Function(_RegisterStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _RegisterStateFailure implements RegisterState {
  const factory _RegisterStateFailure(String message) = _$_RegisterStateFailure;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RegisterStateFailureCopyWith<_RegisterStateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RegisterStateSuccessCopyWith<$Res> {
  factory _$RegisterStateSuccessCopyWith(_RegisterStateSuccess value,
          $Res Function(_RegisterStateSuccess) then) =
      __$RegisterStateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$RegisterStateSuccessCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterStateSuccessCopyWith<$Res> {
  __$RegisterStateSuccessCopyWithImpl(
      _RegisterStateSuccess _value, $Res Function(_RegisterStateSuccess) _then)
      : super(_value, (v) => _then(v as _RegisterStateSuccess));

  @override
  _RegisterStateSuccess get _value => super._value as _RegisterStateSuccess;
}

/// @nodoc

class _$_RegisterStateSuccess implements _RegisterStateSuccess {
  const _$_RegisterStateSuccess();

  @override
  String toString() {
    return 'RegisterState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RegisterStateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function() success,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function()? success,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
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
    required TResult Function(_RegisterStateInitial value) initial,
    required TResult Function(_RegisterStateLoading value) loading,
    required TResult Function(_RegisterStateFailure value) failure,
    required TResult Function(_RegisterStateSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegisterStateInitial value)? initial,
    TResult Function(_RegisterStateLoading value)? loading,
    TResult Function(_RegisterStateFailure value)? failure,
    TResult Function(_RegisterStateSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterStateInitial value)? initial,
    TResult Function(_RegisterStateLoading value)? loading,
    TResult Function(_RegisterStateFailure value)? failure,
    TResult Function(_RegisterStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _RegisterStateSuccess implements RegisterState {
  const factory _RegisterStateSuccess() = _$_RegisterStateSuccess;
}
