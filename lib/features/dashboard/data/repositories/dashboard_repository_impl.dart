import 'package:injectable/injectable.dart';
import 'package:rentease/features/dashboard/data/datasources/dashboard_data_source.dart';
import 'package:rentease/features/dashboard/domain/entities/dashboard_overview_entity.dart';
import 'package:rentease/features/dashboard/domain/repositories/dashboard_repository.dart';

@Injectable(as: DashboardRepository)
class DashboardRepositoryImpl implements DashboardRepository {
  final DashboardDataSource _dataSource;

  DashboardRepositoryImpl(this._dataSource);

  @override
  Future<DashboardOverviewEntity> getOverview() async {
    return _dataSource.getOverview();
  }
}
