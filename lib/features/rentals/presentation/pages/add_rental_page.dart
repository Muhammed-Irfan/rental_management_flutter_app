import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentease/core/di/injection.dart';
import 'package:rentease/core/presentation/widgets/base_view.dart';
import 'package:rentease/core/theme/theme_imports.dart';
import 'package:rentease/core/utils/extensions.dart';
import 'package:rentease/features/customers/domain/entities/customer_entity.dart';
import 'package:rentease/features/inventory/domain/entities/inventory_item_entity.dart';
import 'package:rentease/features/rentals/domain/entities/rental_entity.dart';
import 'package:rentease/features/rentals/presentation/bloc/add_rental_bloc.dart';
import 'package:rentease/features/rentals/presentation/widgets/rental_calculation_sheet.dart';
import 'package:rentease/shared/presentation/widgets/common_widgets.dart';

class AddRentalPage extends StatelessWidget {
  const AddRentalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AddRentalBloc>(),
      child: const AddRentalView(),
    );
  }
}

class AddRentalView extends StatelessWidget {
  const AddRentalView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Rental'),
      ),
      body: BaseView<AddRentalBloc, AddRentalState>(
        initialWidget: _buildContent(context, AddRentalState(selectedRental: RentalEntity.empty())),
        onLoaded: (state) => _buildContent(context, state),
      ),
    );
  }

  Widget _buildContent(BuildContext context, AddRentalState state) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCustomerSection(context, state),
            const SizedBox(height: 24),
            _buildItemsSection(context, state),
            const SizedBox(height: 24),
            _buildAdvanceSection(context, state),
            const SizedBox(height: 32),
            _buildActionButton(context, state),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomerSection(BuildContext context, AddRentalState state) {
    // TODO: Get customers from a repository
    final customers = [
      const CustomerEntity(id: 1, name: 'John Doe'),
      const CustomerEntity(id: 2, name: 'Jane Smith'),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Customer Details',
          style: AppTextStyles.body,
        ),
        const SizedBox(height: 16),
        AppDropdown<CustomerEntity>(
          label: 'Select Customer',
          hint: 'Choose a customer',
          value: state.selectedRental.customer.id == '0' ? null : state.selectedRental.customer,
          items: customers,
          itemLabel: (customer) => customer.name,
          onChanged: (customer) {
            if (customer != null) {
              context.read<AddRentalBloc>().add(AddRentalEvent.selectCustomer(customer));
            }
          },
        ),
      ],
    );
  }

  Widget _buildItemsSection(BuildContext context, AddRentalState state) {
    // TODO: Get items from a repository
    final items = [
      const InventoryItemEntity(
        id: 1,
        name: 'Item 1',
        description: 'Desc 1',
        rent: 100,
        quantity: 100,
        available: 100,
      ),
      const InventoryItemEntity(id: 2, name: 'Item 2', description: 'Desc 2', rent: 200, quantity: 50, available: 50),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Rental Items',
          style: AppTextStyles.body,
        ),
        const SizedBox(height: 16),
        ...state.selectedRental.items.asMap().entries.map(
              (entry) => Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(entry.value.name),
                                ],
                              ),
                            ),
                            IconButton(
                              icon: const Icon(Icons.delete),
                              onPressed: () {
                                context.read<AddRentalBloc>().add(AddRentalEvent.removeItem(entry.key));
                              },
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Expanded(
                              child: AppTextField(
                                label: 'Quantity',
                                keyboardType: TextInputType.number,
                                controller: TextEditingController(
                                  text: entry.value.quantity.toString(),
                                ),
                                onChanged: (value) {
                                  final quantity = int.tryParse(value) ?? 1;
                                  final updatedItem = entry.value.copyWith(
                                    quantity: quantity,
                                  );
                                  context.read<AddRentalBloc>().add(
                                        AddRentalEvent.updateItem(
                                          entry.key,
                                          updatedItem,
                                        ),
                                      );
                                },
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: AppTextField(
                                label: 'Rent',
                                keyboardType: TextInputType.number,
                                controller: TextEditingController(
                                  text: entry.value.rent.toString(),
                                ),
                                onChanged: (value) {
                                  final rent = double.tryParse(value) ?? 0.0;
                                  final updatedItem = entry.value.copyWith(
                                    rent: rent,
                                  );
                                  context.read<AddRentalBloc>().add(
                                        AddRentalEvent.updateItem(
                                          entry.key,
                                          updatedItem,
                                        ),
                                      );
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: AppDropdown<InventoryItemEntity>(
                label: 'Select Item',
                hint: 'Choose an item to rent',
                items: items,
                itemLabel: (item) => '${item.name} (\$${item.rent})',
                onChanged: (item) {
                  if (item != null) {
                    // Set default quantity to 1 and rent to item's rent
                    final rentalItem = item.copyWith(quantity: 1);
                    context.read<AddRentalBloc>().add(AddRentalEvent.addItem(rentalItem));
                  }
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildAdvanceSection(BuildContext context, AddRentalState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Payment Details',
          style: AppTextStyles.body,
        ),
        const SizedBox(height: 16),
        AppTextField(
          label: 'Advance Amount',
          keyboardType: TextInputType.number,
          controller: TextEditingController(
            text: state.selectedRental.advanceAmount.toString(),
          )..selection = TextSelection.fromPosition(
              TextPosition(
                offset: state.selectedRental.advanceAmount.toString().length,
              ),
            ),
          onChanged: (value) {
            final amount = double.tryParse(value) ?? 0.0;
            context.read<AddRentalBloc>().add(AddRentalEvent.updateAdvanceAmount(amount));
          },
        ),
      ],
    );
  }

  Widget _buildActionButton(BuildContext context, AddRentalState state) {
    return Column(
      children: [
        AppButton(
          text: 'Calculate',
          onPressed: () => _showCalculationSheet(context, state),
        ).expandedWidth,
        const SizedBox(height: 16),
        AppButton(
          text: 'Create Rental',
          onPressed: () {
            context.read<AddRentalBloc>().add(const AddRentalEvent.createRental());
          },
        ).expandedWidth,
      ],
    );
  }

  void _showCalculationSheet(BuildContext context, AddRentalState state) {
    context.read<AddRentalBloc>().add(const AddRentalEvent.calculateRental());

    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.background,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => RentalCalculationSheet(
        rental: state.selectedRental,
        onMarkAsPaid: () {
          // TODO: Implement mark as paid functionality
          Navigator.pop(context);
        },
      ),
    );
  }
}
