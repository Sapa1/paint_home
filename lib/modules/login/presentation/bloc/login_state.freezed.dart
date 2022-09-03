// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  _LoginStateInitial initial() {
    return const _LoginStateInitial();
  }

  _LoginStateLoading loading() {
    return const _LoginStateLoading();
  }

  _LoginStateFailure failure(String message) {
    return _LoginStateFailure(
      message,
    );
  }

  _LoginStateConfirmed success() {
    return const _LoginStateConfirmed();
  }
}

/// @nodoc
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
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
    required TResult Function(_LoginStateInitial value) initial,
    required TResult Function(_LoginStateLoading value) loading,
    required TResult Function(_LoginStateFailure value) failure,
    required TResult Function(_LoginStateConfirmed value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginStateInitial value)? initial,
    TResult Function(_LoginStateLoading value)? loading,
    TResult Function(_LoginStateFailure value)? failure,
    TResult Function(_LoginStateConfirmed value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginStateInitial value)? initial,
    TResult Function(_LoginStateLoading value)? loading,
    TResult Function(_LoginStateFailure value)? failure,
    TResult Function(_LoginStateConfirmed value)? success,
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
abstract class _$LoginStateInitialCopyWith<$Res> {
  factory _$LoginStateInitialCopyWith(
          _LoginStateInitial value, $Res Function(_LoginStateInitial) then) =
      __$LoginStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoginStateInitialCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateInitialCopyWith<$Res> {
  __$LoginStateInitialCopyWithImpl(
      _LoginStateInitial _value, $Res Function(_LoginStateInitial) _then)
      : super(_value, (v) => _then(v as _LoginStateInitial));

  @override
  _LoginStateInitial get _value => super._value as _LoginStateInitial;
}

/// @nodoc

class _$_LoginStateInitial implements _LoginStateInitial {
  const _$_LoginStateInitial();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoginStateInitial);
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
    required TResult Function(_LoginStateInitial value) initial,
    required TResult Function(_LoginStateLoading value) loading,
    required TResult Function(_LoginStateFailure value) failure,
    required TResult Function(_LoginStateConfirmed value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginStateInitial value)? initial,
    TResult Function(_LoginStateLoading value)? loading,
    TResult Function(_LoginStateFailure value)? failure,
    TResult Function(_LoginStateConfirmed value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginStateInitial value)? initial,
    TResult Function(_LoginStateLoading value)? loading,
    TResult Function(_LoginStateFailure value)? failure,
    TResult Function(_LoginStateConfirmed value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _LoginStateInitial implements LoginState {
  const factory _LoginStateInitial() = _$_LoginStateInitial;
}

/// @nodoc
abstract class _$LoginStateLoadingCopyWith<$Res> {
  factory _$LoginStateLoadingCopyWith(
          _LoginStateLoading value, $Res Function(_LoginStateLoading) then) =
      __$LoginStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoginStateLoadingCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateLoadingCopyWith<$Res> {
  __$LoginStateLoadingCopyWithImpl(
      _LoginStateLoading _value, $Res Function(_LoginStateLoading) _then)
      : super(_value, (v) => _then(v as _LoginStateLoading));

  @override
  _LoginStateLoading get _value => super._value as _LoginStateLoading;
}

/// @nodoc

class _$_LoginStateLoading implements _LoginStateLoading {
  const _$_LoginStateLoading();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoginStateLoading);
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
    required TResult Function(_LoginStateInitial value) initial,
    required TResult Function(_LoginStateLoading value) loading,
    required TResult Function(_LoginStateFailure value) failure,
    required TResult Function(_LoginStateConfirmed value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginStateInitial value)? initial,
    TResult Function(_LoginStateLoading value)? loading,
    TResult Function(_LoginStateFailure value)? failure,
    TResult Function(_LoginStateConfirmed value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginStateInitial value)? initial,
    TResult Function(_LoginStateLoading value)? loading,
    TResult Function(_LoginStateFailure value)? failure,
    TResult Function(_LoginStateConfirmed value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoginStateLoading implements LoginState {
  const factory _LoginStateLoading() = _$_LoginStateLoading;
}

/// @nodoc
abstract class _$LoginStateFailureCopyWith<$Res> {
  factory _$LoginStateFailureCopyWith(
          _LoginStateFailure value, $Res Function(_LoginStateFailure) then) =
      __$LoginStateFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$LoginStateFailureCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateFailureCopyWith<$Res> {
  __$LoginStateFailureCopyWithImpl(
      _LoginStateFailure _value, $Res Function(_LoginStateFailure) _then)
      : super(_value, (v) => _then(v as _LoginStateFailure));

  @override
  _LoginStateFailure get _value => super._value as _LoginStateFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_LoginStateFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginStateFailure implements _LoginStateFailure {
  const _$_LoginStateFailure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LoginState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginStateFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$LoginStateFailureCopyWith<_LoginStateFailure> get copyWith =>
      __$LoginStateFailureCopyWithImpl<_LoginStateFailure>(this, _$identity);

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
    required TResult Function(_LoginStateInitial value) initial,
    required TResult Function(_LoginStateLoading value) loading,
    required TResult Function(_LoginStateFailure value) failure,
    required TResult Function(_LoginStateConfirmed value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginStateInitial value)? initial,
    TResult Function(_LoginStateLoading value)? loading,
    TResult Function(_LoginStateFailure value)? failure,
    TResult Function(_LoginStateConfirmed value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginStateInitial value)? initial,
    TResult Function(_LoginStateLoading value)? loading,
    TResult Function(_LoginStateFailure value)? failure,
    TResult Function(_LoginStateConfirmed value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _LoginStateFailure implements LoginState {
  const factory _LoginStateFailure(String message) = _$_LoginStateFailure;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoginStateFailureCopyWith<_LoginStateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoginStateConfirmedCopyWith<$Res> {
  factory _$LoginStateConfirmedCopyWith(_LoginStateConfirmed value,
          $Res Function(_LoginStateConfirmed) then) =
      __$LoginStateConfirmedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoginStateConfirmedCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateConfirmedCopyWith<$Res> {
  __$LoginStateConfirmedCopyWithImpl(
      _LoginStateConfirmed _value, $Res Function(_LoginStateConfirmed) _then)
      : super(_value, (v) => _then(v as _LoginStateConfirmed));

  @override
  _LoginStateConfirmed get _value => super._value as _LoginStateConfirmed;
}

/// @nodoc

class _$_LoginStateConfirmed implements _LoginStateConfirmed {
  const _$_LoginStateConfirmed();

  @override
  String toString() {
    return 'LoginState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoginStateConfirmed);
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
    required TResult Function(_LoginStateInitial value) initial,
    required TResult Function(_LoginStateLoading value) loading,
    required TResult Function(_LoginStateFailure value) failure,
    required TResult Function(_LoginStateConfirmed value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginStateInitial value)? initial,
    TResult Function(_LoginStateLoading value)? loading,
    TResult Function(_LoginStateFailure value)? failure,
    TResult Function(_LoginStateConfirmed value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginStateInitial value)? initial,
    TResult Function(_LoginStateLoading value)? loading,
    TResult Function(_LoginStateFailure value)? failure,
    TResult Function(_LoginStateConfirmed value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _LoginStateConfirmed implements LoginState {
  const factory _LoginStateConfirmed() = _$_LoginStateConfirmed;
}
