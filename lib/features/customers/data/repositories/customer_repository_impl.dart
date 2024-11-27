import 'package:injectable/injectable.dart';
import 'package:rentease/features/customers/data/datasources/customer_local_data_source.dart';
import 'package:rentease/features/customers/data/models/customer_hive_model.dart';
import 'package:rentease/features/customers/domain/entities/customer_entity.dart';
import 'package:rentease/features/customers/domain/repositories/customer_repository.dart';

@Injectable(as: CustomerRepository)
class CustomerRepositoryImpl implements CustomerRepository {
  final CustomerLocalDataSource _localDataSource;

  CustomerRepositoryImpl(this._localDataSource);

  @override
  Future<List<CustomerEntity>> getAllCustomers() async {
    final models = await _localDataSource.getAllCustomers();
    return models.map((model) => model.toEntity()).toList();
  }

  @override
  Future<CustomerEntity?> getCustomerById(String id) async {
    final model = await _localDataSource.getCustomerById(id);
    return model?.toEntity();
  }

  @override
  Future<void> addCustomer(CustomerEntity customer) async {
    final model = CustomerHiveModel.fromEntity(customer);
    await _localDataSource.addCustomer(model);
  }

  @override
  Future<void> updateCustomer(CustomerEntity customer) async {
    final model = CustomerHiveModel.fromEntity(customer);
    await _localDataSource.updateCustomer(model);
  }
}
