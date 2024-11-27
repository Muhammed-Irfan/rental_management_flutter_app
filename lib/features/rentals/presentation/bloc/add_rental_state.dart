part of 'add_rental_bloc.dart';

@freezed
class AddRentalState with _$AddRentalState {
  const factory AddRentalState({
    required RentalEntity selectedRental,
    @Default([]) List<CustomerEntity> customers,
    @Default([]) List<InventoryItemEntity> items,
  }) = _AddRentalState;
}
