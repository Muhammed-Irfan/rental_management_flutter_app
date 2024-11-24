part of 'add_inventory_bloc.dart';

@freezed
class AddInventoryEvent with _$AddInventoryEvent {
  const factory AddInventoryEvent.updateName(String name) = _UpdateName;
  const factory AddInventoryEvent.updateDescription(String description) =
      _UpdateDescription;
  const factory AddInventoryEvent.updateQuantity(int quantity) = _UpdateQuantity;
  const factory AddInventoryEvent.updateAvailable(int available) = _UpdateAvailable;
  const factory AddInventoryEvent.updateRent(double rent) = _UpdateRent;
  const factory AddInventoryEvent.createItem() = _CreateItem;
}
