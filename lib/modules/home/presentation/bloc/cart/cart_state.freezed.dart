// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CartStateTearOff {
  const _$CartStateTearOff();

  _CartStateInitial initial() {
    return const _CartStateInitial();
  }

  _CartStateLoading loading() {
    return const _CartStateLoading();
  }

  _CartStateFailure failure(String message) {
    return _CartStateFailure(
      message,
    );
  }

  _CartStateSuccess success({required CartResponse postItemCartResponse}) {
    return _CartStateSuccess(
      postItemCartResponse: postItemCartResponse,
    );
  }
}

/// @nodoc
const $CartState = _$CartStateTearOff();

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(CartResponse postItemCartResponse) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(CartResponse postItemCartResponse)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(CartResponse postItemCartResponse)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartStateInitial value) initial,
    required TResult Function(_CartStateLoading value) loading,
    required TResult Function(_CartStateFailure value) failure,
    required TResult Function(_CartStateSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CartStateInitial value)? initial,
    TResult Function(_CartStateLoading value)? loading,
    TResult Function(_CartStateFailure value)? failure,
    TResult Function(_CartStateSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartStateInitial value)? initial,
    TResult Function(_CartStateLoading value)? loading,
    TResult Function(_CartStateFailure value)? failure,
    TResult Function(_CartStateSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;
  // ignore: unused_field
  final $Res Function(CartState) _then;
}

/// @nodoc
abstract class _$CartStateInitialCopyWith<$Res> {
  factory _$CartStateInitialCopyWith(
          _CartStateInitial value, $Res Function(_CartStateInitial) then) =
      __$CartStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$CartStateInitialCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$CartStateInitialCopyWith<$Res> {
  __$CartStateInitialCopyWithImpl(_CartStateInitial _value, $Res Function(_CartStateInitial) _then)
      : super(_value, (v) => _then(v as _CartStateInitial));

  @override
  _CartStateInitial get _value => super._value as _CartStateInitial;
}

/// @nodoc

class _$_CartStateInitial implements _CartStateInitial {
  const _$_CartStateInitial();

  @override
  String toString() {
    return 'CartState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CartStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(CartResponse postItemCartResponse) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(CartResponse postItemCartResponse)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(CartResponse postItemCartResponse)? success,
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
    required TResult Function(_CartStateInitial value) initial,
    required TResult Function(_CartStateLoading value) loading,
    required TResult Function(_CartStateFailure value) failure,
    required TResult Function(_CartStateSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CartStateInitial value)? initial,
    TResult Function(_CartStateLoading value)? loading,
    TResult Function(_CartStateFailure value)? failure,
    TResult Function(_CartStateSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartStateInitial value)? initial,
    TResult Function(_CartStateLoading value)? loading,
    TResult Function(_CartStateFailure value)? failure,
    TResult Function(_CartStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CartStateInitial implements CartState {
  const factory _CartStateInitial() = _$_CartStateInitial;
}

/// @nodoc
abstract class _$CartStateLoadingCopyWith<$Res> {
  factory _$CartStateLoadingCopyWith(
          _CartStateLoading value, $Res Function(_CartStateLoading) then) =
      __$CartStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$CartStateLoadingCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$CartStateLoadingCopyWith<$Res> {
  __$CartStateLoadingCopyWithImpl(_CartStateLoading _value, $Res Function(_CartStateLoading) _then)
      : super(_value, (v) => _then(v as _CartStateLoading));

  @override
  _CartStateLoading get _value => super._value as _CartStateLoading;
}

/// @nodoc

class _$_CartStateLoading implements _CartStateLoading {
  const _$_CartStateLoading();

  @override
  String toString() {
    return 'CartState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CartStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(CartResponse postItemCartResponse) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(CartResponse postItemCartResponse)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(CartResponse postItemCartResponse)? success,
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
    required TResult Function(_CartStateInitial value) initial,
    required TResult Function(_CartStateLoading value) loading,
    required TResult Function(_CartStateFailure value) failure,
    required TResult Function(_CartStateSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CartStateInitial value)? initial,
    TResult Function(_CartStateLoading value)? loading,
    TResult Function(_CartStateFailure value)? failure,
    TResult Function(_CartStateSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartStateInitial value)? initial,
    TResult Function(_CartStateLoading value)? loading,
    TResult Function(_CartStateFailure value)? failure,
    TResult Function(_CartStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CartStateLoading implements CartState {
  const factory _CartStateLoading() = _$_CartStateLoading;
}

/// @nodoc
abstract class _$CartStateFailureCopyWith<$Res> {
  factory _$CartStateFailureCopyWith(
          _CartStateFailure value, $Res Function(_CartStateFailure) then) =
      __$CartStateFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$CartStateFailureCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$CartStateFailureCopyWith<$Res> {
  __$CartStateFailureCopyWithImpl(_CartStateFailure _value, $Res Function(_CartStateFailure) _then)
      : super(_value, (v) => _then(v as _CartStateFailure));

  @override
  _CartStateFailure get _value => super._value as _CartStateFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_CartStateFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CartStateFailure implements _CartStateFailure {
  const _$_CartStateFailure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CartState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CartStateFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$CartStateFailureCopyWith<_CartStateFailure> get copyWith =>
      __$CartStateFailureCopyWithImpl<_CartStateFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(CartResponse postItemCartResponse) success,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(CartResponse postItemCartResponse)? success,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(CartResponse postItemCartResponse)? success,
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
    required TResult Function(_CartStateInitial value) initial,
    required TResult Function(_CartStateLoading value) loading,
    required TResult Function(_CartStateFailure value) failure,
    required TResult Function(_CartStateSuccess value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CartStateInitial value)? initial,
    TResult Function(_CartStateLoading value)? loading,
    TResult Function(_CartStateFailure value)? failure,
    TResult Function(_CartStateSuccess value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartStateInitial value)? initial,
    TResult Function(_CartStateLoading value)? loading,
    TResult Function(_CartStateFailure value)? failure,
    TResult Function(_CartStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _CartStateFailure implements CartState {
  const factory _CartStateFailure(String message) = _$_CartStateFailure;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CartStateFailureCopyWith<_CartStateFailure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CartStateSuccessCopyWith<$Res> {
  factory _$CartStateSuccessCopyWith(
          _CartStateSuccess value, $Res Function(_CartStateSuccess) then) =
      __$CartStateSuccessCopyWithImpl<$Res>;
  $Res call({CartResponse postItemCartResponse});
}

/// @nodoc
class __$CartStateSuccessCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$CartStateSuccessCopyWith<$Res> {
  __$CartStateSuccessCopyWithImpl(_CartStateSuccess _value, $Res Function(_CartStateSuccess) _then)
      : super(_value, (v) => _then(v as _CartStateSuccess));

  @override
  _CartStateSuccess get _value => super._value as _CartStateSuccess;

  @override
  $Res call({
    Object? postItemCartResponse = freezed,
  }) {
    return _then(_CartStateSuccess(
      postItemCartResponse: postItemCartResponse == freezed
          ? _value.postItemCartResponse
          : postItemCartResponse // ignore: cast_nullable_to_non_nullable
              as CartResponse,
    ));
  }
}

/// @nodoc

class _$_CartStateSuccess implements _CartStateSuccess {
  const _$_CartStateSuccess({required this.postItemCartResponse});

  @override
  final CartResponse postItemCartResponse;

  @override
  String toString() {
    return 'CartState.success(postItemCartResponse: $postItemCartResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CartStateSuccess &&
            (identical(other.postItemCartResponse, postItemCartResponse) ||
                const DeepCollectionEquality()
                    .equals(other.postItemCartResponse, postItemCartResponse)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(postItemCartResponse);

  @JsonKey(ignore: true)
  @override
  _$CartStateSuccessCopyWith<_CartStateSuccess> get copyWith =>
      __$CartStateSuccessCopyWithImpl<_CartStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(CartResponse postItemCartResponse) success,
  }) {
    return success(postItemCartResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(CartResponse postItemCartResponse)? success,
  }) {
    return success?.call(postItemCartResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(CartResponse postItemCartResponse)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(postItemCartResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartStateInitial value) initial,
    required TResult Function(_CartStateLoading value) loading,
    required TResult Function(_CartStateFailure value) failure,
    required TResult Function(_CartStateSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CartStateInitial value)? initial,
    TResult Function(_CartStateLoading value)? loading,
    TResult Function(_CartStateFailure value)? failure,
    TResult Function(_CartStateSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartStateInitial value)? initial,
    TResult Function(_CartStateLoading value)? loading,
    TResult Function(_CartStateFailure value)? failure,
    TResult Function(_CartStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _CartStateSuccess implements CartState {
  const factory _CartStateSuccess({required CartResponse postItemCartResponse}) =
      _$_CartStateSuccess;

  CartResponse get postItemCartResponse => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CartStateSuccessCopyWith<_CartStateSuccess> get copyWith => throw _privateConstructorUsedError;
}
