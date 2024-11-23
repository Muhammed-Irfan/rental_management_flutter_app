import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rental_tracker/core/bloc/base_bloc_state.dart';

abstract class BaseBloc<Event, T> extends Bloc<Event, BaseState<T>> {
  BaseBloc() : super(const BaseState.initial()) {
    on<Event>((event, emit) async {
      await handleEvent(event, emit);
    });
  }

  Future<void> handleEvent(Event event, Emitter<BaseState<T>> emit);

  void emitLoading(Emitter<BaseState<T>> emit) {
    emit(const BaseState.loading());
  }

  void emitLoaded(Emitter<BaseState<T>> emit, T data) {
    emit(BaseState.loaded(data));
  }

  void emitError(Emitter<BaseState<T>> emit, String message) {
    emit(BaseState.error(message));
  }
}
