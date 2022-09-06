import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'cart_paint_details_entity.dart';

class CartItensEntity extends Equatable {
  final int quantity;
  final CartPaintDetailsEntity cartPaintDetailsEntity;

  const CartItensEntity({
    required this.quantity,
    required this.cartPaintDetailsEntity,
  });

  CartItensEntity copyWith({
    int? quantity,
    CartPaintDetailsEntity? cartPaintDetailsEntity,
  }) {
    return CartItensEntity(
      quantity: quantity ?? this.quantity,
      cartPaintDetailsEntity: cartPaintDetailsEntity ?? this.cartPaintDetailsEntity,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'quantity': quantity,
      'cartPaintDetailsEntity': cartPaintDetailsEntity.toMap(),
    };
  }

  factory CartItensEntity.fromMap(Map<String, dynamic> map) {
    return CartItensEntity(
      quantity: map['quantity']?.toInt() ?? 0,
      cartPaintDetailsEntity: CartPaintDetailsEntity.fromMap(map['paint']),
    );
  }

  String toJson() => json.encode(toMap());

  factory CartItensEntity.fromJson(String source) => CartItensEntity.fromMap(json.decode(source));

  @override
  String toString() =>
      'CartItensEntity(quantity: $quantity, cartPaintDetailsEntity: $cartPaintDetailsEntity)';

  @override
  List<Object> get props => [quantity, cartPaintDetailsEntity];
}
