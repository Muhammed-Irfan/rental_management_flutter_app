import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_overview_entity.freezed.dart';

@freezed
class DashboardOverviewEntity with _$DashboardOverviewEntity {
  const factory DashboardOverviewEntity({
    required int activeRentalsCount,
    required double pendingRentalAmount,
    required double totalAmountCollected,
  }) = _DashboardOverviewEntity;

  factory DashboardOverviewEntity.empty() => const DashboardOverviewEntity(
        activeRentalsCount: 0,
        pendingRentalAmount: 0,
        totalAmountCollected: 0,
      );
}
