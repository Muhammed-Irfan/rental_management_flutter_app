import 'package:injectable/injectable.dart';
import 'package:rentease/features/dashboard/data/datasources/dashboard_data_source.dart';
import 'package:rentease/features/dashboard/domain/repositories/dashboard_repository.dart';

@Injectable(as: DashboardRepository)
class DashboardRepositoryImpl implements DashboardRepository {
  final DashboardDataSource remoteDataSource;

  DashboardRepositoryImpl(this.remoteDataSource);
}
