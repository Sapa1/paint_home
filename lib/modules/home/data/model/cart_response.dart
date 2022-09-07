import 'dart:convert';

import 'package:equatable/equatable.dart';

import '../../domain/entities/cart_itens_entity.dart';

class CartResponse extends Equatable {
  final List<CartItensEntity> listCartItensEntity;

  const CartResponse({
    required this.listCartItensEntity,
  });

  CartResponse copyWith({
    List<CartItensEntity>? listCartItensEntity,
  }) {
    return CartResponse(
      listCartItensEntity: listCartItensEntity ?? this.listCartItensEntity,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'listCartItensEntity': listCartItensEntity.map((x) => x.toMap()).toList(),
    };
  }

  factory CartResponse.fromMap(dynamic data) {
    final List<Map<String, dynamic>> list = List.from(data);
    return CartResponse(
      listCartItensEntity: list.map(CartItensEntity.fromMap).toList(),
    );
  }

  String toJson() => json.encode(toMap());

  factory CartResponse.fromJson(String source) => CartResponse.fromMap(json.decode(source));

  @override
  String toString() => 'CartResponse(listCartItensEntity: $listCartItensEntity)';

  @override
  List<Object> get props => [listCartItensEntity];
}
