import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../data/model/cart_response.dart';
import '../entities/paint_entity.dart';
import '../repositories/cart_repository.dart';

class PostItemCartUseCase implements UseCase<CartResponse, PaintEntity> {
  final CartRepository cartRepository;

  PostItemCartUseCase(this.cartRepository);

  @override
  Future<Either<Failure, CartResponse>> call(PaintEntity paintEntity) async =>
      cartRepository.postItem(paintEntity);
}
