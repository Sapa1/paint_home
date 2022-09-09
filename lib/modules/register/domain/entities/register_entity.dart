import 'dart:convert';

import 'package:equatable/equatable.dart';

class RegisterEntity extends Equatable {
  final String email;
  final String password;
  final String name;

  const RegisterEntity({
    required this.email,
    required this.password,
    required this.name,
  });

  RegisterEntity copyWith({
    String? email,
    String? password,
    String? name,
  }) {
    return RegisterEntity(
      email: email ?? this.email,
      password: password ?? this.password,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
      'name': name,
    };
  }

  factory RegisterEntity.fromMap(Map<String, dynamic> map) {
    return RegisterEntity(
      email: map['email'] ?? '',
      password: map['password'] ?? '',
      name: map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory RegisterEntity.fromJson(String source) => RegisterEntity.fromMap(json.decode(source));

  @override
  String toString() => 'RegisterEntity(email: $email, password: $password, name: $name)';

  @override
  List<Object> get props => [email, password, name];
}
