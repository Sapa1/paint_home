import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/model/cart_response.dart';

part 'cart_state.freezed.dart';

@freezed
abstract class CartState with _$CartState {
  const factory CartState.initial() = _CartStateInitial;
  const factory CartState.loading() = _CartStateLoading;
  const factory CartState.failure(String message) = _CartStateFailure;
  const factory CartState.success({required CartResponse postItemCartResponse}) = _CartStateSuccess;
}
