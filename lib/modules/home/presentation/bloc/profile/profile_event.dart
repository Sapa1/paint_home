import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class ProfileEvent extends Equatable {
  @override
  List<Object> get props => [];
}

@override
class GetProfileEvent extends ProfileEvent {
  GetProfileEvent();

  @override
  List<Object> get props => [];
}
