import 'package:hive_ce/hive.dart';
import 'package:rentease/features/inventory/domain/entities/inventory_item_entity.dart';

part 'inventory_item_hive_model.g.dart';

@HiveType(typeId: 1)
class InventoryItemHiveModel extends HiveObject {
  @HiveField(0)
  late String id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final double rent;

  @HiveField(3)
  final int quantity;

  @HiveField(4)
  final int available;

  @HiveField(5)
  final String? description;

  InventoryItemHiveModel({
    required this.id,
    required this.name,
    required this.rent,
    required this.quantity,
    required this.available,
    this.description,
  });

  factory InventoryItemHiveModel.fromEntity(InventoryItemEntity entity) {
    return InventoryItemHiveModel(
      id: entity.id,
      name: entity.name,
      rent: entity.rent,
      quantity: entity.quantity,
      available: entity.available,
      description: entity.description,
    );
  }

  InventoryItemEntity toEntity() {
    return InventoryItemEntity(
      id: id,
      name: name,
      rent: rent,
      quantity: quantity,
      available: available,
      description: description,
    );
  }
}