// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeStateInitial initial() {
    return const _HomeStateInitial();
  }

  _HomeStateLoading loading() {
    return const _HomeStateLoading();
  }

  _HomeStateFailure failure(String message) {
    return _HomeStateFailure(
      message,
    );
  }

  _HomeStateConfirmed success({required PaintResponse paintResponse}) {
    return _HomeStateConfirmed(
      paintResponse: paintResponse,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(PaintResponse paintResponse) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(PaintResponse paintResponse)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(PaintResponse paintResponse)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStateInitial value) initial,
    required TResult Function(_HomeStateLoading value) loading,
    required TResult Function(_HomeStateFailure value) failure,
    required TResult Function(_HomeStateConfirmed value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeStateInitial value)? initial,
    TResult Function(_HomeStateLoading value)? loading,
    TResult Function(_HomeStateFailure value)? failure,
    TResult Function(_HomeStateConfirmed value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateInitial value)? initial,
    TResult Function(_HomeStateLoading value)? loading,
    TResult Function(_HomeStateFailure value)? failure,
    TResult Function(_HomeStateConfirmed value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class _$HomeStateInitialCopyWith<$Res> {
  factory _$HomeStateInitialCopyWith(
          _HomeStateInitial value, $Res Function(_HomeStateInitial) then) =
      __$HomeStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$HomeStateInitialCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateInitialCopyWith<$Res> {
  __$HomeStateInitialCopyWithImpl(
      _HomeStateInitial _value, $Res Function(_HomeStateInitial) _then)
      : super(_value, (v) => _then(v as _HomeStateInitial));

  @override
  _HomeStateInitial get _value => super._value as _HomeStateInitial;
}

/// @nodoc

class _$_HomeStateInitial implements _HomeStateInitial {
  const _$_HomeStateInitial();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _HomeStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(PaintResponse paintResponse) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(PaintResponse paintResponse)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(PaintResponse paintResponse)? success,
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
    required TResult Function(_HomeStateInitial value) initial,
    required TResult Function(_HomeStateLoading value) loading,
    required TResult Function(_HomeStateFailure value) failure,
    required TResult Function(_HomeStateConfirmed value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeStateInitial value)? initial,
    TResult Function(_HomeStateLoading value)? loading,
    TResult Function(_HomeStateFailure value)? failure,
    TResult Function(_HomeStateConfirmed value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateInitial value)? initial,
    TResult Function(_HomeStateLoading value)? loading,
    TResult Function(_HomeStateFailure value)? failure,
    TResult Function(_HomeStateConfirmed value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _HomeStateInitial implements HomeState {
  const factory _HomeStateInitial() = _$_HomeStateInitial;
}

/// @nodoc
abstract class _$HomeStateLoadingCopyWith<$Res> {
  factory _$HomeStateLoadingCopyWith(
          _HomeStateLoading value, $Res Function(_HomeStateLoading) then) =
      __$HomeStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$HomeStateLoadingCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateLoadingCopyWith<$Res> {
  __$HomeStateLoadingCopyWithImpl(
      _HomeStateLoading _value, $Res Function(_HomeStateLoading) _then)
      : super(_value, (v) => _then(v as _HomeStateLoading));

  @override
  _HomeStateLoading get _value => super._value as _HomeStateLoading;
}

/// @nodoc

class _$_HomeStateLoading implements _HomeStateLoading {
  const _$_HomeStateLoading();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _HomeStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(PaintResponse paintResponse) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(PaintResponse paintResponse)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(PaintResponse paintResponse)? success,
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
    required TResult Function(_HomeStateInitial value) initial,
    required TResult Function(_HomeStateLoading value) loading,
    required TResult Function(_HomeStateFailure value) failure,
    required TResult Function(_HomeStateConfirmed value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeStateInitial value)? initial,
    TResult Function(_HomeStateLoading value)? loading,
    TResult Function(_HomeStateFailure value)? failure,
    TResult Function(_HomeStateConfirmed value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateInitial value)? initial,
    TResult Function(_HomeStateLoading value)? loading,
    TResult Function(_HomeStateFailure value)? failure,
    TResult Function(_HomeStateConfirmed value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _HomeStateLoading implements HomeState {
  const factory _HomeStateLoading() = _$_HomeStateLoading;
}

/// @nodoc
abstract class _$HomeStateFailureCopyWith<$Res> {
  factory _$HomeStateFailureCopyWith(
          _HomeStateFailure value, $Res Function(_HomeStateFailure) then) =
      __$HomeStateFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$HomeStateFailureCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateFailureCopyWith<$Res> {
  __$HomeStateFailureCopyWithImpl(
      _HomeStateFailure _value, $Res Function(_HomeStateFailure) _then)
      : super(_value, (v) => _then(v as _HomeStateFailure));

  @override
  _HomeStateFailure get _value => super._value as _HomeStateFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_HomeStateFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_HomeStateFailure implements _HomeStateFailure {
  const _$_HomeStateFailure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'HomeState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeStateFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$HomeStateFailureCopyWith<_HomeStateFailure> get copyWith =>
      __$HomeStateFailureCopyWithImpl<_HomeStateFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(PaintResponse paintResponse) success,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(PaintResponse paintResponse)? success,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(PaintResponse paintResponse)? success,
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
    required TResult Function(_HomeStateInitial value) initial,
    required TResult Function(_HomeStateLoading value) loading,
    required TResult Function(_HomeStateFailure value) failure,
    required TResult Function(_HomeStateConfirmed value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeStateInitial value)? initial,
    TResult Function(_HomeStateLoading value)? loading,
    TResult Function(_HomeStateFailure value)? failure,
    TResult Function(_HomeStateConfirmed value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateInitial value)? initial,
    TResult Function(_HomeStateLoading value)? loading,
    TResult Function(_HomeStateFailure value)? failure,
    TResult Function(_HomeStateConfirmed value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _HomeStateFailure implements HomeState {
  const factory _HomeStateFailure(String message) = _$_HomeStateFailure;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$HomeStateFailureCopyWith<_HomeStateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$HomeStateConfirmedCopyWith<$Res> {
  factory _$HomeStateConfirmedCopyWith(
          _HomeStateConfirmed value, $Res Function(_HomeStateConfirmed) then) =
      __$HomeStateConfirmedCopyWithImpl<$Res>;
  $Res call({PaintResponse paintResponse});
}

/// @nodoc
class __$HomeStateConfirmedCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateConfirmedCopyWith<$Res> {
  __$HomeStateConfirmedCopyWithImpl(
      _HomeStateConfirmed _value, $Res Function(_HomeStateConfirmed) _then)
      : super(_value, (v) => _then(v as _HomeStateConfirmed));

  @override
  _HomeStateConfirmed get _value => super._value as _HomeStateConfirmed;

  @override
  $Res call({
    Object? paintResponse = freezed,
  }) {
    return _then(_HomeStateConfirmed(
      paintResponse: paintResponse == freezed
          ? _value.paintResponse
          : paintResponse // ignore: cast_nullable_to_non_nullable
              as PaintResponse,
    ));
  }
}

/// @nodoc

class _$_HomeStateConfirmed implements _HomeStateConfirmed {
  const _$_HomeStateConfirmed({required this.paintResponse});

  @override
  final PaintResponse paintResponse;

  @override
  String toString() {
    return 'HomeState.success(paintResponse: $paintResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeStateConfirmed &&
            (identical(other.paintResponse, paintResponse) ||
                const DeepCollectionEquality()
                    .equals(other.paintResponse, paintResponse)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(paintResponse);

  @JsonKey(ignore: true)
  @override
  _$HomeStateConfirmedCopyWith<_HomeStateConfirmed> get copyWith =>
      __$HomeStateConfirmedCopyWithImpl<_HomeStateConfirmed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(PaintResponse paintResponse) success,
  }) {
    return success(paintResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(PaintResponse paintResponse)? success,
  }) {
    return success?.call(paintResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(PaintResponse paintResponse)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(paintResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStateInitial value) initial,
    required TResult Function(_HomeStateLoading value) loading,
    required TResult Function(_HomeStateFailure value) failure,
    required TResult Function(_HomeStateConfirmed value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeStateInitial value)? initial,
    TResult Function(_HomeStateLoading value)? loading,
    TResult Function(_HomeStateFailure value)? failure,
    TResult Function(_HomeStateConfirmed value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateInitial value)? initial,
    TResult Function(_HomeStateLoading value)? loading,
    TResult Function(_HomeStateFailure value)? failure,
    TResult Function(_HomeStateConfirmed value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _HomeStateConfirmed implements HomeState {
  const factory _HomeStateConfirmed({required PaintResponse paintResponse}) =
      _$_HomeStateConfirmed;

  PaintResponse get paintResponse => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$HomeStateConfirmedCopyWith<_HomeStateConfirmed> get copyWith =>
      throw _privateConstructorUsedError;
}
