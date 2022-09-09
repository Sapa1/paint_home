import 'dart:convert';

import 'package:equatable/equatable.dart';

class CartItensEntity extends Equatable {
  final int quantity;
  final String name;
  final String id;
  final int price;
  final String coverImage;

  const CartItensEntity({
    required this.quantity,
    required this.name,
    required this.id,
    required this.price,
    required this.coverImage,
  });

  CartItensEntity copyWith({
    int? quantity,
    String? name,
    String? id,
    int? price,
    String? coverImage,
  }) {
    return CartItensEntity(
      quantity: quantity ?? this.quantity,
      name: name ?? this.name,
      id: id ?? this.id,
      price: price ?? this.price,
      coverImage: coverImage ?? this.coverImage,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'quantity': quantity,
      'name': name,
      'id': id,
      'price': price,
      'coverImage': coverImage,
    };
  }

  factory CartItensEntity.fromMap(Map<String, dynamic> map) {
    return CartItensEntity(
      quantity: map['quantity']?.toInt() ?? 0,
      name: map['name'] ?? '',
      id: map['id'] ?? '',
      price: map['price']?.toInt() ?? 0,
      coverImage: map['image'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CartItensEntity.fromJson(String source) => CartItensEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CartItensEntity(quantity: $quantity, name: $name, id: $id, price: $price, coverImage: $coverImage)';
  }

  @override
  List<Object> get props {
    return [
      quantity,
      name,
      id,
      price,
      coverImage,
    ];
  }
}
