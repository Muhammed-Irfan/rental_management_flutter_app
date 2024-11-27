import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rentease/core/bloc/base_bloc.dart';
import 'package:rentease/core/bloc/base_bloc_state.dart';
import 'package:rentease/core/events/rentals_updated.dart';
import 'package:rentease/core/utils/event_bus.dart';
import 'package:rentease/features/customers/domain/entities/customer_entity.dart';
import 'package:rentease/features/customers/domain/usecases/get_customer_by_id_usecase.dart';
import 'package:rentease/features/customers/domain/usecases/get_customer_collected_amount_usecase.dart';
import 'package:rentease/features/customers/domain/usecases/get_customer_pending_amount_usecase.dart';
import 'package:rentease/features/customers/domain/usecases/get_customer_rentals_usecase.dart';
import 'package:rentease/features/rentals/domain/entities/rental_entity.dart';

part 'customer_details_bloc.freezed.dart';
part 'customer_details_event.dart';
part 'customer_details_state.dart';

@injectable
class CustomerDetailsBloc
    extends BaseBloc<CustomerDetailsEvent, CustomerDetailsState> {
  final GetCustomerByIdUseCase _getCustomerByIdUseCase;
  final GetCustomerRentalsUseCase _getCustomerRentalsUseCase;
  final GetCustomerPendingAmountUseCase _getCustomerPendingAmountUseCase;
  final GetCustomerCollectedAmountUseCase _getCustomerCollectedAmountUseCase;
  final EventBus _eventBus;
  late final StreamSubscription<RentalsUpdated> _rentalSubscription;

  CustomerDetailsBloc(
    this._getCustomerByIdUseCase,
    this._getCustomerRentalsUseCase,
    this._getCustomerPendingAmountUseCase,
    this._getCustomerCollectedAmountUseCase,
    this._eventBus,
  ) : super();

  @override
  Future<void> handleEvent(
    CustomerDetailsEvent event,
    Emitter<BaseState<CustomerDetailsState>> emit,
  ) async {
    await event.map(
      loadCustomerDetails: (e) => _loadCustomerDetails(emit, e),
      filterByStatus: (e) => _filterByStatus(e.status, emit),
    );
  }

  void listenToRentalsUpdated(String customerId) {
    _rentalSubscription = _eventBus.on<RentalsUpdated>((event) {
      add(CustomerDetailsEvent.loadCustomerDetails(customerId));
    });
  }

  @override
  Future<void> close() {
    _rentalSubscription.cancel();
    return super.close();
  }

  Future<void> _loadCustomerDetails(
    Emitter<BaseState<CustomerDetailsState>> emit,
    _LoadCustomerDetails event,
  ) async {
    emitLoading(emit);

    final customerResult = await _getCustomerByIdUseCase(event.customerId);

    await customerResult.fold(
      (failure) async => emitError(emit, failure.message),
      (customer) async {
        if (customer == null) {
          emitError(emit, 'Customer not found');
          return;
        }

        // Get all data in parallel
        final results = await Future.wait([
          _getCustomerRentalsUseCase(event.customerId),
          _getCustomerPendingAmountUseCase(event.customerId),
          _getCustomerCollectedAmountUseCase(event.customerId),
        ]);

        final rentalsResult = results[0];
        final pendingAmountResult = results[1];
        final collectedAmountResult = results[2];

        // Check for any errors
        for (final result in [
          rentalsResult,
          pendingAmountResult,
          collectedAmountResult,
        ]) {
          if (result.isLeft()) {
            emitError(emit, result.fold((l) => l.message, (r) => ''));
            return;
          }
        }

        // Extract successful values
        final rentals = rentalsResult.fold(
            (l) => <RentalEntity>[], (r) => r as List<RentalEntity>,);
        final pendingAmount =
            pendingAmountResult.fold((l) => 0.0, (r) => (r as num).toDouble());
        final collectedAmount = collectedAmountResult.fold(
            (l) => 0.0, (r) => (r as num).toDouble());

        if (!emit.isDone) {
          emitLoaded(
            emit,
            CustomerDetailsState(
              customer: customer,
              rentals: rentals,
              totalPendingAmount: pendingAmount,
              totalCollectedAmount: collectedAmount,
            ),
          );
        }
      },
    );
  }

  Future<void> _filterByStatus(RentalStatus status,
      Emitter<BaseState<CustomerDetailsState>> emit) async {
    state.maybeWhen(
      loaded: (data) async {
        emitLoading(emit);
        final result = await _getCustomerRentalsUseCase(data.customer.id);
        result.fold(
          (error) => emitError(emit, error.message),
          (rentals) {
            final filteredRentals = status == RentalStatus.all
                ? rentals
                : rentals.where((rental) => rental.status == status).toList();
            emitLoaded(emit, data.copyWith(rentals: filteredRentals));
          },
        );
      },
      orElse: () {},
    );
  }
}
