import 'dart:convert';

import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String email;
  final String name;
  final String image;

  const UserEntity({
    required this.email,
    required this.name,
    required this.image,
  });

  UserEntity copyWith({
    String? email,
    String? name,
    String? image,
  }) {
    return UserEntity(
      email: email ?? this.email,
      name: name ?? this.name,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'name': name,
      'image': image,
    };
  }

  factory UserEntity.fromMap(Map<String, dynamic> map) {
    return UserEntity(
      email: map['email'] ?? '',
      name: map['name'] ?? '',
      image: map['avatar'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserEntity.fromJson(String source) => UserEntity.fromMap(json.decode(source));

  @override
  String toString() => 'UserEntity(email: $email, name: $name, image: $image)';

  @override
  List<Object> get props => [email, name, image];
}
