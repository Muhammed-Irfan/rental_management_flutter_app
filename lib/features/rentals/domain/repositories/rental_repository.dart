import 'package:rentease/features/rentals/domain/entities/rental_entity.dart';

abstract class RentalRepository {
  Future<List<RentalEntity>> getAllRentals();
  Future<RentalEntity?> getRentalById(String id);
  Future<void> addRental(RentalEntity rental);
  Future<void> updateRental(RentalEntity rental);
  Future<List<RentalEntity>> getCustomerRentals(String customerId);
  Future<double> getCustomerPendingAmount(String customerId);
  Future<double> getCustomerCollectedAmount(String customerId);
}
