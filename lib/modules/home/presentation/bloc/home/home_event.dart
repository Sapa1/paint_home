import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class HomeEvent extends Equatable {
  @override
  List<Object> get props => [];
}

@override
class DoGetPaintEvent extends HomeEvent {
  DoGetPaintEvent();

  @override
  List<Object> get props => [];
}

class ResetHomeStateEvent extends HomeEvent {
  ResetHomeStateEvent();

  @override
  List<Object> get props => [];
}
