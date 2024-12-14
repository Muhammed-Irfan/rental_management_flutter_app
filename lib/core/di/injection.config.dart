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

import '../../features/customers/data/datasources/customer_local_data_source.dart'
    as _i521;
import '../../features/customers/data/repositories/customer_repository_impl.dart'
    as _i877;
import '../../features/customers/domain/repositories/customer_repository.dart'
    as _i504;
import '../../features/customers/domain/usecases/add_customer_usecase.dart'
    as _i863;
import '../../features/customers/domain/usecases/get_all_customers_usecase.dart'
    as _i850;
import '../../features/customers/domain/usecases/get_customer_by_id_usecase.dart'
    as _i469;
import '../../features/customers/domain/usecases/get_customer_collected_amount_usecase.dart'
    as _i226;
import '../../features/customers/domain/usecases/get_customer_pending_amount_usecase.dart'
    as _i371;
import '../../features/customers/domain/usecases/get_customer_rentals_usecase.dart'
    as _i740;
import '../../features/customers/domain/usecases/update_customer_usecase.dart'
    as _i940;
import '../../features/customers/presentation/bloc/add_customer_bloc.dart'
    as _i117;
import '../../features/customers/presentation/bloc/customer_details_bloc.dart'
    as _i58;
import '../../features/customers/presentation/bloc/customers_bloc.dart' as _i19;
import '../../features/dashboard/data/datasources/dashboard_data_source.dart'
    as _i446;
import '../../features/dashboard/data/repositories/dashboard_repository_impl.dart'
    as _i509;
import '../../features/dashboard/domain/repositories/dashboard_repository.dart'
    as _i665;
import '../../features/dashboard/domain/usecases/get_overview_usecase.dart'
    as _i591;
import '../../features/dashboard/presentation/bloc/dashboard_bloc.dart'
    as _i652;
import '../../features/inventory/data/datasources/inventory_local_datasource.dart'
    as _i716;
import '../../features/inventory/data/repositories/inventory_repository_impl.dart'
    as _i572;
import '../../features/inventory/domain/repositories/inventory_repository.dart'
    as _i422;
import '../../features/inventory/domain/usecases/add_inventory_item_usecase.dart.dart'
    as _i213;
import '../../features/inventory/domain/usecases/get_all_inventory_item_by_id_usecase.dart'
    as _i398;
import '../../features/inventory/domain/usecases/get_all_inventory_items_usecase.dart'
    as _i866;
import '../../features/inventory/domain/usecases/update_inventory_item_usecase.dart'
    as _i866;
import '../../features/inventory/presentation/bloc/add_inventory_bloc.dart'
    as _i153;
import '../../features/inventory/presentation/bloc/inventory_bloc.dart'
    as _i690;
import '../../features/rentals/data/datasources/rental_local_datasource.dart'
    as _i189;
import '../../features/rentals/data/repositories/rental_repository_impl.dart'
    as _i1063;
import '../../features/rentals/domain/repositories/rental_repository.dart'
    as _i545;
import '../../features/rentals/domain/usecases/add_rental_usecase.dart'
    as _i512;
import '../../features/rentals/domain/usecases/get_all_rentals_usecase.dart'
    as _i425;
import '../../features/rentals/domain/usecases/get_rental_by_id_usecase.dart'
    as _i75;
import '../../features/rentals/domain/usecases/update_rental_usecase.dart'
    as _i230;
import '../../features/rentals/presentation/bloc/add_rental_bloc.dart'
    as _i1004;
import '../../features/rentals/presentation/bloc/rentals_bloc.dart' as _i899;
import '../services/logging/logging_service.dart' as _i1022;
import '../services/storage/database_service.dart' as _i821;
import '../services/storage/storage_service.dart' as _i968;
import '../services/storage/storage_service_provider.dart' as _i576;
import '../utils/event_bus.dart' as _i409;
import 'modules/database_module.dart' as _i664;
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
  final databaseModule = _$DatabaseModule();
  await gh.factoryAsync<_i460.SharedPreferences>(
    () => storageModule.prefs,
    preResolve: true,
  );
  await gh.singletonAsync<_i821.DatabaseService>(
    () => databaseModule.databaseService,
    preResolve: true,
  );
  gh.singleton<_i1022.LoggingService>(() => _i1022.LoggingService());
  gh.lazySingleton<_i409.EventBus>(() => _i409.EventBus());
  gh.factory<_i189.RentalLocalDataSource>(
      () => _i189.RentalLocalDataSourceImpl(gh<_i821.DatabaseService>()));
  gh.factory<_i446.DashboardDataSource>(
      () => _i446.DashboardDataSourceImpl(gh<_i821.DatabaseService>()));
  gh.factory<_i521.CustomerLocalDataSource>(
      () => _i521.CustomerLocalDataSourceImpl(gh<_i821.DatabaseService>()));
  gh.factory<_i545.RentalRepository>(
      () => _i1063.RentalRepositoryImpl(gh<_i189.RentalLocalDataSource>()));
  gh.factory<_i576.StorageServiceProvider>(
      () => _i576.StorageServiceProvider(gh<_i460.SharedPreferences>()));
  gh.factory<_i716.InventoryLocalDataSource>(
      () => _i716.InventoryLocalDataSourceImpl(gh<_i821.DatabaseService>()));
  gh.factory<_i504.CustomerRepository>(
      () => _i877.CustomerRepositoryImpl(gh<_i521.CustomerLocalDataSource>()));
  gh.factory<_i665.DashboardRepository>(
      () => _i509.DashboardRepositoryImpl(gh<_i446.DashboardDataSource>()));
  gh.factory<_i591.GetOverviewUseCase>(
      () => _i591.GetOverviewUseCase(gh<_i665.DashboardRepository>()));
  gh.factory<_i230.UpdateRentalUseCase>(() => _i230.UpdateRentalUseCase(
        gh<_i545.RentalRepository>(),
        gh<_i409.EventBus>(),
      ));
  gh.factory<_i512.AddRentalUseCase>(() => _i512.AddRentalUseCase(
        gh<_i545.RentalRepository>(),
        gh<_i409.EventBus>(),
      ));
  gh.factory<_i863.AddCustomerUseCase>(() => _i863.AddCustomerUseCase(
        gh<_i504.CustomerRepository>(),
        gh<_i409.EventBus>(),
      ));
  gh.factory<_i940.UpdateCustomerUseCase>(() => _i940.UpdateCustomerUseCase(
        gh<_i504.CustomerRepository>(),
        gh<_i409.EventBus>(),
      ));
  gh.factory<_i226.GetCustomerCollectedAmountUseCase>(() =>
      _i226.GetCustomerCollectedAmountUseCase(gh<_i545.RentalRepository>()));
  gh.factory<_i740.GetCustomerRentalsUseCase>(
      () => _i740.GetCustomerRentalsUseCase(gh<_i545.RentalRepository>()));
  gh.factory<_i371.GetCustomerPendingAmountUseCase>(() =>
      _i371.GetCustomerPendingAmountUseCase(gh<_i545.RentalRepository>()));
  gh.factory<_i75.GetRentalByIdUseCase>(
      () => _i75.GetRentalByIdUseCase(gh<_i545.RentalRepository>()));
  gh.factory<_i425.GetAllRentalsUseCase>(
      () => _i425.GetAllRentalsUseCase(gh<_i545.RentalRepository>()));
  gh.factory<_i422.InventoryRepository>(() =>
      _i572.InventoryRepositoryImpl(gh<_i716.InventoryLocalDataSource>()));
  gh.factory<_i968.StorageService>(
      () => _i968.StorageService(gh<_i576.StorageServiceProvider>()));
  gh.factory<_i652.DashboardBloc>(() => _i652.DashboardBloc(
        gh<_i591.GetOverviewUseCase>(),
        gh<_i409.EventBus>(),
      ));
  gh.factory<_i850.GetAllCustomersUseCase>(
      () => _i850.GetAllCustomersUseCase(gh<_i504.CustomerRepository>()));
  gh.factory<_i469.GetCustomerByIdUseCase>(
      () => _i469.GetCustomerByIdUseCase(gh<_i504.CustomerRepository>()));
  gh.factory<_i58.CustomerDetailsBloc>(() => _i58.CustomerDetailsBloc(
        gh<_i469.GetCustomerByIdUseCase>(),
        gh<_i740.GetCustomerRentalsUseCase>(),
        gh<_i371.GetCustomerPendingAmountUseCase>(),
        gh<_i226.GetCustomerCollectedAmountUseCase>(),
        gh<_i409.EventBus>(),
      ));
  gh.factory<_i117.AddCustomerBloc>(() => _i117.AddCustomerBloc(
        gh<_i863.AddCustomerUseCase>(),
        gh<_i940.UpdateCustomerUseCase>(),
        gh<_i469.GetCustomerByIdUseCase>(),
      ));
  gh.factory<_i398.GetInventoryItemByIdUseCase>(
      () => _i398.GetInventoryItemByIdUseCase(
            gh<_i422.InventoryRepository>(),
            gh<_i545.RentalRepository>(),
          ));
  gh.factory<_i866.GetInventoryWithAvailabilityUseCase>(
      () => _i866.GetInventoryWithAvailabilityUseCase(
            gh<_i422.InventoryRepository>(),
            gh<_i545.RentalRepository>(),
          ));
  gh.factory<_i899.RentalsBloc>(() => _i899.RentalsBloc(
        gh<_i425.GetAllRentalsUseCase>(),
        gh<_i409.EventBus>(),
      ));
  gh.factory<_i1004.AddRentalBloc>(() => _i1004.AddRentalBloc(
        gh<_i512.AddRentalUseCase>(),
        gh<_i230.UpdateRentalUseCase>(),
        gh<_i75.GetRentalByIdUseCase>(),
        gh<_i850.GetAllCustomersUseCase>(),
        gh<_i866.GetInventoryWithAvailabilityUseCase>(),
        gh<_i863.AddCustomerUseCase>(),
      ));
  gh.factory<_i690.InventoryBloc>(() => _i690.InventoryBloc(
        gh<_i866.GetInventoryWithAvailabilityUseCase>(),
        gh<_i409.EventBus>(),
      ));
  gh.factory<_i213.AddInventoryItemUseCase>(() => _i213.AddInventoryItemUseCase(
        gh<_i422.InventoryRepository>(),
        gh<_i409.EventBus>(),
      ));
  gh.factory<_i866.UpdateInventoryItemUseCase>(
      () => _i866.UpdateInventoryItemUseCase(
            gh<_i422.InventoryRepository>(),
            gh<_i409.EventBus>(),
          ));
  gh.factory<_i153.AddInventoryBloc>(() => _i153.AddInventoryBloc(
        gh<_i213.AddInventoryItemUseCase>(),
        gh<_i866.UpdateInventoryItemUseCase>(),
        gh<_i398.GetInventoryItemByIdUseCase>(),
      ));
  gh.factory<_i19.CustomersBloc>(() => _i19.CustomersBloc(
        gh<_i850.GetAllCustomersUseCase>(),
        gh<_i409.EventBus>(),
      ));
  return getIt;
}

class _$StorageModule extends _i148.StorageModule {}

class _$DatabaseModule extends _i664.DatabaseModule {}
