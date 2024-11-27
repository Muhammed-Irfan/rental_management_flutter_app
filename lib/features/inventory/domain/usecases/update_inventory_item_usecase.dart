import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:rentease/core/error/exceptions.dart';
import 'package:rentease/core/events/inventory_updated.dart';
import 'package:rentease/core/types/result.dart';
import 'package:rentease/core/usecases/usecase.dart';
import 'package:rentease/core/utils/event_bus.dart';
import 'package:rentease/features/inventory/domain/entities/inventory_item_entity.dart';
import 'package:rentease/features/inventory/domain/repositories/inventory_repository.dart';

@injectable
class UpdateInventoryItemUseCase extends UseCase<void, InventoryItemEntity> {
  final InventoryRepository _repository;
  final EventBus _eventBus;

  UpdateInventoryItemUseCase(this._repository, this._eventBus);

  @override
  Future<Result<void>> call(InventoryItemEntity item) async {
    try {
      await _repository.updateItem(item);
      _eventBus.fire(const InventoryUpdated());
      return const Right(null);
    } on Exception catch (e) {
      return Left(AppException.fromException(e));
    }
  }
}
