import 'package:injectable/injectable.dart';

abstract class DashboardDataSource {}

@Injectable(as: DashboardDataSource)
class DashboardDataSourceImpl implements DashboardDataSource {}
