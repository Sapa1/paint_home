import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/cart_itens_entity.dart';
import '../repositories/cart_repository.dart';

class ClearCartUseCase implements UseCase<CartItensEntity, int> {
  final CartRepository cartRepository;

  ClearCartUseCase(this.cartRepository);

  @override
  Future<Either<Failure, CartItensEntity>> call(int id) async => cartRepository.clearCart(id);
}
