import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:rentease/core/error/exceptions.dart';
import 'package:rentease/core/types/result.dart';
import 'package:rentease/core/usecases/usecase.dart';
import 'package:rentease/features/rentals/domain/entities/rental_entity.dart';
import 'package:rentease/features/rentals/domain/repositories/rental_repository.dart';

@injectable
class GetCustomerRentalsUseCase implements UseCase<List<RentalEntity>, String> {
  final RentalRepository _repository;

  GetCustomerRentalsUseCase(this._repository);

  @override
  Future<Result<List<RentalEntity>>> call(String customerId) async {
    try {
      final rentals = await _repository.getCustomerRentals(customerId);
      return Right(rentals);
    } catch (e) {
      return Left(AppException.fromException(e));
    }
  }
}
