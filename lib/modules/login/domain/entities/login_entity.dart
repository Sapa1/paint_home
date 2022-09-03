import 'dart:convert';

import 'package:equatable/equatable.dart';

class LoginEntity extends Equatable {
  final String email;
  final String password;

  const LoginEntity({
    required this.email,
    required this.password,
  });

  LoginEntity copyWith({
    String? email,
    String? password,
  }) {
    return LoginEntity(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
    };
  }

  factory LoginEntity.fromMap(Map<String, dynamic> map) {
    return LoginEntity(
      email: map['email'] ?? '',
      password: map['password'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginEntity.fromJson(String source) => LoginEntity.fromMap(json.decode(source));

  @override
  String toString() => 'LoginEntity(email: $email, password: $password)';

  @override
  List<Object> get props => [email, password];
}
