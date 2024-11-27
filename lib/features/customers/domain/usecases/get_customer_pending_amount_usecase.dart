import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:rentease/core/error/exceptions.dart';
import 'package:rentease/core/types/result.dart';
import 'package:rentease/core/usecases/usecase.dart';
import 'package:rentease/features/rentals/domain/repositories/rental_repository.dart';

@injectable
class GetCustomerPendingAmountUseCase implements UseCase<double, String> {
  final RentalRepository _repository;

  GetCustomerPendingAmountUseCase(this._repository);

  @override
  Future<Result<double>> call(String customerId) async {
    try {
      final amount = await _repository.getCustomerPendingAmount(customerId);
      return Right(amount);
    } catch (e) {
      return Left(AppException.fromException(e));
    }
  }
}
