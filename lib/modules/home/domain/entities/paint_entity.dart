import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'description_entity.dart';

class PaintEntity extends Equatable {
  final String image;
  final String name;
  final int price;
  final List<DescriptionEntity> benefits;

  const PaintEntity({
    required this.image,
    required this.name,
    required this.price,
    required this.benefits,
  });

  PaintEntity copyWith({
    String? image,
    String? name,
    int? price,
    List<DescriptionEntity>? benefits,
  }) {
    return PaintEntity(
      image: image ?? this.image,
      name: name ?? this.name,
      price: price ?? this.price,
      benefits: benefits ?? this.benefits,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'image': image,
      'name': name,
      'price': price,
      'benefits': benefits.map((x) => x.toMap()).toList(),
    };
  }

  factory PaintEntity.fromMap(Map<String, dynamic> map) {
    return PaintEntity(
      image: map['image'] ?? '',
      name: map['name'] ?? '',
      price: map['price']?.toInt() ?? 0,
      benefits:
          List<DescriptionEntity>.from(map['benefits']?.map((x) => DescriptionEntity.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory PaintEntity.fromJson(String source) => PaintEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PaintEntity(image: $image, name: $name, price: $price, benefits: $benefits)';
  }

  @override
  List<Object> get props => [image, name, price, benefits];
}
