import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:rentease/core/error/exceptions.dart';
import 'package:rentease/core/types/result.dart';
import 'package:rentease/core/usecases/usecase.dart';
import 'package:rentease/features/rentals/domain/entities/rental_entity.dart';
import 'package:rentease/features/rentals/domain/repositories/rental_repository.dart';

@injectable
class GetAllRentalsUseCase extends UseCase<List<RentalEntity>, NoParams> {
  final RentalRepository _repository;

  GetAllRentalsUseCase(this._repository);

  @override
  Future<Result<List<RentalEntity>>> call(NoParams params) async {
    try {
      final rentals = await _repository.getAllRentals();
      return Right(rentals);
    } on Exception catch (e) {
      return Left(AppException.fromException(e));
    }
  }
}
