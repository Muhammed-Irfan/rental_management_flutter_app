part of 'rentals_bloc.dart';

@freezed
class RentalsEvent with _$RentalsEvent {
  const factory RentalsEvent.loadRentals() = _LoadRentals;
}