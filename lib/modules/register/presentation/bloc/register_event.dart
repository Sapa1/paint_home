import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:paint_home/modules/register/domain/entities/register_entity.dart';

@immutable
abstract class RegisterEvent extends Equatable {
  @override
  List<Object> get props => [];
}

@override
class DoRegisterEvent extends RegisterEvent {
  final RegisterEntity registerEntity;

  DoRegisterEvent({required this.registerEntity});

  @override
  List<Object> get props => [registerEntity];
}
