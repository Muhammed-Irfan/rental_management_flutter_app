import 'package:freezed_annotation/freezed_annotation.dart';

part 'inventory_item_entity.freezed.dart';

@freezed
class InventoryItemEntity with _$InventoryItemEntity {
  const factory InventoryItemEntity({
    required int id,
    required String name,
    required double rent,
    required int quantity,
    required int available,
    String? description,
  }) = _InventoryItemEntity;

  factory InventoryItemEntity.empty() => const InventoryItemEntity(
        id: 0,
        name: 'Sample Item',
        rent: 20.0,
        quantity: 10,
        available: 10,
      );
}
