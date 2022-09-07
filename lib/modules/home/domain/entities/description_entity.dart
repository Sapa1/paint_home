import 'dart:convert';

import 'package:equatable/equatable.dart';

class DescriptionEntity extends Equatable {
  final String name;

  const DescriptionEntity({
    required this.name,
  });

  DescriptionEntity copyWith({
    String? name,
  }) {
    return DescriptionEntity(
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
    };
  }

  factory DescriptionEntity.fromMap(Map<String, dynamic> map) {
    return DescriptionEntity(
      name: map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory DescriptionEntity.fromJson(String source) =>
      DescriptionEntity.fromMap(json.decode(source));

  @override
  String toString() => 'DescriptionEntity(name: $name)';

  @override
  List<Object> get props => [name];
}
