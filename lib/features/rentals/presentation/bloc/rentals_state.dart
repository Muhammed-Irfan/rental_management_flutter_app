part of 'rentals_bloc.dart';

@freezed
class RentalsState with _$RentalsState {
  const factory RentalsState({
    @Default([]) List<RentalEntity> rentals,
  }) = _RentalsState;
}
