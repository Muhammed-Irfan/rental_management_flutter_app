part of 'add_inventory_bloc.dart';

@freezed
class AddInventoryEvent with _$AddInventoryEvent {
  const factory AddInventoryEvent.updateFields({
    required String name,
    required String description,
    required int quantity,
    required int available,
    required double rent,
  }) = _UpdateFields;
  const factory AddInventoryEvent.createItem() = _CreateItem;
  const factory AddInventoryEvent.updateItem() = _UpdateItem;
  const factory AddInventoryEvent.setItem(String itemId) = _SetItem;
}
