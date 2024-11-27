import 'package:injectable/injectable.dart';
import 'package:rentease/core/constants/storage_constants.dart';
import 'package:rentease/core/datasources/base_local_datasource.dart';
import 'package:rentease/core/services/storage/database_service.dart';
import 'package:rentease/features/inventory/data/models/inventory_item_hive_model.dart';

abstract class InventoryLocalDataSource {
  Future<List<InventoryItemHiveModel>> getAllItems();
  Future<InventoryItemHiveModel?> getItemById(String id);
  Future<void> addItem(InventoryItemHiveModel item);
  Future<void> updateItem(InventoryItemHiveModel item);
}

@Injectable(as: InventoryLocalDataSource)
class InventoryLocalDataSourceImpl
    extends BaseLocalDataSource<InventoryItemHiveModel>
    implements InventoryLocalDataSource {
  InventoryLocalDataSourceImpl(DatabaseService databaseService)
      : super(databaseService, StorageConstants.inventoryBoxName);

  @override
  Future<List<InventoryItemHiveModel>> getAllItems() async {
    final box = await getBox();
    return box.values.toList();
  }

  @override
  Future<InventoryItemHiveModel?> getItemById(String id) async {
    final box = await getBox();
    return box.get(id);
  }

  @override
  Future<void> addItem(InventoryItemHiveModel item) async {
    final box = await getBox();
    await box.put(item.id, item);
  }

  @override
  Future<void> updateItem(InventoryItemHiveModel item) async {
    final box = await getBox();
    await box.put(item.id, item);
  }
}
