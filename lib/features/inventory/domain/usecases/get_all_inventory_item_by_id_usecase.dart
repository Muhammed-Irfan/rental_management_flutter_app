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
class GetInventoryItemByIdUseCase extends UseCase<InventoryItemEntity?, String> {
  final InventoryRepository _repository;
  final RentalRepository _rentalRepository;

  GetInventoryItemByIdUseCase(this._repository, this._rentalRepository);

  @override
  Future<Result<InventoryItemEntity>> call(String id) async {
    try {
      // Fetch data in parallel
      final itemFuture = _repository.getItemById(id);
      final rentalsFuture = _rentalRepository.getAllRentals();

      final results = await Future.wait([itemFuture, rentalsFuture]);
      final item = results[0] as InventoryItemEntity?;
      final rentals = results[1]! as List<RentalEntity>;

      if (item == null) throw Exception('Item not found');

      // Calculate rented quantity for this item
      final rentedQuantity = _calculateRentedQuantities(rentals, item.id);

      // Update item availability
      final updatedItem = item.copyWith(
        available: item.quantity - rentedQuantity,
      );

      return Right(updatedItem);
    } on Exception catch (e) {
      return Left(AppException.fromException(e));
    }
  }

  int _calculateRentedQuantities(List<RentalEntity> rentals, String itemId) {
    return rentals.fold<int>(0, (quantities, rental) {
      if (rental.status == RentalStatus.active) {
        for (final item in rental.items) {
          if (item.id == itemId) {
            quantities = quantities + item.quantity;
          }
        }
      }
      return quantities;
    });
  }
}
