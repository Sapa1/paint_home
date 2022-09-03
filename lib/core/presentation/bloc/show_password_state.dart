import 'package:freezed_annotation/freezed_annotation.dart';

part 'show_password_state.freezed.dart';

@freezed
abstract class ShowPasswordState with _$ShowPasswordState {
  const factory ShowPasswordState.showPassword({required bool showPassword}) =
      _ShowPasswordStateShowPassword;
}
