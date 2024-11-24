part of 'customers_bloc.dart';

@freezed
class CustomersState with _$CustomersState {
   const factory CustomersState({
    @Default([]) List<CustomerEntity> customers,
  }) = _CustomersState;
}
