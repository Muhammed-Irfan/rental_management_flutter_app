import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rentease/core/bloc/base_bloc.dart';
import 'package:rentease/core/bloc/base_bloc_state.dart';
import 'package:rentease/core/usecases/usecase.dart';
import 'package:rentease/features/dashboard/domain/entities/dashboard_overview_entity.dart';
import 'package:rentease/features/dashboard/domain/usecases/get_overview.dart';

part 'dashboard_bloc.freezed.dart';
part 'dashboard_event.dart';
part 'dashboard_state.dart';

@injectable
class DashboardBloc extends BaseBloc<DashboardEvent, DashboardState> {
  final GetOverview _getOverview;

  DashboardBloc(this._getOverview) : super();

  @override
  Future<void> handleEvent(
    DashboardEvent event,
    Emitter<BaseState<DashboardState>> emit,
  ) async {
    await event.map(
      fetchData: (e) async => _onFetchData(e, emit),
    );
  }

  Future<void> _onFetchData(
    _FetchData event,
    Emitter<BaseState<DashboardState>> emit,
  ) async {
    // emitLoading(emit);
    final result = await _getOverview(const NoParams());
    result.fold(
      (failure) => emitError(emit, failure.message),
      (data) => emitLoaded(emit, DashboardState(dashboardOverview: data)),
    );
  }
}
