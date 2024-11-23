import 'package:injectable/injectable.dart';
import 'package:rental_tracker/features/dashboard/data/datasources/dashboard_data_source.dart';
import 'package:rental_tracker/features/dashboard/domain/repositories/dashboard_repository.dart';

@Injectable(as: DashboardRepository)
class DashboardRepositoryImpl implements DashboardRepository {
  final DashboardDataSource remoteDataSource;

  DashboardRepositoryImpl(this.remoteDataSource);
}
