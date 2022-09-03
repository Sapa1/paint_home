import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class ShowPasswordEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class HandleShowPassword extends ShowPasswordEvent {
  final bool showPassword;
  HandleShowPassword({required this.showPassword});

  @override
  List<Object> get props => [showPassword];
}
