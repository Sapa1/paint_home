import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../data/model/cart_response.dart';
import '../entities/cart_itens_entity.dart';
import '../entities/paint_entity.dart';

abstract class CartRepository {
  Future<Either<Failure, CartResponse>> postItem(PaintEntity paintEntity);
  Future<Either<Failure, String>> putCartItemQuantity(CartItensEntity cartItensEntity);
  Future<Either<Failure, CartResponse>> getCartItens();
  Future<Either<Failure, CartItensEntity>> clearCart(int id);
}
