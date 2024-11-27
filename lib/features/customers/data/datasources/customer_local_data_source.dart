import 'package:injectable/injectable.dart';
import 'package:rentease/core/constants/storage_constants.dart';
import 'package:rentease/core/datasources/base_local_datasource.dart';
import 'package:rentease/core/services/storage/database_service.dart';
import 'package:rentease/features/customers/data/models/customer_hive_model.dart';

abstract class CustomerLocalDataSource {
  Future<List<CustomerHiveModel>> getAllCustomers();
  Future<CustomerHiveModel?> getCustomerById(String id);
  Future<void> addCustomer(CustomerHiveModel customer);
  Future<void> updateCustomer(CustomerHiveModel customer);
}

@Injectable(as: CustomerLocalDataSource)
class CustomerLocalDataSourceImpl extends BaseLocalDataSource<CustomerHiveModel>
    implements CustomerLocalDataSource {
  CustomerLocalDataSourceImpl(DatabaseService databaseService)
      : super(databaseService, StorageConstants.customerBoxName);

  @override
  Future<List<CustomerHiveModel>> getAllCustomers() async {
    final box = await getBox();
    return box.values.toList();
  }

  @override
  Future<CustomerHiveModel?> getCustomerById(String id) async {
    final box = await getBox();
    return box.get(id);
  }

  @override
  Future<void> addCustomer(CustomerHiveModel customer) async {
    final box = await getBox();
    await box.put(customer.id, customer);
  }

  @override
  Future<void> updateCustomer(CustomerHiveModel customer) async {
    final box = await getBox();
    await box.put(customer.id, customer);
  }
}
