import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rentease/core/bloc/base_bloc.dart';
import 'package:rentease/core/bloc/base_bloc_state.dart';
import 'package:rentease/core/events/rentals_updated.dart';
import 'package:rentease/core/usecases/usecase.dart';
import 'package:rentease/core/utils/event_bus.dart';
import 'package:rentease/features/rentals/domain/entities/rental_entity.dart';
import 'package:rentease/features/rentals/domain/usecases/get_all_rentals_usecase.dart';

part 'rentals_bloc.freezed.dart';
part 'rentals_event.dart';
part 'rentals_state.dart';

@injectable
class RentalsBloc extends BaseBloc<RentalsEvent, RentalsState> {
  final GetAllRentalsUseCase _getAllRentalsUseCase;
  final EventBus _eventBus;
  late final StreamSubscription<RentalsUpdated> _rentalSubscription;

  RentalsBloc(this._getAllRentalsUseCase, this._eventBus) : super() {
    _rentalSubscription = _eventBus.on<RentalsUpdated>((event) {
      add(const RentalsEvent.loadRentals());
    });
  }

  @override
  Future<void> close() {
    _rentalSubscription.cancel();
    return super.close();
  }

  @override
  Future<void> handleEvent(
    RentalsEvent event,
    Emitter<BaseState<RentalsState>> emit,
  ) async {
    await event.map(
      loadRentals: (e) => _loadRentals(emit),
      filterByStatus: (e) => _filterByStatus(e.status, emit),
    );
  }

  Future<void> _loadRentals(Emitter<BaseState<RentalsState>> emit) async {
    emitLoading(emit);
    final result = await _getAllRentalsUseCase(const NoParams());
    result.fold(
      (error) => emitError(emit, error.message),
      (rentals) => emitLoaded(emit, RentalsState(rentals: rentals)),
    );
  }

  Future<void> _filterByStatus(
    RentalStatus status,
    Emitter<BaseState<RentalsState>> emit,
  ) async {
    emitLoading(emit);
    final result = await _getAllRentalsUseCase(const NoParams());
    result.fold(
      (error) => emitError(emit, error.message),
      (rentals) {
        final filteredRentals =
            status == RentalStatus.all ? rentals : rentals.where((rental) => rental.status == status).toList();
        emitLoaded(emit, RentalsState(rentals: filteredRentals));
      },
    );
  }
}
