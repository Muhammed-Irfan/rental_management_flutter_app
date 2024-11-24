import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rentease/core/di/injection.dart';
import 'package:rentease/core/presentation/widgets/base_view.dart';
import 'package:rentease/core/router/route_names.dart';
import 'package:rentease/core/theme/theme_imports.dart';
import 'package:rentease/core/utils/extensions.dart';
import 'package:rentease/features/dashboard/domain/entities/dashboard_overview_entity.dart';
import 'package:rentease/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:rentease/features/dashboard/presentation/widgets/grid_cta.dart';
import 'package:rentease/features/dashboard/presentation/widgets/overview_card.dart';
import 'package:rentease/shared/presentation/widgets/common_widgets.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<DashboardBloc>()..add(const DashboardEvent.fetchData()),
      child: const DashboardView(),
    );
  }
}

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Overview'),
        centerTitle: false,
      ),
      body: BaseView<DashboardBloc, DashboardState>(
        initialWidget: _buildContent(context, DashboardState(dashboardOverview: DashboardOverviewEntity.empty())),
        onLoaded: (state) => _buildContent(context, state),
      ),
    );
  }

  SingleChildScrollView _buildContent(BuildContext context, DashboardState state) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OverviewCard(
              title: 'Active Rentals',
              value: state.dashboardOverview.activeRentalsCount.toString(),
              color: AppColors.tealGreen,
              icon: Icons.event_available,
              onTap: () {},
            ),
            const SizedBox(height: 10),
            OverviewCard(
              title: 'Pending Amount',
              value: '₹${state.dashboardOverview.pendingRentalAmount.toStringAsFixed(2)}',
              color: AppColors.amber,
              icon: Icons.pending_actions,
              onTap: () {},
            ),
            const SizedBox(height: 10),
            OverviewCard(
              title: 'Total collected',
              value: '₹${state.dashboardOverview.totalAmountCollected.toStringAsFixed(2)}',
              color: AppColors.royalBlue,
              icon: Icons.attach_money,
              onTap: () {},
            ),
            const SizedBox(height: 20),
            AppButton(
              text: 'Add New Rental',
              onPressed: () => context.pushNamed(RouteNames.addRental),
            ).expandedWidth,
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: GridCTA(
                    title: 'Inventory',
                    onTap: () => context.pushNamed(RouteNames.inventory),
                    icon: Icons.inventory,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: GridCTA(
                    title: 'Customers',
                    onTap: () => context.pushNamed(RouteNames.customers),
                    icon: Icons.people,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            GridCTA(
              title: 'Rental History',
              onTap: () => context.pushNamed(RouteNames.rentalHistory),
              icon: Icons.history,
            ),
          ],
        ),
      ),
    );
  }
}
