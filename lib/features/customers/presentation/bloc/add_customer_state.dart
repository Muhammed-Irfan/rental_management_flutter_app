part of 'add_customer_bloc.dart';

@freezed
class AddCustomerState with _$AddCustomerState {
  const factory AddCustomerState({
    required CustomerEntity customer,
  }) = _AddCustomerState;
}
