part of 'add_customer_bloc.dart';

@freezed
class AddCustomerEvent with _$AddCustomerEvent {
  const factory AddCustomerEvent.updateName(String name) = _UpdateName;
  const factory AddCustomerEvent.updatePhone(String phone) = _UpdatePhone;
  const factory AddCustomerEvent.updateAddress(String address) = _UpdateAddress;
  const factory AddCustomerEvent.createCustomer() = _CreateCustomer;
}
