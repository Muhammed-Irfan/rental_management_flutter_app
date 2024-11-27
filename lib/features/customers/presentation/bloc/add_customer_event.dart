part of 'add_customer_bloc.dart';

@freezed
class AddCustomerEvent with _$AddCustomerEvent {
  const factory AddCustomerEvent.updateFields({
    required String name,
    required String phone,
    required String address,
  }) = _UpdateFields;
  const factory AddCustomerEvent.createCustomer() = _CreateCustomer;
  const factory AddCustomerEvent.updateCustomer() = _UpdateCustomer;
  const factory AddCustomerEvent.setCustomer(String id) = _SetCustomer;
}
