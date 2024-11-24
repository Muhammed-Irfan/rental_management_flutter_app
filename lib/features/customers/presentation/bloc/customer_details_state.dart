part of 'customer_details_bloc.dart';

@freezed
class CustomerDetailsState with _$CustomerDetailsState {
  const factory CustomerDetailsState({
    required CustomerEntity customer,
    required List<RentalEntity> rentals,
    required double totalPendingAmount,
    required double totalCollectedAmount,
  }) = _CustomerDetailsState;
}
