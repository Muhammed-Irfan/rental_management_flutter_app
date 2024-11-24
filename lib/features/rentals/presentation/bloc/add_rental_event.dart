part of 'add_rental_bloc.dart';

@freezed
class AddRentalEvent with _$AddRentalEvent {
  const factory AddRentalEvent.selectCustomer(CustomerEntity customer) =
      _SelectCustomer;
  const factory AddRentalEvent.addItem(InventoryItemEntity item) = _AddItem;
  const factory AddRentalEvent.removeItem(int index) = _RemoveItem;
  const factory AddRentalEvent.updateItem(int index, InventoryItemEntity item) = _UpdateItem;
  const factory AddRentalEvent.updateAdvanceAmount(double amount) =
      _UpdateAdvanceAmount;
  const factory AddRentalEvent.createRental() = _CreateRental;
  const factory AddRentalEvent.calculateRental() = _CalculateRental;
}
