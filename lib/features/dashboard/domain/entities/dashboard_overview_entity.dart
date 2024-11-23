import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_overview_entity.freezed.dart';

@freezed
class DashboardOverviewEntity with _$DashboardOverviewEntity {
  factory DashboardOverviewEntity({
    required int activeRentalsCount,
    required double pendingRentalAmount,
    required double totalAmountCollected,
  }) = _DashboardOverviewEntity;
}
