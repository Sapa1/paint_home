import '../../../domain/entities/cart_itens_entity.dart';
import '../../../domain/entities/paint_entity.dart';
import '../../model/cart_response.dart';

abstract class CartDataSource {
  Future<CartResponse> postItem(PaintEntity paintEntity);
  Future<CartResponse> getCartItens();
  Future<String> putCartItemQuantity(CartItensEntity cartItensEntity);
  Future<CartItensEntity> clearCart(int id);
}
