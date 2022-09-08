import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/user_entity.dart';

part 'profile_state.freezed.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _ProfileStateInitial;
  const factory ProfileState.loading() = _ProfileStateLoading;
  const factory ProfileState.failure(String message) = _ProfileStateFailure;
  const factory ProfileState.success({required UserEntity userEntity}) = _ProfileStateSuccess;
}
