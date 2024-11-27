import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:rentease/core/error/exceptions.dart';
import 'package:rentease/core/types/result.dart';
import 'package:rentease/core/usecases/usecase.dart';
import 'package:rentease/features/dashboard/domain/entities/dashboard_overview_entity.dart';
import 'package:rentease/features/dashboard/domain/repositories/dashboard_repository.dart';

@injectable
class GetOverviewUseCase implements UseCase<DashboardOverviewEntity, NoParams> {
  final DashboardRepository _repository;

  GetOverviewUseCase(this._repository);

  @override
  Future<Result<DashboardOverviewEntity>> call(NoParams params) async {
    try {
      final overview = await _repository.getOverview();
      return Right(overview);
    } catch (e) {
      return Left(AppException.fromException(e));
    }
  }
}
