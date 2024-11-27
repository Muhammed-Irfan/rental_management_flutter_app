import 'package:freezed_annotation/freezed_annotation.dart';

part 'inventory_item_entity.freezed.dart';

@freezed
class InventoryItemEntity with _$InventoryItemEntity {
  const factory InventoryItemEntity({
    required String id,
    required String name,
    required double rent,
    required int quantity,
    required int available,
    String? description,
  }) = _InventoryItemEntity;

  factory InventoryItemEntity.empty() => const InventoryItemEntity(
        id: '',
        name: '',
        rent: 0.0,
        quantity: 0,
        available: 0,
      );
}
