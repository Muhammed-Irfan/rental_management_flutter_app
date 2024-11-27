import 'package:rentease/features/customers/domain/entities/customer_entity.dart';

abstract class CustomerRepository {
  Future<List<CustomerEntity>> getAllCustomers();
  Future<CustomerEntity?> getCustomerById(String id);
  Future<void> addCustomer(CustomerEntity customer);
  Future<void> updateCustomer(CustomerEntity customer);
}
