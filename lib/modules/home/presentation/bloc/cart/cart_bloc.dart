import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paint_home/modules/home/domain/entities/paint_entity.dart';

import '../../../domain/entities/cart_itens_entity.dart';
import '../../../domain/usecases/clear_cart_usecase.dart';
import '../../../domain/usecases/get_cart_itens_usecase.dart';
import '../../../domain/usecases/post_item_cart_usecase.dart';
import '../../../domain/usecases/put_cart_item_quantity_usecase.dart';
import 'cart_event.dart';
import 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final GetCartItensUseCase getCartItensUseCase;
  final PutItemCarQuantitytUseCase putItemCarQuantitytUseCase;
  final PostItemCartUseCase postItemCartUseCase;
  final ClearCartUseCase clearCartUseCase;

  CartBloc(
    this.getCartItensUseCase,
    this.putItemCarQuantitytUseCase,
    this.postItemCartUseCase,
    this.clearCartUseCase,
  ) : super(const CartState.initial()) {
    on<GetItemEvent>(
      (event, emit) => emit.forEach<CartState>(
        _mapGetCart(),
        onData: (data) => data,
      ),
    );
    on<PostItemEvent>(
      (event, emit) => emit.forEach<CartState>(
        _mapPostItemCart(event.paintEntity),
        onData: (data) => data,
      ),
    );
    on<ClearCartEvent>(
      (event, emit) => emit.forEach<CartState>(
        _mapClearCart(event.listCartItensEntity),
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

  Stream<CartState> _mapPostItemCart(PaintEntity paintEntity) async* {
    // yield const CartState.loading();
    final response = await postItemCartUseCase(paintEntity);

    yield response.fold(
      (failure) => CartState.failure(failure.message),
      (result) => CartState.success(postItemCartResponse: result),
    );
  }

  Stream<CartState> _mapClearCart(List<CartItensEntity> listCartItensEntity) async* {
    for (var i = 1; listCartItensEntity.isNotEmpty; i++) {
      final result = await clearCartUseCase(i);

      result.fold(
        (l) => add(ClearCartEvent(listCartItensEntity: listCartItensEntity)),
        (r) => add(GetItemEvent()),
      );
    }
  }
}
