part of 'customer_details_bloc.dart';

@freezed
class CustomerDetailsEvent with _$CustomerDetailsEvent {
  const factory CustomerDetailsEvent.loadCustomerDetails(String customerId) =
      _LoadCustomerDetails;
  const factory CustomerDetailsEvent.filterByStatus(RentalStatus status) =
      _FilterByStatus;
}
