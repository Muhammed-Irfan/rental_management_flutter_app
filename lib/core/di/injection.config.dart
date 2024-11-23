// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../features/dashboard/data/datasources/dashboard_data_source.dart'
    as _i446;
import '../../features/dashboard/data/repositories/dashboard_repository_impl.dart'
    as _i509;
import '../../features/dashboard/domain/repositories/dashboard_repository.dart'
    as _i665;
import '../../features/dashboard/domain/usecases/get_overview.dart' as _i310;
import '../../features/dashboard/presentation/bloc/dashboard_bloc.dart'
    as _i652;
import '../services/logging/logging_service.dart' as _i1022;
import '../services/storage/storage_service.dart' as _i968;
import '../services/storage/storage_service_provider.dart' as _i576;
import '../utils/event_bus.dart' as _i409;
import 'modules/storage_module.dart' as _i148;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i174.GetIt> init(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final storageModule = _$StorageModule();
  await gh.factoryAsync<_i460.SharedPreferences>(
    () => storageModule.prefs,
    preResolve: true,
  );
  gh.singleton<_i1022.LoggingService>(() => _i1022.LoggingService());
  gh.lazySingleton<_i409.EventBus>(() => _i409.EventBus());
  gh.factory<_i446.DashboardDataSource>(() => _i446.DashboardDataSourceImpl());
  gh.factory<_i576.StorageServiceProvider>(
      () => _i576.StorageServiceProvider(gh<_i460.SharedPreferences>()));
  gh.factory<_i968.StorageService>(
      () => _i968.StorageService(gh<_i576.StorageServiceProvider>()));
  gh.factory<_i665.DashboardRepository>(
      () => _i509.DashboardRepositoryImpl(gh<_i446.DashboardDataSource>()));
  gh.factory<_i310.GetOverview>(
      () => _i310.GetOverview(gh<_i665.DashboardRepository>()));
  gh.factory<_i652.DashboardBloc>(
      () => _i652.DashboardBloc(gh<_i310.GetOverview>()));
  return getIt;
}

class _$StorageModule extends _i148.StorageModule {}
