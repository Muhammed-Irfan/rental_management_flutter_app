import 'package:hive_ce/hive.dart';
import 'package:rentease/features/customers/domain/entities/customer_entity.dart';

part 'customer_hive_model.g.dart';

@HiveType(typeId: 0)
class CustomerHiveModel extends HiveObject {
  @HiveField(0)
  late String id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String? phoneNumber;

  @HiveField(3)
  final String? address;

  CustomerHiveModel({
    required this.id,
    required this.name,
    this.phoneNumber,
    this.address,
  });

  factory CustomerHiveModel.fromEntity(CustomerEntity entity) {
    return CustomerHiveModel(
      id: entity.id,
      name: entity.name,
      phoneNumber: entity.phoneNumber,
      address: entity.address,
    );
  }

  CustomerEntity toEntity() {
    return CustomerEntity(
      id: id,
      name: name,
      phoneNumber: phoneNumber,
      address: address,
    );
  }
}
