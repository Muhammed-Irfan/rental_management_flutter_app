import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:rentease/core/error/exceptions.dart';
import 'package:rentease/core/events/rentals_updated.dart';
import 'package:rentease/core/types/result.dart';
import 'package:rentease/core/usecases/usecase.dart';
import 'package:rentease/core/utils/event_bus.dart';
import 'package:rentease/features/rentals/domain/entities/rental_entity.dart';
import 'package:rentease/features/rentals/domain/repositories/rental_repository.dart';

@injectable
class AddRentalUseCase extends UseCase<void, RentalEntity> {
  final RentalRepository _repository;
  final EventBus _eventBus;

  AddRentalUseCase(this._repository, this._eventBus);

  @override
  Future<Result<void>> call(RentalEntity rental) async {
    try {
      await _repository.addRental(rental);
      _eventBus.fire(const RentalsUpdated());
      return const Right(null);
    } on Exception catch (e) {
      return Left(AppException.fromException(e));
    }
  }
}
