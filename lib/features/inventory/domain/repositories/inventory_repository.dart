import 'package:rentease/features/inventory/domain/entities/inventory_item_entity.dart';

abstract class InventoryRepository {
  Future<List<InventoryItemEntity>> getAllItems();
  Future<InventoryItemEntity?> getItemById(String id);
  Future<void> addItem(InventoryItemEntity item);
  Future<void> updateItem(InventoryItemEntity item);
}