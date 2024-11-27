import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:rentease/core/error/exceptions.dart';
import 'package:rentease/core/types/result.dart';
import 'package:rentease/core/usecases/usecase.dart';
import 'package:rentease/features/customers/domain/entities/customer_entity.dart';
import 'package:rentease/features/customers/domain/repositories/customer_repository.dart';

@injectable
class GetCustomerByIdUseCase extends UseCase<CustomerEntity?, String> {
  final CustomerRepository _repository;

  GetCustomerByIdUseCase(this._repository);

  @override
  Future<Result<CustomerEntity?>> call(String id) async {
    try {
      final customer = await _repository.getCustomerById(id);
       return Right(customer);
    } on Exception catch (e) {
      return Left(AppException.fromException(e));
    }
  }
} 
