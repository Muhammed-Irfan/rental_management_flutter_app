import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rentease/core/di/injection.dart';
import 'package:rentease/core/presentation/widgets/base_view.dart';
import 'package:rentease/core/router/route_names.dart';
import 'package:rentease/core/utils/extensions.dart';
import 'package:rentease/features/customers/presentation/bloc/customers_bloc.dart';
import 'package:rentease/features/customers/presentation/widgets/customer_item.dart';
import 'package:rentease/shared/presentation/widgets/common_widgets.dart';

class CustomersPage extends StatelessWidget {
  const CustomersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CustomersBloc>()..add(const CustomersEvent.loadCustomers()),
      child: const CustomersView(),
    );
  }
}

class CustomersView extends StatelessWidget {
  const CustomersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customers'),
      ),
      body: BaseView<CustomersBloc, CustomersState>(
        initialWidget: _buildContent(context, const CustomersState(customers: [])),
        onLoaded: (state) => _buildContent(context, state),
      ),
    );
  }

  Widget _buildContent(BuildContext context, CustomersState state) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16, 16, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppButton(
            text: 'Add New Customer',
            onPressed: () {
              context.pushNamed(RouteNames.addCustomer);
            },
          ).expandedWidth,
          const SizedBox(height: 24),
          Expanded(child: _buildCustomerList(state)),
        ],
      ),
    );
  }

  Widget _buildCustomerList(CustomersState state) {
    if (state.customers.isEmpty) {
      return const Center(
        child: Text(
          'No customers found',
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      );
    }

    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: state.customers.length,
      itemBuilder: (context, index) {
        final customer = state.customers[index];
        return CustomerItem(
          name: customer.name,
          subtitle: customer.phoneNumber ?? '',
          onTap: () => context.pushNamed(
            RouteNames.customerDetails,
            pathParameters: {'id': customer.id},
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(height: 16),
    );
  }
}
