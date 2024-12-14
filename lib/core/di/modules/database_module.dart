import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:rentease/core/services/storage/database_service.dart';
import 'package:rentease/features/customers/data/models/customer_hive_model.dart';
import 'package:rentease/features/inventory/data/models/inventory_item_hive_model.dart';
import 'package:rentease/features/rentals/data/models/payment_type_adapter.dart';
import 'package:rentease/features/rentals/data/models/rental_hive_model.dart';
import 'package:rentease/features/rentals/data/models/rental_status_adapter.dart';

@module
abstract class DatabaseModule {
  @preResolve
  @singleton
  Future<DatabaseService> get databaseService async {
    // Create and initialize the service
    final service = DatabaseServiceImpl();
    await service.init();

    // Register adapters after initialization
    _registerAdapters();

    return service;
  }

  void _registerAdapters() {
    // Register all Hive adapters
    if (!Hive.isAdapterRegistered(0)) {
      Hive.registerAdapter(CustomerHiveModelAdapter());
    }
    if (!Hive.isAdapterRegistered(1)) {
      Hive.registerAdapter(InventoryItemHiveModelAdapter());
    }
    if (!Hive.isAdapterRegistered(4)) {
      Hive.registerAdapter(RentalStatusAdapter());
    }
    if (!Hive.isAdapterRegistered(3)) {
      Hive.registerAdapter(RentalHiveModelAdapter());
    }
    if (!Hive.isAdapterRegistered(5)) {
      Hive.registerAdapter(PaymentRecordHiveModelAdapter());
    }
    if (!Hive.isAdapterRegistered(7)) {
      Hive.registerAdapter(PaymentTypeAdapter());
    }
  }
}
