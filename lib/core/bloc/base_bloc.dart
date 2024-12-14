import 'dart:collection';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentease/core/bloc/base_bloc_state.dart';
import 'package:rentease/core/models/navigation_result.dart';

abstract class BaseBloc<Event, T> extends Bloc<Event, BaseState<T>> {
  final _eventQueue = Queue<Event>();
  bool _isProcessing = false;

  BaseBloc() : super(const BaseState.initial()) {
    on<Event>((event, emit) async {
      _eventQueue.add(event);
      if (!_isProcessing) {
        await _processQueue(emit);
      }
    });
  }

  Future<void> _processQueue(Emitter<BaseState<T>> emit) async {
    _isProcessing = true;
    
    while (_eventQueue.isNotEmpty) {
      final event = _eventQueue.removeFirst();
      await handleEvent(event, emit);
    }

    _isProcessing = false;
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

  void emitNavigation(Emitter<BaseState<T>> emit, NavigationResult navigation) {
    emit(BaseState.navigate(navigation));
  }
}
