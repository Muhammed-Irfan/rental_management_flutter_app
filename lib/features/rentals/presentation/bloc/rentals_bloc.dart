import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rentease/core/bloc/base_bloc.dart';
import 'package:rentease/core/bloc/base_bloc_state.dart';
import 'package:rentease/features/rentals/domain/entities/rental_entity.dart';

part 'rentals_event.dart';
part 'rentals_state.dart';
part 'rentals_bloc.freezed.dart';

@injectable
class RentalsBloc extends BaseBloc<RentalsEvent, RentalsState> {
  RentalsBloc() : super();

  @override
  Future<void> handleEvent(
    RentalsEvent event,
    Emitter<BaseState<RentalsState>> emit,
  ) async {
    await event.map(
      loadRentals: (_) async {},
    );
  }
}
