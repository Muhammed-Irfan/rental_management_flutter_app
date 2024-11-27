part of 'add_rental_bloc.dart';

@freezed
class AddRentalEvent with _$AddRentalEvent {
  const factory AddRentalEvent.selectCustomer(CustomerEntity customer) = _SelectCustomer;
  const factory AddRentalEvent.removeCustomer() = _RemoveCustomer;
  const factory AddRentalEvent.addItem(InventoryItemEntity item) = _AddItem;
  const factory AddRentalEvent.removeItem(int index) = _RemoveItem;
  const factory AddRentalEvent.updateItem(int index, InventoryItemEntity item) = _UpdateItem;
  const factory AddRentalEvent.updateAdvanceAmount(double amount) = _UpdateAdvanceAmount;
  const factory AddRentalEvent.createRental() = _CreateRental;
  const factory AddRentalEvent.updateRental(RentalEntity rental) = _UpdateRental;
  const factory AddRentalEvent.calculateRental() = _CalculateRental;
  const factory AddRentalEvent.setRental(String id) = _SetRental;
  const factory AddRentalEvent.initializeCustomers() = _InitializeCustomers;
  const factory AddRentalEvent.initializeItems() = _InitializeItems;
  const factory AddRentalEvent.markRentalAsPaid() = _MarkRentalAsPaid;
  const factory AddRentalEvent.updateRentedAt(DateTime date) = _UpdateRentedAt;
  const factory AddRentalEvent.recordPartialPayment(double amount) = _RecordPartialPayment;
}
