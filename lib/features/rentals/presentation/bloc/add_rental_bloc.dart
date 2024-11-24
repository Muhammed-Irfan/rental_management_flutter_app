import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rentease/core/bloc/base_bloc.dart';
import 'package:rentease/core/bloc/base_bloc_state.dart';
import 'package:rentease/features/customers/domain/entities/customer_entity.dart';
import 'package:rentease/features/inventory/domain/entities/inventory_item_entity.dart';
import 'package:rentease/features/rentals/domain/entities/rental_entity.dart';

part 'add_rental_bloc.freezed.dart';
part 'add_rental_event.dart';
part 'add_rental_state.dart';

@injectable
class AddRentalBloc extends BaseBloc<AddRentalEvent, AddRentalState> {
  AddRentalBloc() : super();

  @override
  Future<void> handleEvent(
    AddRentalEvent event,
    Emitter<BaseState<AddRentalState>> emit,
  ) async {
    state.maybeWhen(
      loaded: (data) async {
        await event.map(
          selectCustomer: (e) async {
            emitLoaded(
              emit,
              data.copyWith(
                selectedRental: data.selectedRental.copyWith(customer: e.customer),
              ),
            );
          },
          addItem: (e) async {
            final items = [...data.selectedRental.items, e.item];
            emitLoaded(
              emit,
              data.copyWith(
                selectedRental: data.selectedRental.copyWith(items: items),
              ),
            );
          },
          removeItem: (e) async {
            final items = [...data.selectedRental.items]..removeAt(e.index);
            emitLoaded(
              emit,
              data.copyWith(
                selectedRental: data.selectedRental.copyWith(items: items),
              ),
            );
          },
          updateItem: (e) async {
            final items = [...data.selectedRental.items];
            items[e.index] = e.item;
            emitLoaded(
              emit,
              data.copyWith(
                selectedRental: data.selectedRental.copyWith(items: items),
              ),
            );
          },
          updateAdvanceAmount: (e) async {
            emitLoaded(
              emit,
              data.copyWith(
                selectedRental: data.selectedRental.copyWith(advanceAmount: e.amount),
              ),
            );
          },
          createRental: (_) async {
            if (data.selectedRental.customer.id == '0' || data.selectedRental.items.isEmpty) {
              return;
            }

            emitLoading(emit);

            try {
              final rental = RentalEntity(
                id: DateTime.now().millisecondsSinceEpoch,
                customer: data.selectedRental.customer,
                items: data.selectedRental.items,
                rentedAt: DateTime.now(),
                advanceAmount: data.selectedRental.advanceAmount,
              );

              // TODO: Save rental

              emitLoaded(
                emit,
                data.copyWith(
                  selectedRental: rental,
                ),
              );
            } catch (e) {
              emitError(emit, e.toString());
            }
          },
          calculateRental: (e) async => _handleCalculateRental(e, emit, data),
        );
      },
      orElse: () {
        emitLoaded(emit, AddRentalState(selectedRental: RentalEntity.empty()));
        handleEvent(event, emit);
      },
    );
  }

  Future<void> _handleCalculateRental(
    _CalculateRental event,
    Emitter<BaseState<AddRentalState>> emit,
    AddRentalState currentState,
  ) async {
    if (currentState.selectedRental.items.isEmpty) {
      return;
    }

    final totalRent = currentState.selectedRental.items.fold<double>(
      0,
      (total, item) => total + (item.rent * item.quantity),
    );

    emitLoaded(
      emit,
      currentState.copyWith(
        selectedRental: currentState.selectedRental.copyWith(
          totalAmount: totalRent,
        ),
      ),
    );
  }
}
