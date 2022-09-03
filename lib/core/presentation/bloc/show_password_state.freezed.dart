// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'show_password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ShowPasswordStateTearOff {
  const _$ShowPasswordStateTearOff();

  _ShowPasswordStateShowPassword showPassword({required bool showPassword}) {
    return _ShowPasswordStateShowPassword(
      showPassword: showPassword,
    );
  }
}

/// @nodoc
const $ShowPasswordState = _$ShowPasswordStateTearOff();

/// @nodoc
mixin _$ShowPasswordState {
  bool get showPassword => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showPassword) showPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool showPassword)? showPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showPassword)? showPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowPasswordStateShowPassword value)
        showPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ShowPasswordStateShowPassword value)? showPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowPasswordStateShowPassword value)? showPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShowPasswordStateCopyWith<ShowPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowPasswordStateCopyWith<$Res> {
  factory $ShowPasswordStateCopyWith(
          ShowPasswordState value, $Res Function(ShowPasswordState) then) =
      _$ShowPasswordStateCopyWithImpl<$Res>;
  $Res call({bool showPassword});
}

/// @nodoc
class _$ShowPasswordStateCopyWithImpl<$Res>
    implements $ShowPasswordStateCopyWith<$Res> {
  _$ShowPasswordStateCopyWithImpl(this._value, this._then);

  final ShowPasswordState _value;
  // ignore: unused_field
  final $Res Function(ShowPasswordState) _then;

  @override
  $Res call({
    Object? showPassword = freezed,
  }) {
    return _then(_value.copyWith(
      showPassword: showPassword == freezed
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ShowPasswordStateShowPasswordCopyWith<$Res>
    implements $ShowPasswordStateCopyWith<$Res> {
  factory _$ShowPasswordStateShowPasswordCopyWith(
          _ShowPasswordStateShowPassword value,
          $Res Function(_ShowPasswordStateShowPassword) then) =
      __$ShowPasswordStateShowPasswordCopyWithImpl<$Res>;
  @override
  $Res call({bool showPassword});
}

/// @nodoc
class __$ShowPasswordStateShowPasswordCopyWithImpl<$Res>
    extends _$ShowPasswordStateCopyWithImpl<$Res>
    implements _$ShowPasswordStateShowPasswordCopyWith<$Res> {
  __$ShowPasswordStateShowPasswordCopyWithImpl(
      _ShowPasswordStateShowPassword _value,
      $Res Function(_ShowPasswordStateShowPassword) _then)
      : super(_value, (v) => _then(v as _ShowPasswordStateShowPassword));

  @override
  _ShowPasswordStateShowPassword get _value =>
      super._value as _ShowPasswordStateShowPassword;

  @override
  $Res call({
    Object? showPassword = freezed,
  }) {
    return _then(_ShowPasswordStateShowPassword(
      showPassword: showPassword == freezed
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ShowPasswordStateShowPassword
    implements _ShowPasswordStateShowPassword {
  const _$_ShowPasswordStateShowPassword({required this.showPassword});

  @override
  final bool showPassword;

  @override
  String toString() {
    return 'ShowPasswordState.showPassword(showPassword: $showPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShowPasswordStateShowPassword &&
            (identical(other.showPassword, showPassword) ||
                const DeepCollectionEquality()
                    .equals(other.showPassword, showPassword)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(showPassword);

  @JsonKey(ignore: true)
  @override
  _$ShowPasswordStateShowPasswordCopyWith<_ShowPasswordStateShowPassword>
      get copyWith => __$ShowPasswordStateShowPasswordCopyWithImpl<
          _ShowPasswordStateShowPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showPassword) showPassword,
  }) {
    return showPassword(this.showPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool showPassword)? showPassword,
  }) {
    return showPassword?.call(this.showPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showPassword)? showPassword,
    required TResult orElse(),
  }) {
    if (showPassword != null) {
      return showPassword(this.showPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowPasswordStateShowPassword value)
        showPassword,
  }) {
    return showPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ShowPasswordStateShowPassword value)? showPassword,
  }) {
    return showPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowPasswordStateShowPassword value)? showPassword,
    required TResult orElse(),
  }) {
    if (showPassword != null) {
      return showPassword(this);
    }
    return orElse();
  }
}

abstract class _ShowPasswordStateShowPassword implements ShowPasswordState {
  const factory _ShowPasswordStateShowPassword({required bool showPassword}) =
      _$_ShowPasswordStateShowPassword;

  @override
  bool get showPassword => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShowPasswordStateShowPasswordCopyWith<_ShowPasswordStateShowPassword>
      get copyWith => throw _privateConstructorUsedError;
}
