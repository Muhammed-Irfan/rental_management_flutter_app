import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rentease/core/bloc/base_bloc.dart';
import 'package:rentease/core/bloc/base_bloc_state.dart';
import 'package:rentease/core/models/navigation_result.dart';
import 'package:rentease/core/usecases/usecase.dart';
import 'package:rentease/features/customers/domain/entities/customer_entity.dart';
import 'package:rentease/features/customers/domain/usecases/add_customer_usecase.dart';
import 'package:rentease/features/customers/domain/usecases/get_all_customers_usecase.dart';
import 'package:rentease/features/inventory/domain/entities/inventory_item_entity.dart';
import 'package:rentease/features/inventory/domain/usecases/get_all_inventory_items_usecase.dart';
import 'package:rentease/features/rentals/domain/entities/rental_entity.dart';
import 'package:rentease/features/rentals/domain/usecases/add_rental_usecase.dart';
import 'package:rentease/features/rentals/domain/usecases/get_rental_by_id_usecase.dart';
import 'package:rentease/features/rentals/domain/usecases/update_rental_usecase.dart';

part 'add_rental_bloc.freezed.dart';
part 'add_rental_event.dart';
part 'add_rental_state.dart';

@injectable
class AddRentalBloc extends BaseBloc<AddRentalEvent, AddRentalState> {
  final AddRentalUseCase _addRentalUseCase;
  final UpdateRentalUseCase _updateRentalUseCase;
  final GetRentalByIdUseCase _getRentalByIdUseCase;
  final GetAllCustomersUseCase _getAllCustomersUseCase;
  final GetInventoryWithAvailabilityUseCase _getAllInventoryItemsUseCase;
  final AddCustomerUseCase _addCustomerUseCase;

  AddRentalBloc(
    this._addRentalUseCase,
    this._updateRentalUseCase,
    this._getRentalByIdUseCase,
    this._getAllCustomersUseCase,
    this._getAllInventoryItemsUseCase,
    this._addCustomerUseCase,
  ) : super();

  @override
  Future<void> handleEvent(
    AddRentalEvent event,
    Emitter<BaseState<AddRentalState>> emit,
  ) async {
    await state.maybeWhen(
      loaded: (data) async {
        await event.map(
          selectCustomer: (e) => _selectCustomer(emit, data, e),
          addItem: (e) => _addItem(emit, data, e),
          removeItem: (e) => _removeItem(emit, data, e),
          updateItem: (e) => _updateItem(emit, data, e),
          updateAdvanceAmount: (e) => _updateAdvanceAmount(emit, data, e),
          createRental: (e) => _createRental(emit, data),
          updateRental: (e) => _updateRental(emit, data, e),
          calculateRental: (e) => _handleCalculateRental(e, emit, data),
          setRental: (e) => _setRental(emit, data, e),
          initializeCustomers: (_) => _initializeCustomers(emit, data),
          initializeItems: (_) => _initializeItems(emit, data),
          markRentalAsPaid: (e) => _markRentalAsPaid(emit, data, e),
          removeCustomer: (e) => _removeCustomer(emit, data),
          updateRentedAt: (e) => _updateRentedAt(emit, data, e),
          recordPartialPayment: (e) => _recordPartialPayment(emit, data, e),
        );
      },
      orElse: () async {
        emitLoaded(
          emit,
          AddRentalState(
            selectedRental: RentalEntity.empty(),
            customers: const [],
            items: const [],
          ),
        );
        await handleEvent(event, emit);
      },
    );
  }

  Future<void> _removeCustomer(Emitter<BaseState<AddRentalState>> emit, AddRentalState data) async {
    emitLoaded(
      emit,
      data.copyWith(
        selectedRental: data.selectedRental.copyWith(
          customer: CustomerEntity.empty(),
        ),
      ),
    );
  }

  Future<void> _setRental(
    Emitter<BaseState<AddRentalState>> emit,
    AddRentalState data,
    _SetRental event,
  ) async {
    emitLoading(emit);

    final rentalResult = await _getRentalByIdUseCase(event.id);

    rentalResult.fold(
      (failure) => emitError(emit, failure.message),
      (rental) {
        emitLoaded(
          emit,
          data.copyWith(
            selectedRental: rental ?? RentalEntity.empty(),
          ),
        );
        add(const AddRentalEvent.initializeCustomers());
        add(const AddRentalEvent.initializeItems());
      },
    );
  }

  Future<void> _selectCustomer(
    Emitter<BaseState<AddRentalState>> emit,
    AddRentalState data,
    _SelectCustomer event,
  ) async {
    // Check if this is a create customer option
    if (event.customer.id.isEmpty && event.customer.name.trim().isNotEmpty) {
      // Create new customer with the original query text
      final newCustomer = CustomerEntity(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        name: event.customer.name,
      );

      final result = await _addCustomerUseCase.call(newCustomer);
      result.fold(
        (failure) => emitError(emit, failure.message),
        (_) => emitLoaded(
          emit,
          data.copyWith(
            selectedRental: data.selectedRental.copyWith(
              customer: newCustomer,
            ),
          ),
        ),
      );
    } else {
      // Normal customer selection
      emitLoaded(
        emit,
        data.copyWith(
          selectedRental: data.selectedRental.copyWith(customer: event.customer),
        ),
      );
    }
  }

  Future<void> _addItem(
    Emitter<BaseState<AddRentalState>> emit,
    AddRentalState data,
    _AddItem event,
  ) async {
    final items = [...data.selectedRental.items, event.item];
    emitLoaded(
      emit,
      data.copyWith(
        selectedRental: data.selectedRental.copyWith(items: items),
      ),
    );
  }

  Future<void> _removeItem(
    Emitter<BaseState<AddRentalState>> emit,
    AddRentalState data,
    _RemoveItem event,
  ) async {
    final items = [...data.selectedRental.items]..removeAt(event.index);
    emitLoaded(
      emit,
      data.copyWith(
        selectedRental: data.selectedRental.copyWith(items: items),
      ),
    );
  }

  Future<void> _updateItem(
    Emitter<BaseState<AddRentalState>> emit,
    AddRentalState data,
    _UpdateItem event,
  ) async {
    final items = [...data.selectedRental.items];
    items[event.index] = event.item;
    emitLoaded(
      emit,
      data.copyWith(
        selectedRental: data.selectedRental.copyWith(items: items),
      ),
    );
  }

  Future<void> _updateAdvanceAmount(
    Emitter<BaseState<AddRentalState>> emit,
    AddRentalState data,
    _UpdateAdvanceAmount event,
  ) async {
    emitLoaded(
      emit,
      data.copyWith(
        selectedRental: data.selectedRental.copyWith(advanceAmount: event.amount),
      ),
    );
  }

  Future<void> _createRental(
    Emitter<BaseState<AddRentalState>> emit,
    AddRentalState data,
  ) async {
    emitLoading(emit);

    try {
      final result = await _addRentalUseCase(
        data.selectedRental.copyWith(id: DateTime.now().millisecondsSinceEpoch.toString()),
      );
      result.fold(
        (error) => emitError(emit, error.message),
        (rental) {
          emitNavigation(
            emit,
            NavigationResult.back(
              message: 'Rental created successfully',
            ),
          );
        },
      );
    } catch (e) {
      emitError(emit, e.toString());
    }
  }

  Future<void> _updateRental(
    Emitter<BaseState<AddRentalState>> emit,
    AddRentalState data,
    _UpdateRental event,
  ) async {
    emitLoading(emit);
    final result = await _updateRentalUseCase(event.rental);
    result.fold(
      (error) => emitError(emit, error.message),
      (_) => emitNavigation(
        emit,
        NavigationResult.back(
          message: 'Rental updated successfully',
        ),
      ),
    );
  }

  Future<void> _handleCalculateRental(
    _CalculateRental event,
    Emitter<BaseState<AddRentalState>> emit,
    AddRentalState data,
  ) async {
    emitLoading(emit);

    if (data.selectedRental.items.isEmpty) {
      return;
    }
    final totalRent = data.selectedRental.calculateTotalAmount();

    final updatedRental = data.selectedRental.copyWith(
      totalAmount: totalRent,
    );

    emitLoaded(
      emit,
      data.copyWith(
        selectedRental: updatedRental,
      ),
    );
  }

  Future<void> _initializeCustomers(
    Emitter<BaseState<AddRentalState>> emit,
    AddRentalState data,
  ) async {
    final result = await _getAllCustomersUseCase(const NoParams());

    result.fold(
      (failure) => emitError(emit, failure.message),
      (customers) => emitLoaded(
        emit,
        data.copyWith(
          customers: customers,
        ),
      ),
    );
  }

  Future<void> _initializeItems(
    Emitter<BaseState<AddRentalState>> emit,
    AddRentalState data,
  ) async {
    final result = await _getAllInventoryItemsUseCase(const NoParams());

    result.fold(
      (failure) => emitError(emit, failure.message),
      (items) => emitLoaded(
        emit,
        data.copyWith(items: items),
      ),
    );
  }

  Future<void> _markRentalAsPaid(
    Emitter<BaseState<AddRentalState>> emit,
    AddRentalState data,
    _MarkRentalAsPaid event,
  ) async {
    final totalAmount = data.selectedRental.calculateTotalAmount();
    final updatedRental = data.selectedRental.copyWith(
      status: RentalStatus.paid,
      totalAmount: totalAmount,
    );
    final result = await _updateRentalUseCase(updatedRental);

    result.fold(
      (failure) => emitError(emit, failure.message),
      (_) => emitLoaded(
        emit,
        data.copyWith(selectedRental: updatedRental),
      ),
    );
  }

  Future<void> _updateRentedAt(
    Emitter<BaseState<AddRentalState>> emit,
    AddRentalState data,
    _UpdateRentedAt event,
  ) async {
    emitLoaded(
      emit,
      data.copyWith(
        selectedRental: data.selectedRental.copyWith(rentedAt: event.date),
      ),
    );
  }

  Future<void> _recordPartialPayment(
    Emitter<BaseState<AddRentalState>> emit,
    AddRentalState data,
    _RecordPartialPayment event,
  ) async {
    emitLoading(emit);
    final totalAmount = data.selectedRental.calculateTotalAmount();
    final updatedRental = data.selectedRental.copyWith(
      totalAmount: totalAmount,
      status: RentalStatus.partiallyPaid,
      partialPaymentAmount: data.selectedRental.partialPaymentAmount + event.amount,
    );

    final result = await _updateRentalUseCase(updatedRental);

    result.fold(
      (failure) => emitError(emit, failure.message),
      (_) => emitLoaded(
        emit,
        data.copyWith(selectedRental: updatedRental),
      ),
    );
  }
}
