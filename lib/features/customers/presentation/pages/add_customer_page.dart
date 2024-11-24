import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentease/core/di/injection.dart';
import 'package:rentease/core/presentation/widgets/base_view.dart';
import 'package:rentease/core/theme/theme_imports.dart';
import 'package:rentease/core/utils/extensions.dart';
import 'package:rentease/features/customers/domain/entities/customer_entity.dart';
import 'package:rentease/features/customers/presentation/bloc/add_customer_bloc.dart';
import 'package:rentease/shared/presentation/widgets/common_widgets.dart';

class AddCustomerPage extends StatelessWidget {
  const AddCustomerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AddCustomerBloc>(),
      child: const AddCustomerView(),
    );
  }
}

class AddCustomerView extends StatelessWidget {
  const AddCustomerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Customer'),
      ),
      body: BaseView<AddCustomerBloc, AddCustomerState>(
        initialWidget: _buildContent(
          context,
          AddCustomerState(customer: CustomerEntity.empty()),
        ),
        onLoaded: (state) => _buildContent(context, state),
      ),
    );
  }

  Widget _buildContent(BuildContext context, AddCustomerState state) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Customer Details',
              style: AppTextStyles.title,
            ),
            const SizedBox(height: 16),
            AppTextField(
              label: 'Name',
              controller: TextEditingController(text: state.customer.name)
                ..selection = TextSelection.fromPosition(
                  TextPosition(offset: state.customer.name.length),
                ),
              onChanged: (value) {
                context.read<AddCustomerBloc>().add(AddCustomerEvent.updateName(value));
              },
            ),
            const SizedBox(height: 16),
            AppTextField(
              label: 'Phone',
              controller: TextEditingController(text: state.customer.phoneNumber ?? '')
                ..selection = TextSelection.fromPosition(
                  TextPosition(offset: state.customer.phoneNumber?.length ?? 0),
                ),
              keyboardType: TextInputType.phone,
              onChanged: (value) {
                context.read<AddCustomerBloc>().add(AddCustomerEvent.updatePhone(value));
              },
            ),
            const SizedBox(height: 16),
            AppTextField(
              label: 'Address',
              controller: TextEditingController(text: state.customer.address ?? '')
                ..selection = TextSelection.fromPosition(
                  TextPosition(offset: state.customer.address?.length ?? 0),
                ),
              maxLines: 3,
              onChanged: (value) {
                context.read<AddCustomerBloc>().add(AddCustomerEvent.updateAddress(value));
              },
            ),
            const SizedBox(height: 32),
            AppButton(
              text: 'Add Customer',
              onPressed: () {
                context.read<AddCustomerBloc>().add(const AddCustomerEvent.createCustomer());
              },
            ).expandedWidth,
          ],
        ),
      ),
    );
  }
}
