import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rentease/core/di/injection.dart';
import 'package:rentease/core/presentation/widgets/base_view.dart';
import 'package:rentease/core/router/route_names.dart';
import 'package:rentease/core/utils/extensions.dart';
import 'package:rentease/features/rentals/domain/entities/rental_entity.dart';
import 'package:rentease/features/rentals/presentation/bloc/rentals_bloc.dart';
import 'package:rentease/features/rentals/presentation/widgets/rental_item.dart';
import 'package:rentease/shared/presentation/widgets/common_widgets.dart';

class RentalsPage extends StatelessWidget {
  const RentalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<RentalsBloc>()..add(const RentalsEvent.loadRentals()),
      child: const RentalsView(),
    );
  }
}

class RentalsView extends StatelessWidget {
  const RentalsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rentals'),
      ),
      body: BaseView<RentalsBloc, RentalsState>(
        initialWidget: _buildContent(context, const RentalsState(rentals: [])),
        onLoaded: (state) => _buildContent(context, state),
      ),
    );
  }

  Widget _buildContent(BuildContext context, RentalsState state) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16, 16, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppButton(
            text: 'Add New Rental',
            onPressed: () => context.pushNamed(RouteNames.addRental),
          ).expandedWidth,
          const SizedBox(height: 24),
          AppDropdown<RentalStatus>(
            label: 'Filter by Status',
            hint: 'Select a status',
            items: RentalStatus.values,
            itemLabel: (status) {
              final label = switch (status) {
                RentalStatus.active => 'Active',
                RentalStatus.partiallyPaid => 'Partially Paid',
                RentalStatus.paid => 'Paid',
                RentalStatus.all => 'All',
              };

              return label;
            },
            onChanged: (RentalStatus? status) {
              if (status != null) {
                context
                    .read<RentalsBloc>()
                    .add(RentalsEvent.filterByStatus(status));
              }
            },
          ),
          const SizedBox(height: 24),
          Expanded(child: _buildRentalsList(state)),
        ],
      ),
    );
  }

  Widget _buildRentalsList(RentalsState state) {
    if (state.rentals.isEmpty) {
      return const Center(
        child: Text(
          'No rentals found',
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      );
    }

    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: state.rentals.length,
      itemBuilder: (context, index) {
        final rental = state.rentals[index];
        return RentalItem(
          rental: rental,
          onTap: () => context.pushNamed(
            RouteNames.editRental,
            pathParameters: {'id': rental.id},
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(height: 16),
    );
  }
}
