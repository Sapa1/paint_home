import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;
  const Failure({required this.message});
  @override
  List<Object> get props => [];
}

class ServerFailure extends Failure {
  const ServerFailure({required String message}) : super(message: message);
  @override
  List<Object> get props => [];
}

class ConnectionFailure extends Failure {
  const ConnectionFailure({required String message}) : super(message: message);
  @override
  List<Object> get props => [];
}

class LocalAuthenticationFailure extends Failure {
  const LocalAuthenticationFailure({required String message}) : super(message: message);
  @override
  List<Object> get props => [];
}

class LocalSecureStorageFailure extends Failure {
  const LocalSecureStorageFailure({required String message}) : super(message: message);
  @override
  List<Object> get props => [];
}

class LocalStorageFailure extends Failure {
  const LocalStorageFailure({required String message}) : super(message: message);
  @override
  List<Object> get props => [];
}
