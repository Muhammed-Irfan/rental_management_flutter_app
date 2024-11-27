import 'package:injectable/injectable.dart';
import 'package:rentease/features/rentals/data/datasources/rental_local_datasource.dart';
import 'package:rentease/features/rentals/data/models/rental_hive_model.dart';
import 'package:rentease/features/rentals/domain/entities/rental_entity.dart';
import 'package:rentease/features/rentals/domain/repositories/rental_repository.dart';

@Injectable(as: RentalRepository)
class RentalRepositoryImpl implements RentalRepository {
  final RentalLocalDataSource _localDataSource;

  RentalRepositoryImpl(this._localDataSource);

  @override
  Future<List<RentalEntity>> getAllRentals() async {
    final rentals = await _localDataSource.getAllRentals();
    return rentals.map((e) => e.toEntity()).toList();
  }

  @override
  Future<RentalEntity?> getRentalById(String id) async {
    final rental = await _localDataSource.getRentalById(id);
    return rental?.toEntity();
  }

  @override
  Future<void> addRental(RentalEntity rental) async {
    final model = RentalHiveModel.fromEntity(rental);
    await _localDataSource.addRental(model);
  }

  @override
  Future<void> updateRental(RentalEntity rental) async {
    final model = RentalHiveModel.fromEntity(rental);
    await _localDataSource.updateRental(model);
  }

  @override
  Future<List<RentalEntity>> getCustomerRentals(String customerId) async {
    final rentals = await _localDataSource.getCustomerRentals(customerId);
    return rentals.map((e) => e.toEntity()).toList();
  }

  @override
  Future<double> getCustomerPendingAmount(String customerId) async {
    final rentals = await _localDataSource.getCustomerActiveRentals(customerId);
    final partialRentals = await _localDataSource.getCustomerPartialRentals(customerId);
    return List.from([...rentals, ...partialRentals]).fold<double>(
      0.0,
      (total, rental) => total + (rental.toEntity().calculatePendingAmount()),
    );
  }

  @override
  Future<double> getCustomerCollectedAmount(String customerId) async {
    final rentals = await _localDataSource.getCustomerPaidRentals(customerId);
    final partialRentals = await _localDataSource.getCustomerPartialRentals(customerId);
    final paidTotal = rentals.fold<double>(
      0.0,
      (total, rental) => total + rental.totalAmount,
    );
    final partialTotal = partialRentals.fold<double>(
      0.0,
      (total, rental) => total + rental.partialPaymentAmount,
    );

    return paidTotal + partialTotal;
  }
}
