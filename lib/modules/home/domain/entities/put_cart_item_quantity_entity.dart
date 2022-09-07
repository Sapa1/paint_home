import 'dart:convert';

import 'package:equatable/equatable.dart';

class PutCartEntity extends Equatable {
  final int quantity;

  const PutCartEntity({
    required this.quantity,
  });

  PutCartEntity copyWith({
    int? quantity,
  }) {
    return PutCartEntity(
      quantity: quantity ?? this.quantity,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'quantity': quantity,
    };
  }

  factory PutCartEntity.fromMap(Map<String, dynamic> map) {
    return PutCartEntity(
      quantity: map['quantity']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory PutCartEntity.fromJson(String source) => PutCartEntity.fromMap(json.decode(source));

  @override
  String toString() => 'PutCartEntity(quantity: $quantity)';

  @override
  List<Object> get props => [quantity];
}
