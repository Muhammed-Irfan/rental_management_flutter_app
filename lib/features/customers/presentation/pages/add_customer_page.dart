import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentease/core/di/injection.dart';
import 'package:rentease/core/presentation/widgets/base_view.dart';
import 'package:rentease/core/theme/theme_imports.dart';
import 'package:rentease/core/utils/app_debouncer.dart';
import 'package:rentease/core/utils/extensions.dart';
import 'package:rentease/features/customers/presentation/bloc/add_customer_bloc.dart';
import 'package:rentease/shared/presentation/widgets/common_widgets.dart';

class AddCustomerPage extends StatelessWidget {
  final String? id;
  const AddCustomerPage({super.key, this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final bloc = getIt<AddCustomerBloc>();
        if (id != null) {
          bloc.add(AddCustomerEvent.setCustomer(id!));
        }
        return bloc;
      },
      child: AddCustomerView(id: id),
    );
  }
}

class AddCustomerView extends StatelessWidget {
  final String? id;
  final _debouncer = AppDebouncer(milliseconds: 1500);

  AddCustomerView({super.key, this.id});

  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Customer'),
      ),
      body: BaseView<AddCustomerBloc, AddCustomerState>(
        initialWidget: _buildContent(context),
        onLoaded: (state) {
          _nameController.text = state.customer.name;
          _phoneController.text = state.customer.phoneNumber ?? '';
          _addressController.text = state.customer.address ?? '';
          return _buildContent(context);
        },
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
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
              controller: _nameController,
            ),
            const SizedBox(height: 16),
            AppTextField(
              label: 'Phone',
              controller: _phoneController,
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 16),
            AppTextField(
              label: 'Address',
              controller: _addressController,
              maxLines: 3,
            ),
            const SizedBox(height: 32),
            ValueListenableBuilder(
              valueListenable: _nameController,
              builder: (context, _, __) {
                return AppButton(
                  text: id != null ? 'Save Customer' : 'Add Customer',
                  isDisabled: _nameController.text.trim().isEmpty,
                  onPressed: () async {
                    final bloc = context.read<AddCustomerBloc>()
                      ..add(
                        AddCustomerEvent.updateFields(
                          name: _nameController.text,
                          phone: _phoneController.text,
                          address: _addressController.text,
                        ),
                      );
                    await Future.delayed(const Duration(milliseconds: 100));
                    bloc.add(
                      id != null ? const AddCustomerEvent.updateCustomer() : const AddCustomerEvent.createCustomer(),
                    );
                  },
                ).expandedWidth;
              },
            ),
          ],
        ),
      ),
    );
  }
}
