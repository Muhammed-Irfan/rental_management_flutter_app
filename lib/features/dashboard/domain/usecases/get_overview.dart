import 'package:injectable/injectable.dart';
import 'package:rental_tracker/core/types/result.dart';
import 'package:rental_tracker/core/usecases/usecase.dart';
import 'package:rental_tracker/features/dashboard/domain/entities/dashboard_overview_entity.dart';
import 'package:rental_tracker/features/dashboard/domain/repositories/dashboard_repository.dart';

@injectable
class GetOverview extends UseCase<DashboardOverviewEntity, NoParams> {
  final DashboardRepository repository;
  GetOverview(this.repository);

  @override
  Future<Result<DashboardOverviewEntity>> call(NoParams params) {
    throw UnimplementedError();
  }
}
