import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:paint_home/modules/login/domain/entities/login_entity.dart';

@immutable
abstract class LoginEvent extends Equatable {
  @override
  List<Object> get props => [];
}

@override
class DoLoginEvent extends LoginEvent {
  final LoginEntity loginEntity;

  DoLoginEvent({required this.loginEntity});

  @override
  List<Object> get props => [loginEntity];
}

class ResetStateEvent extends LoginEvent {
  ResetStateEvent();

  @override
  List<Object> get props => [];
}
