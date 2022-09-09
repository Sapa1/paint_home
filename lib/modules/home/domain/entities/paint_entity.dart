import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'description_entity.dart';

class PaintEntity extends Equatable {
  final String image;
  final String name;
  final int price;
  final List<DescriptionEntity> benefits;
  final int quantity;

  const PaintEntity({
    required this.image,
    required this.name,
    required this.price,
    required this.benefits,
    required this.quantity,
  });

  PaintEntity copyWith({
    String? image,
    String? name,
    int? price,
    List<DescriptionEntity>? benefits,
    int? quantity,
  }) {
    return PaintEntity(
      image: image ?? this.image,
      name: name ?? this.name,
      price: price ?? this.price,
      benefits: benefits ?? this.benefits,
      quantity: quantity ?? this.quantity,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'image': image,
      'name': name,
      'price': price,
      'benefits': benefits.map((x) => x.toMap()).toList(),
      'quantity': quantity,
    };
  }

  factory PaintEntity.fromMap(Map<String, dynamic> map) {
    return PaintEntity(
      image: map['image'] ?? '',
      name: map['name'] ?? '',
      quantity: map['quantity']?.toInt() ?? 0,
      price: map['price']?.toInt() ?? 0,
      benefits:
          List<DescriptionEntity>.from(map['benefits']?.map((x) => DescriptionEntity.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory PaintEntity.fromJson(String source) => PaintEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PaintEntity(image: $image, name: $name, price: $price, benefits: $benefits, quantity: $quantity)';
  }

  @override
  List<Object> get props {
    return [
      image,
      name,
      price,
      benefits,
      quantity,
    ];
  }
}
