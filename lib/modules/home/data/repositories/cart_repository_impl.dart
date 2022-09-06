import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:paint_home/modules/home/domain/repositories/cart_repository.dart';

import '../../../../core/connection_status/connections_status.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/helpers/handle_failures.dart';
import '../../domain/entities/paint_entity.dart';
import '../datasources/cart/cart_datasource.dart';
import '../model/cart_response.dart';

class CartRepositoryImpl extends CartRepository with HandleFailures {
  final CartDataSource _cartDataSource;
  final ConnectionStatus _connectionStatus;

  CartRepositoryImpl(
    this._cartDataSource,
    this._connectionStatus,
  );

  @override
  Future<Either<Failure, CartResponse>> postItem(PaintEntity paintEntity) async {
    try {
      final result = await _cartDataSource.postItem(paintEntity);
      return Right(result);
    } on DioError catch (e, s) {
      return Left(await handleFailure(_connectionStatus, e, s));
    } on Exception catch (e, s) {
      return Left(await handleFailure(_connectionStatus, e, s));
    }
  }

  @override
  Future<Either<Failure, CartResponse>> getCartItens() async {
    try {
      final result = await _cartDataSource.getCartItens();
      return Right(result);
    } on DioError catch (e, s) {
      return Left(await handleFailure(_connectionStatus, e, s));
    } on Exception catch (e, s) {
      return Left(await handleFailure(_connectionStatus, e, s));
    }
  }
}
