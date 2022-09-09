import 'package:paint_home/core/dio/paint_dio.dart';

import '../../../domain/entities/cart_itens_entity.dart';
import '../../../domain/entities/paint_entity.dart';
import '../../model/cart_response.dart';
import 'cart_datasource.dart';

class CartDataSourceImpl implements CartDataSource {
  final PaintDio paintDio;

  CartDataSourceImpl(this.paintDio);

  @override
  Future<CartResponse> postItem(PaintEntity paintEntity) async {
    await paintDio.post(
      '/cart',
      data: paintEntity.toJson(),
    );
    return const CartResponse(listCartItensEntity: []);
  }

  @override
  Future<CartResponse> getCartItens() async {
    final response = await paintDio.get('/cart');
    return CartResponse.fromMap(response.data);
  }

  @override
  Future<void> putCartItemQuantity(CartItensEntity cartItensEntity) async {
    await paintDio.put(
      '/cart/${cartItensEntity.id}',
      data: cartItensEntity.toJson(),
    );
  }

  @override
  Future<CartItensEntity> clearCart(int id) async {
    final response = await paintDio.delete('/cart/$id');
    return CartItensEntity.fromMap(response.data);
  }
}
