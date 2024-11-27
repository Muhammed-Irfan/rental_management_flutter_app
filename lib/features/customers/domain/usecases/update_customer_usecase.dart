import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:rentease/core/error/exceptions.dart';
import 'package:rentease/core/events/customer_updated.dart';
import 'package:rentease/core/types/result.dart';
import 'package:rentease/core/usecases/usecase.dart';
import 'package:rentease/core/utils/event_bus.dart';
import 'package:rentease/features/customers/domain/entities/customer_entity.dart';
import 'package:rentease/features/customers/domain/repositories/customer_repository.dart';

@injectable
class UpdateCustomerUseCase extends UseCase<void, CustomerEntity> {
  final CustomerRepository _repository;
  final EventBus _eventBus;

  UpdateCustomerUseCase(this._repository, this._eventBus);

  @override
  Future<Result<void>> call(CustomerEntity customer) async {
    try {
      await _repository.updateCustomer(customer);
      _eventBus.fire(const CustomerUpdated());
      return const Right(null);
    } on Exception catch (e) {
      return Left(AppException.fromException(e));
    }
  }
}
