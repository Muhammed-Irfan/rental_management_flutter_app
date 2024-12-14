import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rentease/core/di/injection.dart';
import 'package:rentease/core/presentation/widgets/base_view.dart';
import 'package:rentease/core/router/route_names.dart';
import 'package:rentease/core/theme/theme_imports.dart';
import 'package:rentease/features/customers/presentation/bloc/customer_details_bloc.dart';
import 'package:rentease/features/rentals/domain/entities/rental_entity.dart';
import 'package:rentease/features/rentals/presentation/widgets/rental_item.dart';
import 'package:rentease/shared/presentation/widgets/app_dropdown.dart';

class CustomerDetailsPage extends StatelessWidget {
  final String customerId;

  const CustomerDetailsPage({
    required this.customerId,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CustomerDetailsBloc>()
        ..add(CustomerDetailsEvent.loadCustomerDetails(customerId))
        ..listenToRentalsUpdated(customerId),
      child: CustomerDetailsView(customerId: customerId),
    );
  }
}

class CustomerDetailsView extends StatelessWidget {
  final String customerId;

  const CustomerDetailsView({
    required this.customerId,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customer Details'),
      ),
      body: BaseView<CustomerDetailsBloc, CustomerDetailsState>(
        onLoaded: (state) => _buildContent(context, state),
      ),
    );
  }

  Widget _buildContent(BuildContext context, CustomerDetailsState state) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 0, 16, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildCustomerInfo(state, context),
          const SizedBox(height: 8),
          _buildSummary(state),
          const SizedBox(height: 16),
          Expanded(child: _buildRentalList(state, context)),
        ],
      ),
    );
  }

  Widget _buildCustomerInfo(CustomerDetailsState state, BuildContext context) {
    return Card(
      elevation: 8,
      color: AppColors.customerCardBackground,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Customer Information',
                    style: AppTextStyles.title.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () => context.pushNamed(
                    RouteNames.editCustomer,
                    pathParameters: {'id': customerId},
                  ),
                ),
              ],
            ),
            _buildInfoRow('Name', state.customer.name),
            if (state.customer.phoneNumber != null) _buildInfoRow('Phone', state.customer.phoneNumber!),
            if (state.customer.address != null) _buildInfoRow('Address', state.customer.address!),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 80,
            child: Text(
              label,
              style: AppTextStyles.body,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: AppTextStyles.body.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSummary(CustomerDetailsState state) {
    return Card(
      elevation: 8,
      color: AppColors.customerCardBackground,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment Summary',
              style: AppTextStyles.title.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: _buildSummaryItem(
                    'Pending Amount',
                    state.totalPendingAmount,
                    Colors.red,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: _buildSummaryItem(
                    'Collected Amount',
                    state.totalCollectedAmount,
                    Colors.green,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSummaryItem(String label, double amount, Color color) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppTextStyles.body,
        ),
        const SizedBox(height: 4),
        Text(
          '\$${amount.toStringAsFixed(2)}',
          style: AppTextStyles.title.copyWith(
            color: color,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildRentalList(CustomerDetailsState state, BuildContext context) {
    final rentals = state.rentals;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Rental History',
          style: AppTextStyles.title.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
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
              context.read<CustomerDetailsBloc>().add(CustomerDetailsEvent.filterByStatus(status));
            }
          },
        ),
        const SizedBox(height: 12),
        Expanded(
          child: rentals.isEmpty
              ? const Center(
                  child: Text(
                    'No rentals found',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                )
              : ListView.separated(
                  itemCount: rentals.length,
                  itemBuilder: (context, index) {
                    final rental = rentals[index];
                    return RentalItem(
                      rental: rental,
                      onTap: () {
                        context.pushNamed(
                          RouteNames.editRental,
                          pathParameters: {'id': rental.id},
                        );
                      },
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(height: 16),
                ),
        ),
      ],
    );
  }
}
