import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:paint_home/modules/home/data/model/paint_response.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.initial() = _HomeStateInitial;
  const factory HomeState.loading() = _HomeStateLoading;
  const factory HomeState.failure(String message) = _HomeStateFailure;
  const factory HomeState.success({required PaintResponse paintResponse}) = _HomeStateConfirmed;
}
