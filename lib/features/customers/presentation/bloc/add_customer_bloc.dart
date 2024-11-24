import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rentease/core/bloc/base_bloc.dart';
import 'package:rentease/core/bloc/base_bloc_state.dart';
import 'package:rentease/features/customers/domain/entities/customer_entity.dart';

part 'add_customer_bloc.freezed.dart';
part 'add_customer_event.dart';
part 'add_customer_state.dart';

@injectable
class AddCustomerBloc extends BaseBloc<AddCustomerEvent, AddCustomerState> {
  AddCustomerBloc() : super();

  @override
  Future<void> handleEvent(
    AddCustomerEvent event,
    Emitter<BaseState<AddCustomerState>> emit,
  ) async {
    state.maybeWhen(
      loaded: (data) async {
        await event.map(
          updateName: (e) async {
            emitLoaded(
              emit,
              data.copyWith(
                customer: data.customer.copyWith(name: e.name),
              ),
            );
          },
          updatePhone: (e) async {
            emitLoaded(
              emit,
              data.copyWith(
                customer: data.customer.copyWith(phoneNumber: e.phone),
              ),
            );
          },
          updateAddress: (e) async {
            emitLoaded(
              emit,
              data.copyWith(
                customer: data.customer.copyWith(address: e.address),
              ),
            );
          },
          createCustomer: (_) async {
            if (data.customer.name.isEmpty) {
              return;
            }

            emitLoading(emit);

            try {
              final customer = CustomerEntity(
                id: DateTime.now().millisecondsSinceEpoch,
                name: data.customer.name,
                phoneNumber: data.customer.phoneNumber ?? '',
                address: data.customer.address ?? '',
              );

              // TODO: Save customer

              emitLoaded(
                emit,
                data.copyWith(
                  customer: customer,
                ),
              );
            } catch (e) {
              emitError(emit, e.toString());
            }
          },
        );
      },
      orElse: () {
        emitLoaded(emit, AddCustomerState(customer: CustomerEntity.empty()));
        handleEvent(event, emit);
      },
    );
  }
}
