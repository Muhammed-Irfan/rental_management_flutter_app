import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:rentease/core/error/exceptions.dart';
import 'package:rentease/core/types/result.dart';
import 'package:rentease/core/usecases/usecase.dart';
import 'package:rentease/features/customers/domain/entities/customer_entity.dart';
import 'package:rentease/features/customers/domain/repositories/customer_repository.dart';

@injectable
class GetAllCustomersUseCase extends UseCase<List<CustomerEntity>, NoParams> {
  final CustomerRepository _repository;

  GetAllCustomersUseCase(this._repository);

  @override
  Future<Result<List<CustomerEntity>>> call(NoParams params) async {
    try {
      final customers = await _repository.getAllCustomers();
      return Right(customers);
    } on Exception catch (e) {
      return Left(AppException.fromException(e));
    }
  }
}
