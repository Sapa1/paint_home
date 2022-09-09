import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paint_home/modules/register/domain/entities/register_entity.dart';
import 'package:paint_home/modules/register/presentation/bloc/register_event.dart';
import 'package:paint_home/modules/register/presentation/bloc/register_state.dart';

import '../../domain/usecases/do_register_usecase.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final DoRegisterUseCase doRegisterUseCase;

  RegisterBloc(
    this.doRegisterUseCase,
  ) : super(const RegisterState.initial()) {
    on<DoRegisterEvent>(
      (event, emit) => emit.forEach<RegisterState>(
        _doLogin(event.registerEntity),
        onData: (data) => data,
      ),
    );
  }

  Stream<RegisterState> _doLogin(RegisterEntity registerEntity) async* {
    yield const RegisterState.loading();
    final loginResponse = await doRegisterUseCase(registerEntity);

    yield loginResponse.fold(
      (failure) => RegisterState.failure(failure.message),
      (result) => const RegisterState.success(),
    );
  }
}
