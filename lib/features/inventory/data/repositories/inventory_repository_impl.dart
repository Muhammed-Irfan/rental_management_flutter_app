import 'package:injectable/injectable.dart';
import 'package:rentease/features/inventory/data/datasources/inventory_local_datasource.dart';
import 'package:rentease/features/inventory/data/models/inventory_item_hive_model.dart';
import 'package:rentease/features/inventory/domain/entities/inventory_item_entity.dart';
import 'package:rentease/features/inventory/domain/repositories/inventory_repository.dart';

@Injectable(as: InventoryRepository)
class InventoryRepositoryImpl implements InventoryRepository {
  final InventoryLocalDataSource _localDataSource;

  InventoryRepositoryImpl(this._localDataSource);

  @override
  Future<List<InventoryItemEntity>> getAllItems() async {
    final models = await _localDataSource.getAllItems();
    return models.map((model) => model.toEntity()).toList();
  }

  @override
  Future<InventoryItemEntity?> getItemById(String id) async {
    final model = await _localDataSource.getItemById(id);
    return model?.toEntity();
  }

  @override
  Future<void> addItem(InventoryItemEntity item) async {
    final model = InventoryItemHiveModel.fromEntity(item);
    await _localDataSource.addItem(model);
  }

  @override
  Future<void> updateItem(InventoryItemEntity item) async {
    final model = InventoryItemHiveModel.fromEntity(item);
    await _localDataSource.updateItem(model);
  }
}
