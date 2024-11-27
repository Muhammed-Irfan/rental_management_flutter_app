import 'package:injectable/injectable.dart';
import 'package:rentease/core/constants/storage_constants.dart';
import 'package:rentease/core/datasources/base_local_datasource.dart';
import 'package:rentease/core/services/storage/database_service.dart';
import 'package:rentease/features/rentals/data/models/rental_hive_model.dart';
import 'package:rentease/features/rentals/domain/entities/rental_entity.dart';

abstract class RentalLocalDataSource {
  Future<List<RentalHiveModel>> getAllRentals();
  Future<RentalHiveModel?> getRentalById(String id);
  Future<void> addRental(RentalHiveModel rental);
  Future<void> updateRental(RentalHiveModel rental);
  Future<List<RentalHiveModel>> getCustomerRentals(String customerId);
  Future<List<RentalHiveModel>> getCustomerActiveRentals(String customerId);
  Future<List<RentalHiveModel>> getCustomerPartialRentals(String customerId);
  Future<List<RentalHiveModel>> getCustomerPaidRentals(String customerId);
}

@Injectable(as: RentalLocalDataSource)
class RentalLocalDataSourceImpl extends BaseLocalDataSource<RentalHiveModel> implements RentalLocalDataSource {
  RentalLocalDataSourceImpl(DatabaseService databaseService) : super(databaseService, StorageConstants.rentalBoxName);

  @override
  Future<List<RentalHiveModel>> getAllRentals() async {
    final box = await getBox();
    return box.values.toList();
  }

  @override
  Future<RentalHiveModel?> getRentalById(String id) async {
    final box = await getBox();
    return box.get(id);
  }

  @override
  Future<void> addRental(RentalHiveModel rental) async {
    final box = await getBox();
    await box.put(rental.id, rental);
  }

  @override
  Future<void> updateRental(RentalHiveModel rental) async {
    final box = await getBox();
    await box.put(rental.id, rental);
  }

  @override
  Future<List<RentalHiveModel>> getCustomerRentals(String customerId) async {
    final box = await getBox();
    return box.values.where((rental) => rental.customer.id == customerId).toList();
  }

  @override
  Future<List<RentalHiveModel>> getCustomerActiveRentals(String customerId) async {
    final box = await getBox();
    return box.values
        .where(
          (rental) => rental.customer.id == customerId && rental.status == RentalStatus.active,
        )
        .toList();
  }

  @override
  Future<List<RentalHiveModel>> getCustomerPartialRentals(String customerId) async {
    final box = await getBox();
    return box.values
        .where(
          (rental) => rental.customer.id == customerId && rental.status == RentalStatus.partiallyPaid,
        )
        .toList();
  }

  @override
  Future<List<RentalHiveModel>> getCustomerPaidRentals(String customerId) async {
    final box = await getBox();
    return box.values
        .where(
          (rental) => rental.customer.id == customerId && rental.status == RentalStatus.paid,
        )
        .toList();
  }
}
