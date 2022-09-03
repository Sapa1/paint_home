import 'dart:convert';

import 'package:equatable/equatable.dart';

class LoginResponse extends Equatable {
  final String token;

  const LoginResponse({
    required this.token,
  });

  LoginResponse copyWith({
    String? token,
  }) {
    return LoginResponse(
      token: token ?? this.token,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'token': token,
    };
  }

  factory LoginResponse.fromMap(Map<String, dynamic> map) {
    return LoginResponse(
      token: map['token'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginResponse.fromJson(String source) => LoginResponse.fromMap(json.decode(source));

  @override
  String toString() => 'LoginResponse(token: $token)';

  @override
  List<Object> get props => [token];
}
