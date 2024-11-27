import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rentease/core/bloc/base_bloc.dart';
import 'package:rentease/core/bloc/base_bloc_state.dart';
import 'package:rentease/core/events/customer_updated.dart';
import 'package:rentease/core/usecases/usecase.dart';
import 'package:rentease/core/utils/event_bus.dart';
import 'package:rentease/features/customers/domain/entities/customer_entity.dart';
import 'package:rentease/features/customers/domain/usecases/get_all_customers_usecase.dart';

part 'customers_bloc.freezed.dart';
part 'customers_event.dart';
part 'customers_state.dart';

@injectable
class CustomersBloc extends BaseBloc<CustomersEvent, CustomersState> {
  final GetAllCustomersUseCase _getAllCustomersUseCase;
  final EventBus _eventBus;
  late final StreamSubscription<CustomerUpdated> _customerSubscription;

  CustomersBloc(this._getAllCustomersUseCase, this._eventBus) : super() {
    _customerSubscription = _eventBus.on<CustomerUpdated>((event) {
      add(const CustomersEvent.loadCustomers());
    });
  }

  @override
  Future<void> handleEvent(
    CustomersEvent event,
    Emitter<BaseState<CustomersState>> emit,
  ) async {
    await event.map(
      loadCustomers: (e) => _loadCustomers(emit),
    );
  }

  @override
  Future<void> close() {
    _customerSubscription.cancel();
    return super.close();
  }

  Future<void> _loadCustomers(Emitter<BaseState<CustomersState>> emit) async {
    emitLoading(emit);
    final result = await _getAllCustomersUseCase(const NoParams());
    result.fold(
      (error) => emitError(emit, error.message),
      (customers) => emitLoaded(
        emit,
        CustomersState(customers: customers),
      ),
    );
  }
}
