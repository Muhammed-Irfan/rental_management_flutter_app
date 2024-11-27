import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rentease/core/bloc/base_bloc.dart';
import 'package:rentease/core/bloc/base_bloc_state.dart';
import 'package:rentease/core/models/navigation_result.dart';
import 'package:rentease/features/customers/domain/entities/customer_entity.dart';
import 'package:rentease/features/customers/domain/usecases/add_customer_usecase.dart';
import 'package:rentease/features/customers/domain/usecases/get_customer_by_id_usecase.dart';
import 'package:rentease/features/customers/domain/usecases/update_customer_usecase.dart';

part 'add_customer_bloc.freezed.dart';
part 'add_customer_event.dart';
part 'add_customer_state.dart';

@injectable
class AddCustomerBloc extends BaseBloc<AddCustomerEvent, AddCustomerState> {
  final AddCustomerUseCase _addCustomerUseCase;
  final UpdateCustomerUseCase _updateCustomerUseCase;
  final GetCustomerByIdUseCase _getCustomerDetailsUseCase;

  AddCustomerBloc(this._addCustomerUseCase, this._updateCustomerUseCase, this._getCustomerDetailsUseCase) : super();

  @override
  Future<void> handleEvent(
    AddCustomerEvent event,
    Emitter<BaseState<AddCustomerState>> emit,
  ) async {
    await state.maybeWhen(
      loaded: (data) async {
        await event.map(
          setCustomer: (e) => _setCustomer(emit, e),
          updateFields: (e) => _updateFields(emit, data, e),
          createCustomer: (e) => _createCustomer(emit, data),
          updateCustomer: (e) => _saveCustomer(emit, data),
        );
      },
      orElse: () async {
        emitLoaded(emit, AddCustomerState(customer: CustomerEntity.empty()));
        await handleEvent(event, emit);
      },
    );
  }

  Future<void> _saveCustomer(
    Emitter<BaseState<AddCustomerState>> emit,
    AddCustomerState data,
  ) async {
    emitLoading(emit);
    final result = await _updateCustomerUseCase(data.customer);
    result.fold(
      (error) => emitError(emit, error.message),
      (_) {
        emitNavigation(
          emit,
          NavigationResult.back(
            message: 'Customer updated successfully',
          ),
        );
      },
    );
  }

  Future<void> _createCustomer(
    Emitter<BaseState<AddCustomerState>> emit,
    AddCustomerState data,
  ) async {
    emitLoading(emit);
    final customer = CustomerEntity(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      name: data.customer.name,
      phoneNumber: data.customer.phoneNumber ?? '',
      address: data.customer.address ?? '',
    );

    final result = await _addCustomerUseCase(customer);
    result.fold(
      (error) => emitError(emit, error.message),
      (_) {
        emitNavigation(
          emit,
          NavigationResult.back(
            message: 'Customer created successfully',
          ),
        );
      },
    );
  }

  Future<void> _setCustomer(Emitter<BaseState<AddCustomerState>> emit, _SetCustomer e) async {
    emitLoading(emit);
    final result = await _getCustomerDetailsUseCase(e.id);
    result.fold(
      (error) => emitError(emit, error.message),
      (customer) {
        if (customer != null) {
          emitLoaded(
            emit,
            AddCustomerState(customer: customer),
          );
        } else {
          emitError(emit, 'Customer not found');
        }
      },
    );
  }

  Future<void> _updateFields(
    Emitter<BaseState<AddCustomerState>> emit,
    AddCustomerState data,
    _UpdateFields event,
  ) async {
    final updatedCustomer = data.customer.copyWith(
      name: event.name,
      phoneNumber: event.phone,
      address: event.address,
    );
    emitLoaded(emit, data.copyWith(customer: updatedCustomer));
  }
}
