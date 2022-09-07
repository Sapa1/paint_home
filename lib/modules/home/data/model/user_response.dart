import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:paint_home/modules/home/domain/entities/user_entity.dart';

class UserResponse extends Equatable {
  final UserEntity userEntity;

  const UserResponse({
    required this.userEntity,
  });

  UserResponse copyWith({
    UserEntity? userEntity,
  }) {
    return UserResponse(
      userEntity: userEntity ?? this.userEntity,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userEntity': userEntity.toMap(),
    };
  }

  factory UserResponse.fromMap(Map<String, dynamic> map) {
    return UserResponse(
      userEntity: UserEntity.fromMap(map['userEntity']),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserResponse.fromJson(String source) => UserResponse.fromMap(json.decode(source));

  @override
  String toString() => 'UserResponse(userEntity: $userEntity)';

  @override
  List<Object> get props => [userEntity];
}
