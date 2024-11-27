import 'package:hive_ce/hive.dart';
import 'package:rentease/features/customers/data/models/customer_hive_model.dart';
import 'package:rentease/features/inventory/data/models/inventory_item_hive_model.dart';
import 'package:rentease/features/rentals/domain/entities/rental_entity.dart';

part 'rental_hive_model.g.dart';

@HiveType(typeId: 3)
class RentalHiveModel extends HiveObject {
  @HiveField(0)
  late String id;

  @HiveField(1)
  final CustomerHiveModel customer;

  @HiveField(2)
  final List<InventoryItemHiveModel> items;

  @HiveField(3)
  final DateTime rentedAt;

  @HiveField(4)
  final double advanceAmount;

  @HiveField(5)
  final DateTime? returnedAt;

  @HiveField(6)
  final double totalAmount;

  @HiveField(7)
  final RentalStatus status;

  @HiveField(8)
  final double partialPaymentAmount;

  RentalHiveModel({
    required this.id,
    required this.customer,
    required this.items,
    required this.rentedAt,
    this.advanceAmount = 0.0,
    this.returnedAt,
    this.totalAmount = 0.0,
    this.status = RentalStatus.active,
    this.partialPaymentAmount = 0.0,
  });

  factory RentalHiveModel.fromEntity(RentalEntity entity) {
    return RentalHiveModel(
      id: entity.id,
      customer: CustomerHiveModel.fromEntity(entity.customer),
      items: entity.items.map(InventoryItemHiveModel.fromEntity).toList(),
      rentedAt: entity.rentedAt,
      advanceAmount: entity.advanceAmount,
      returnedAt: entity.returnedAt,
      totalAmount: entity.totalAmount,
      status: entity.status,
      partialPaymentAmount: entity.partialPaymentAmount,
    );
  }

  RentalEntity toEntity() {
    return RentalEntity(
      id: id,
      customer: customer.toEntity(),
      items: items.map((e) => e.toEntity()).toList(),
      rentedAt: rentedAt,
      advanceAmount: advanceAmount,
      returnedAt: returnedAt,
      totalAmount: totalAmount,
      status: status,
      partialPaymentAmount: partialPaymentAmount,
    );
  }
}
