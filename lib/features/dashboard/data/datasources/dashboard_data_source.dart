import 'package:injectable/injectable.dart';
import 'package:rentease/core/constants/storage_constants.dart';
import 'package:rentease/core/datasources/base_local_datasource.dart';
import 'package:rentease/core/services/storage/database_service.dart';
import 'package:rentease/features/dashboard/domain/entities/dashboard_overview_entity.dart';
import 'package:rentease/features/rentals/data/models/rental_hive_model.dart';
import 'package:rentease/features/rentals/domain/entities/rental_entity.dart';

abstract class DashboardDataSource {
  Future<DashboardOverviewEntity> getOverview();
}

@Injectable(as: DashboardDataSource)
class DashboardDataSourceImpl extends BaseLocalDataSource<RentalHiveModel> implements DashboardDataSource {
  DashboardDataSourceImpl(DatabaseService databaseService) : super(databaseService, StorageConstants.rentalBoxName);

  @override
  Future<DashboardOverviewEntity> getOverview() async {
    final box = await getBox();
    final rentals = box.values.toList();

    final activeRentals = rentals.where((rental) => rental.status == RentalStatus.active).map((e) => e.toEntity());
    final paidRentals = rentals.where((rental) => rental.status == RentalStatus.paid).map((e) => e.toEntity());
    final partialRentals =
        rentals.where((rental) => rental.status == RentalStatus.partiallyPaid).map((e) => e.toEntity());

    return DashboardOverviewEntity(
      activeRentalsCount: activeRentals.length,
      pendingRentalAmount: _calculatePendingAmount(List.from([...activeRentals, ...partialRentals])),
      totalAmountCollected: _calculateTotalAmount(paidRentals) + _calculateTotalPartialAmount(partialRentals),
    );
  }

  double _calculatePendingAmount(Iterable<RentalEntity> rentals) {
    return rentals.fold(
      0,
      (total, rental) => total + rental.calculatePendingAmount(),
    );
  }

  double _calculateTotalAmount(Iterable<RentalEntity> rentals) {
    return rentals.fold(
      0,
      (total, rental) => total + rental.calculateTotalAmount(),
    );
  }

  double _calculateTotalPartialAmount(Iterable<RentalEntity> rentals) {
    return rentals.fold(
      0,
      (total, rental) => total + rental.partialPaymentAmount,
    );
  }
}
