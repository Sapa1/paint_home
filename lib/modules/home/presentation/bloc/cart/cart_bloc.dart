import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecases/get_cart_itens_usecase.dart';
import 'cart_event.dart';
import 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final GetCartItensUseCase getCartItensUseCase;

  CartBloc(
    this.getCartItensUseCase,
  ) : super(const CartState.initial()) {
    on<GetItemEvent>(
      (event, emit) => emit.forEach<CartState>(
        _mapGetCart(),
        onData: (data) => data,
      ),
    );
  }

  Stream<CartState> _mapGetCart() async* {
    // yield const CartState.loading();
    final response = await getCartItensUseCase();

    yield response.fold(
      (failure) => CartState.failure(failure.message),
      (result) => CartState.success(postItemCartResponse: result),
    );
  }
}
