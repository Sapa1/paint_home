import 'dart:convert';

import 'package:equatable/equatable.dart';

import '../../domain/entities/paint_entity.dart';

class PaintResponse extends Equatable {
  final List<PaintEntity> listPaintEntity;

  const PaintResponse({
    required this.listPaintEntity,
  });

  PaintResponse copyWith({
    List<PaintEntity>? listPaintEntity,
  }) {
    return PaintResponse(
      listPaintEntity: listPaintEntity ?? this.listPaintEntity,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'listPaintEntity': listPaintEntity.map((x) => x.toMap()).toList(),
    };
  }

  factory PaintResponse.fromMap(Map<dynamic, dynamic> map) {
    return PaintResponse(
      listPaintEntity: List<PaintEntity>.from(map['data']?.map((x) => PaintEntity.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory PaintResponse.fromJson(String source) => PaintResponse.fromMap(json.decode(source));

  @override
  String toString() => 'PaintResponse(listPaintEntity: $listPaintEntity)';

  @override
  List<Object> get props => [listPaintEntity];
}
