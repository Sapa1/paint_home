import '../../../domain/entities/paint_entity.dart';
import '../../model/cart_response.dart';

abstract class CartDataSource {
  Future<CartResponse> postItem(PaintEntity paintEntity);
  Future<CartResponse> getCartItens();
}
