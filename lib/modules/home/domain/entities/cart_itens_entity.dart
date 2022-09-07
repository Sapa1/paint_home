import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'cart_paint_details_entity.dart';

class CartItensEntity extends Equatable {
  final int quantity;
  final String id;
  final CartPaintDetailsEntity cartPaintDetailsEntity;

  const CartItensEntity({
    required this.quantity,
    required this.id,
    required this.cartPaintDetailsEntity,
  });

  CartItensEntity copyWith({
    int? quantity,
    String? id,
    CartPaintDetailsEntity? cartPaintDetailsEntity,
  }) {
    return CartItensEntity(
      quantity: quantity ?? this.quantity,
      id: id ?? this.id,
      cartPaintDetailsEntity: cartPaintDetailsEntity ?? this.cartPaintDetailsEntity,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'quantity': quantity,
      'id': id,
      'cartPaintDetailsEntity': cartPaintDetailsEntity.toMap(),
    };
  }

  factory CartItensEntity.fromMap(Map<String, dynamic> map) {
    return CartItensEntity(
      quantity: map['quantity']?.toInt() ?? 0,
      id: map['id'] ?? '',
      cartPaintDetailsEntity: CartPaintDetailsEntity.fromMap(map['paint']),
    );
  }

  String toJson() => json.encode(toMap());

  factory CartItensEntity.fromJson(String source) => CartItensEntity.fromMap(json.decode(source));

  @override
  String toString() =>
      'CartItensEntity(quantity: $quantity, id: $id, cartPaintDetailsEntity: $cartPaintDetailsEntity)';

  @override
  List<Object> get props => [quantity, id, cartPaintDetailsEntity];
}
