import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../data/model/paint_response.dart';

abstract class HomeRepository {
  Future<Either<Failure, PaintResponse>> getPaint();
}
