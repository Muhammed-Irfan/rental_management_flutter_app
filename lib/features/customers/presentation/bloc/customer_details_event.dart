part of 'customer_details_bloc.dart';

@freezed
class CustomerDetailsEvent with _$CustomerDetailsEvent {
  const factory CustomerDetailsEvent.loadCustomerDetails(int customerId) = _LoadCustomerDetails;
  const factory CustomerDetailsEvent.refreshRentals() = _RefreshRentals;
}
