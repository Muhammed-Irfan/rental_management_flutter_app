import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rentease/core/bloc/base_bloc.dart';
import 'package:rentease/core/bloc/base_bloc_state.dart';
import 'package:rentease/features/customers/domain/entities/customer_entity.dart';
import 'package:rentease/features/rentals/domain/entities/rental_entity.dart';

part 'customer_details_bloc.freezed.dart';
part 'customer_details_event.dart';
part 'customer_details_state.dart';

@injectable
class CustomerDetailsBloc extends BaseBloc<CustomerDetailsEvent, CustomerDetailsState> {
  CustomerDetailsBloc() : super();

  @override
  Future<void> handleEvent(
    CustomerDetailsEvent event,
    Emitter<BaseState<CustomerDetailsState>> emit,
  ) async {
    await event.map(
      loadCustomerDetails: (e) async {
        emitLoading(emit);

        try {
          // TODO: Get customer details from repository
          final customer = CustomerEntity(
            id: e.customerId,
            name: 'John Doe',
            phoneNumber: '+1234567890',
            address: '123 Street, City',
          );

          // TODO: Get rentals from repository
          final rentals = <RentalEntity>[];

          double totalPendingAmount = 0;
          double totalCollectedAmount = 0;

          // for (final rental in rentals) {
          //   totalPendingAmount += rental.pendingAmount;
          //   totalCollectedAmount += rental.collectedAmount;
          // }

          emitLoaded(
            emit,
            CustomerDetailsState(
              customer: customer,
              rentals: rentals,
              totalPendingAmount: totalPendingAmount,
              totalCollectedAmount: totalCollectedAmount,
            ),
          );
        } catch (e) {
          emitError(emit, e.toString());
        }
      },
      refreshRentals: (_) async {
        state.maybeWhen(
          loaded: (data) async {
            try {
              // TODO: Get rentals from repository
              final rentals = <RentalEntity>[];

              // double totalPendingAmount = 0;
              // double totalCollectedAmount = 0;

              // for (final rental in rentals) {
              //   totalPendingAmount += rental.pendingAmount;
              //   totalCollectedAmount += rental.collectedAmount;
              // }

              emitLoaded(
                emit,
                data.copyWith(
                  rentals: rentals,
                  // totalPendingAmount: totalPendingAmount,
                  // totalCollectedAmount: totalCollectedAmount,
                ),
              );
            } catch (e) {
              emitError(emit, e.toString());
            }
          },
          orElse: () {},
        );
      },
    );
  }
}
