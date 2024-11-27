import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rentease/core/bloc/base_bloc.dart';
import 'package:rentease/core/bloc/base_bloc_state.dart';
import 'package:rentease/core/events/rentals_updated.dart';
import 'package:rentease/core/usecases/usecase.dart';
import 'package:rentease/core/utils/event_bus.dart';
import 'package:rentease/features/dashboard/domain/entities/dashboard_overview_entity.dart';
import 'package:rentease/features/dashboard/domain/usecases/get_overview_usecase.dart';

part 'dashboard_bloc.freezed.dart';
part 'dashboard_event.dart';
part 'dashboard_state.dart';

@injectable
class DashboardBloc extends BaseBloc<DashboardEvent, DashboardState> {
  final GetOverviewUseCase _getOverview;
  final EventBus _eventBus;
  late final StreamSubscription<RentalsUpdated> _rentalSubscription;

  DashboardBloc(this._getOverview, this._eventBus) : super() {
    _rentalSubscription = _eventBus.on<RentalsUpdated>((event) {
      add(const DashboardEvent.fetchData());
    });
  }

  @override
  Future<void> handleEvent(
    DashboardEvent event,
    Emitter<BaseState<DashboardState>> emit,
  ) async {
    await event.map(
      fetchData: (e) => _fetchData(emit),
    );
  }

  @override
  Future<void> close() {
    _rentalSubscription.cancel();
    return super.close();
  }

  Future<void> _fetchData(
    Emitter<BaseState<DashboardState>> emit,
  ) async {
    emitLoading(emit);
    final result = await _getOverview(const NoParams());
    result.fold(
      (failure) => emitError(emit, failure.message),
      (data) => emitLoaded(emit, DashboardState(dashboardOverview: data)),
    );
  }
}
