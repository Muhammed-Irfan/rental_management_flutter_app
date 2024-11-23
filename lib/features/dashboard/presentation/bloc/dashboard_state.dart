part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState({
   required DashboardOverviewEntity dashboardOverview,
  }) = _DashboardState;
}
