import 'package:flutter_bloc/flutter_bloc.dart';

import 'show_password_event.dart';
import 'show_password_state.dart';

class ShowPasswordBloc extends Bloc<ShowPasswordEvent, ShowPasswordState> {
  ShowPasswordBloc() : super(const ShowPasswordState.showPassword(showPassword: true)) {
    on<HandleShowPassword>(
      (event, emit) {
        emit(_mapHandleShowPassword(event.showPassword));
      },
    );
  }

  ShowPasswordState _mapHandleShowPassword(bool showPassword) =>
      ShowPasswordState.showPassword(showPassword: !showPassword);
}
