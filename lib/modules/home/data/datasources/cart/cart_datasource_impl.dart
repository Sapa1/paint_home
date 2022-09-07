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
    final response = await paintDio.post('/cart');
    return CartResponse.fromMap(response.data);
  }

  @override
  Future<CartResponse> getCartItens() async {
    final response = await paintDio.get('/cart');
    return CartResponse.fromMap(response.data);
  }

  @override
  Future<String> putCartItemQuantity(CartItensEntity cartItensEntity) async {
    await paintDio.put(
      '/cart/${cartItensEntity.id}',
      data: cartItensEntity.toJson(),
    );
    return 'CartResponse.fromMap(response.data)';
  }
}
