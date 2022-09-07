import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../../domain/entities/paint_entity.dart';

@immutable
abstract class CartEvent extends Equatable {
  @override
  List<Object> get props => [];
}

@override
class PostItemEvent extends CartEvent {
  final PaintEntity paintEntity;

  PostItemEvent({required this.paintEntity});

  @override
  List<Object> get props => [paintEntity];
}

@override
class GetItemEvent extends CartEvent {
  GetItemEvent();

  @override
  List<Object> get props => [];
}
