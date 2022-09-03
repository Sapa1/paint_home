import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paint_home/modules/login/domain/entities/login_entity.dart';

import '../../domain/usecases/do_login_usecase.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final DoLoginUseCase doLoginUseCase;

  LoginBloc(
    this.doLoginUseCase,
  ) : super(const LoginState.initial()) {
    on<DoLoginEvent>(
      (event, emit) => emit.forEach<LoginState>(
        _doLogin(event.loginEntity),
        onData: (data) => data,
      ),
    );

    on<ResetStateEvent>(
      (event, emit) => emit(const LoginState.initial()),
    );
  }

  Stream<LoginState> _doLogin(LoginEntity loginEntity) async* {
    yield const LoginState.loading();
    final loginResponse = await doLoginUseCase(loginEntity);

    yield loginResponse.fold(
      (failure) => LoginState.failure(failure.message),
      (result) => const LoginState.success(),
    );
  }
}
