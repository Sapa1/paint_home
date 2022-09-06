import 'dart:convert';

import 'package:equatable/equatable.dart';

class CartPaintDetailsEntity extends Equatable {
  final String name;
  final String price;
  final bool deliveryFree;
  final String coverImage;
  final String description;

  const CartPaintDetailsEntity({
    required this.name,
    required this.price,
    required this.deliveryFree,
    required this.coverImage,
    required this.description,
  });

  CartPaintDetailsEntity copyWith({
    String? name,
    String? price,
    bool? deliveryFree,
    String? coverImage,
    String? description,
  }) {
    return CartPaintDetailsEntity(
      name: name ?? this.name,
      price: price ?? this.price,
      deliveryFree: deliveryFree ?? this.deliveryFree,
      coverImage: coverImage ?? this.coverImage,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'price': price,
      'deliveryFree': deliveryFree,
      'coverImage': coverImage,
      'description': description,
    };
  }

  factory CartPaintDetailsEntity.fromMap(Map<String, dynamic> map) {
    return CartPaintDetailsEntity(
      name: map['name'] ?? '',
      price: map['price'] ?? '',
      deliveryFree: map['deliveryFree'] ?? false,
      coverImage: map['coverImage'] ?? '',
      description: map['description'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CartPaintDetailsEntity.fromJson(String source) =>
      CartPaintDetailsEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CartPaintDetailsEntity(name: $name, price: $price, deliveryFree: $deliveryFree, coverImage: $coverImage, description: $description)';
  }

  @override
  List<Object> get props {
    return [
      name,
      price,
      deliveryFree,
      coverImage,
      description,
    ];
  }
}
