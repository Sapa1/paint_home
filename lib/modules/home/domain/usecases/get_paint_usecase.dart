import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../data/model/paint_response.dart';
import '../repositories/home_repository.dart';

class GetPaintUseCase implements UseCase<PaintResponse, NoParams> {
  final HomeRepository homeRepository;

  GetPaintUseCase(this.homeRepository);

  @override
  Future<Either<Failure, PaintResponse>> call([void params]) async => homeRepository.getPaint();
}
