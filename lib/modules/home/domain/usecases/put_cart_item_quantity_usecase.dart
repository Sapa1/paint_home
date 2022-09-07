import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/cart_itens_entity.dart';
import '../repositories/cart_repository.dart';

class PutItemCarQuantitytUseCase implements UseCase<String, CartItensEntity> {
  final CartRepository cartRepository;

  PutItemCarQuantitytUseCase(this.cartRepository);

  @override
  Future<Either<Failure, String>> call(CartItensEntity cartItensEntity) async =>
      cartRepository.putCartItemQuantity(cartItensEntity);
}
