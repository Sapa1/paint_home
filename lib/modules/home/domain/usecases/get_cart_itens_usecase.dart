import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../data/model/cart_response.dart';
import '../repositories/cart_repository.dart';

class GetCartItensUseCase implements UseCase<CartResponse, NoParams> {
  final CartRepository cartRepository;

  GetCartItensUseCase(this.cartRepository);

  @override
  Future<Either<Failure, CartResponse>> call([void params]) async => cartRepository.getCartItens();
}
