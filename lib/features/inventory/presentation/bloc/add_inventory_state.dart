part of 'add_inventory_bloc.dart';

@freezed
class AddInventoryState with _$AddInventoryState {
  const factory AddInventoryState({
    required InventoryItemEntity item,
  }) = _AddInventoryState;
}
