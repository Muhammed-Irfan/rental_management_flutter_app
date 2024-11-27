import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:rentease/core/error/exceptions.dart';
import 'package:rentease/core/types/result.dart';
import 'package:rentease/core/usecases/usecase.dart';
import 'package:rentease/features/inventory/domain/entities/inventory_item_entity.dart';
import 'package:rentease/features/inventory/domain/repositories/inventory_repository.dart';
import 'package:rentease/features/rentals/domain/entities/rental_entity.dart';
import 'package:rentease/features/rentals/domain/repositories/rental_repository.dart';

@injectable
class GetInventoryWithAvailabilityUseCase implements UseCase<List<InventoryItemEntity>, NoParams> {
  final InventoryRepository _inventoryRepository;
  final RentalRepository _rentalRepository;

  const GetInventoryWithAvailabilityUseCase(
    this._inventoryRepository,
    this._rentalRepository,
  );

  @override
  Future<Result<List<InventoryItemEntity>>> call(NoParams params) async {
    try {
      // Fetch data in parallel
      final itemsFuture = _inventoryRepository.getAllItems();
      final rentalsFuture = _rentalRepository.getAllRentals();

      final results = await Future.wait([itemsFuture, rentalsFuture]);
      final items = results[0] as List<InventoryItemEntity>;
      final rentals = results[1] as List<RentalEntity>;

      // Calculate rented quantities
      final rentedQuantities = _calculateRentedQuantities(rentals);

      // Update availability for all items
      final availableItems = _updateItemsAvailability(items, rentedQuantities);

      return Right(availableItems);
    } catch (e) {
      return Left(AppException.fromException(e));
    }
  }

  Map<String, int> _calculateRentedQuantities(List<RentalEntity> rentals) {
    return rentals.fold<Map<String, int>>({}, (quantities, rental) {
      if (rental.status == RentalStatus.active) {
        for (final item in rental.items) {
          quantities[item.id] = (quantities[item.id] ?? 0) + item.quantity;
        }
      }
      return quantities;
    });
  }

  List<InventoryItemEntity> _updateItemsAvailability(
    List<InventoryItemEntity> items,
    Map<String, int> rentedQuantities,
  ) {
    return items
        .map(
          (item) => item.copyWith(
            available: item.quantity - (rentedQuantities[item.id] ?? 0),
          ),
        )
        .toList();
  }
}
