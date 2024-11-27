import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:rentease/core/error/exceptions.dart';
import 'package:rentease/core/types/result.dart';
import 'package:rentease/core/usecases/usecase.dart';
import 'package:rentease/features/rentals/domain/entities/rental_entity.dart';
import 'package:rentease/features/rentals/domain/repositories/rental_repository.dart';

@injectable
class GetRentalByIdUseCase extends UseCase<RentalEntity?, String> {
  final RentalRepository _repository;

  GetRentalByIdUseCase(this._repository);

  @override
  Future<Result<RentalEntity?>> call(String id) async {
    try {
      final rental = await _repository.getRentalById(id);
      return Right(rental);
    } on Exception catch (e) {
      return Left(AppException.fromException(e));
    }
  }
}
