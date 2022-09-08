import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecases/get_profile_usecase.dart';
import 'profile_event.dart';
import 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetProfileUseCase getProfileUseCase;

  ProfileBloc(
    this.getProfileUseCase,
  ) : super(const ProfileState.initial()) {
    on<GetProfileEvent>(
      (event, emit) => emit.forEach<ProfileState>(
        _mapGetUser(),
        onData: (data) => data,
      ),
    );
  }

  Stream<ProfileState> _mapGetUser() async* {
    // yield const ProfileState.loading();
    final response = await getProfileUseCase();

    yield response.fold(
      (failure) => ProfileState.failure(failure.message),
      (result) => ProfileState.success(userEntity: result),
    );
  }
}
