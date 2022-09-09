import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecases/get_paint_usecase.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetPaintUseCase getPaintUseCase;

  HomeBloc(
    this.getPaintUseCase,
  ) : super(const HomeState.initial()) {
    on<DoGetPaintEvent>(
      (event, emit) => emit.forEach<HomeState>(
        _mapGetPaint(),
        onData: (data) => data,
      ),
    );

    on<ResetHomeStateEvent>(
      (event, emit) => emit(const HomeState.initial()),
    );
  }

  Stream<HomeState> _mapGetPaint() async* {
    final response = await getPaintUseCase();

    yield response.fold(
      (failure) => HomeState.failure(failure.message),
      (result) => HomeState.success(paintResponse: result),
    );
  }

  int changePage(int page) {
    return page;
  }
}
