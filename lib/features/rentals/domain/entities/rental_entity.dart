import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rentease/features/customers/domain/entities/customer_entity.dart';
import 'package:rentease/features/inventory/domain/entities/inventory_item_entity.dart';

part 'rental_entity.freezed.dart';

@freezed
class RentalEntity with _$RentalEntity {
  const factory RentalEntity({
    required int id,
    required CustomerEntity customer,
    required List<InventoryItemEntity> items,
    required DateTime rentedAt,
    @Default(0.0) double advanceAmount,
    DateTime? returnedAt,
    @Default(0.0) double totalAmount,
    @Default(RentalStatus.active) RentalStatus status,
  }) = _RentalEntity;

  factory RentalEntity.empty() => RentalEntity(
        id: 0,
        customer: CustomerEntity.empty(),
        items: [],
        rentedAt: DateTime.now(),
      );
}

enum RentalStatus {
  active,
  paid,
}
