import 'package:rentease/features/dashboard/domain/entities/dashboard_overview_entity.dart';

abstract class DashboardRepository {
  Future<DashboardOverviewEntity> getOverview();
}
