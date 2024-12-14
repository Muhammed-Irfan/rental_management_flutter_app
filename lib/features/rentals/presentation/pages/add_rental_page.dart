import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rentease/core/di/injection.dart';
import 'package:rentease/core/presentation/widgets/base_view.dart';
import 'package:rentease/core/router/route_names.dart';
import 'package:rentease/core/theme/theme_imports.dart';
import 'package:rentease/core/utils/app_debouncer.dart';
import 'package:rentease/core/utils/extensions.dart';
import 'package:rentease/features/customers/domain/entities/customer_entity.dart';
import 'package:rentease/features/rentals/domain/entities/rental_entity.dart';
import 'package:rentease/features/rentals/presentation/bloc/add_rental_bloc.dart';
import 'package:rentease/features/rentals/presentation/widgets/item_dropdown.dart';
import 'package:rentease/features/rentals/presentation/widgets/rental_calculation_sheet.dart';
import 'package:rentease/shared/presentation/widgets/common_widgets.dart';

class AddRentalPage extends StatelessWidget {
  final String? id;
  const AddRentalPage({super.key, this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final bloc = getIt<AddRentalBloc>()
          ..add(const AddRentalEvent.initializeCustomers())
          ..add(const AddRentalEvent.initializeItems());

        // If editing, also set the rental
        if (id != null) {
          bloc.add(AddRentalEvent.setRental(id!));
        }

        return bloc;
      },
      child: AddRentalView(id: id),
    );
  }
}

class AddRentalView extends StatelessWidget {
  final String? id;
  final _debouncer = AppDebouncer(milliseconds: 1500);

  AddRentalView({super.key, this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Rental'),
      ),
      body: BaseView<AddRentalBloc, AddRentalState>(
        initialWidget: _buildContent(
          context,
          AddRentalState(selectedRental: RentalEntity.empty()),
        ),
        onLoaded: (state) {
          // Set text controllers based on state
          return _buildContent(context, state);
        },
      ),
    );
  }

  Widget _buildContent(BuildContext context, AddRentalState state) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 16, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCustomerSection(context, state),
            const SizedBox(height: 24),
            _buildItemsSection(context, state),
            const SizedBox(height: 24),
            _buildAdvanceSection(context, state),
            const SizedBox(height: 32),
            _buildDateSection(context, state),
            const SizedBox(height: 24),
            _buildActionButton(context, state),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomerSection(BuildContext context, AddRentalState state) {
    final customers = state.customers;
    final selectedCustomer = state.selectedRental.customer;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Customer Details',
          style: AppTextStyles.title,
        ),
        const SizedBox(height: 16),
        if (selectedCustomer.id.isNotEmpty)
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    context.pushNamed(
                      RouteNames.editCustomer,
                      pathParameters: {'id': selectedCustomer.id},
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Theme.of(context).primaryColor),
                      borderRadius: 4.0.borderRadius,
                      color: AppColors.customerCardBackground,
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 9.0),
                    child: Text(
                      selectedCustomer.name,
                      style: AppTextStyles.title,
                    ),
                  ),
                ),
              ),
              state.selectedRental.status != RentalStatus.paid
                  ? Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Theme.of(context).primaryColor),
                        borderRadius: 4.0.borderRadius,
                      ),
                      margin: const EdgeInsets.only(left: 8.0),
                      child: IconButton(
                        icon: const Icon(Icons.delete_outline_rounded),
                        onPressed: () {
                          context.read<AddRentalBloc>().add(const AddRentalEvent.removeCustomer());
                        },
                      ),
                    )
                  : const SizedBox.shrink(),
            ],
          )
        else
          AppDropdown<CustomerEntity>(
            label: 'Select Customer',
            hint: 'Type to search or create customer',
            value: null,
            items: customers,
            itemLabel: (customer) => customer.name,
            onChanged: (customer) {
              if (customer != null) {
                context.read<AddRentalBloc>().add(AddRentalEvent.selectCustomer(customer));
              }
            },
            isSearchable: true,
            emptyItemText: "Create new customer",
            emptyItemOnTap: (name) {
              if (name.isNotEmpty) {
                context.read<AddRentalBloc>().add(
                      AddRentalEvent.selectCustomer(
                        CustomerEntity(id: '', name: name),
                      ),
                    );
              }
            },
          ),
      ],
    );
  }

  Widget _buildDateSection(BuildContext context, AddRentalState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Rental Date',
          style: AppTextStyles.title,
        ),
        const SizedBox(height: 16),
        GestureDetector(
          onTap: state.selectedRental.status == RentalStatus.paid
              ? null
              : () async {
                  final bloc = context.read<AddRentalBloc>();
                  final date = await showDatePicker(
                    context: context,
                    initialDate: state.selectedRental.rentedAt,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );
                  if (date != null) {
                    bloc.add(AddRentalEvent.updateRentedAt(date));
                  }
                },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).primaryColor),
              borderRadius: 4.0.borderRadius,
              color: AppColors.textFieldBackground,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    state.selectedRental.rentedAt.toFormattedString(),
                    style: AppTextStyles.title,
                  ),
                ),
                const Icon(Icons.calendar_today),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildItemsSection(BuildContext context, AddRentalState state) {
    final items = state.items;
    final unselectedItems =
        items.where((item) => !state.selectedRental.items.map((e) => e.id).contains(item.id)).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Rental Items',
          style: AppTextStyles.title,
        ),
        const SizedBox(height: 16),
        ...state.selectedRental.items.asMap().entries.map(
              (entry) => Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(entry.value.name, style: AppTextStyles.title),
                                  Text(
                                    'Available: ${entry.value.available.toStringAsFixed(0)}',
                                    style: AppTextStyles.caption,
                                  ),
                                ],
                              ),
                            ),
                            if (state.selectedRental.status != RentalStatus.paid)
                              IconButton(
                                icon: const Icon(Icons.delete),
                                onPressed: () {
                                  context.read<AddRentalBloc>().add(AddRentalEvent.removeItem(entry.key));
                                },
                              ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Expanded(
                              child: AppTextField(
                                label: 'Quantity',
                                keyboardType: TextInputType.number,
                                controller: TextEditingController(
                                  text: entry.value.quantity.toString(),
                                ),
                                readOnly: state.selectedRental.status == RentalStatus.paid,
                                onChanged: (value) {
                                  _debouncer.run(() {
                                    final quantity = int.tryParse(value);
                                    if (quantity != null && quantity > 0) {
                                      final updatedItem = entry.value.copyWith(
                                        quantity: quantity,
                                      );
                                      context.read<AddRentalBloc>().add(
                                            AddRentalEvent.updateItem(
                                              entry.key,
                                              updatedItem,
                                            ),
                                          );
                                    }
                                  });
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
                                readOnly: state.selectedRental.status == RentalStatus.paid,
                                onChanged: (value) {
                                  _debouncer.run(() {
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
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                      ],
                    ),
                  ),
                ),
              ),
            ),
        if (state.selectedRental.status != RentalStatus.paid && unselectedItems.isNotEmpty)
          ItemDropdown(
            items: unselectedItems,
            onItemSelected: (item) {
              final rentalItem = item.copyWith(quantity: 1);
              context.read<AddRentalBloc>().add(AddRentalEvent.addItem(rentalItem));
            },
          ),
        if (state.items.isEmpty && unselectedItems.isEmpty)
          const Center(
            child: Text(
              'No items found',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
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
          style: AppTextStyles.title,
        ),
        const SizedBox(height: 16),
        AppTextField(
          label: 'Advance Amount',
          keyboardType: TextInputType.number,
          readOnly: state.selectedRental.status == RentalStatus.paid,
          controller: TextEditingController(
            text: state.selectedRental.advanceAmount.toString(),
          )..selection = TextSelection.fromPosition(
              TextPosition(
                offset: state.selectedRental.advanceAmount.toString().length,
              ),
            ),
          onChanged: (value) {
            _debouncer.run(() {
              final amount = double.tryParse(value) ?? 0.0;
              context.read<AddRentalBloc>().add(AddRentalEvent.updateAdvanceAmount(amount));
            });
          },
        ),
      ],
    );
  }

  Widget _buildActionButton(BuildContext context, AddRentalState state) {
    return Column(
      children: [
        if (state.selectedRental.status == RentalStatus.active) ...[
          AppButton(
            text: id != null ? 'Save Rental' : 'Create Rental',
            isDisabled: state.selectedRental.customer.id.isEmpty || state.selectedRental.items.isEmpty,
            onPressed: () {
              context.read<AddRentalBloc>().add(
                    id != null
                        ? AddRentalEvent.updateRental(state.selectedRental)
                        : const AddRentalEvent.createRental(),
                  );
            },
          ).expandedWidth,
        ],
        const SizedBox(height: 16),
        if (id != null)
          AppButton(
            text: state.selectedRental.status == RentalStatus.paid ? 'View Summary' : 'Proceed to Pay',
            onPressed: () => _showCalculationSheet(context, state),
            isDisabled: state.selectedRental.items.isEmpty,
          ).expandedWidth,
      ],
    );
  }

  Future<void> _showCalculationSheet(BuildContext context, AddRentalState state) async {
    final bloc = context.read<AddRentalBloc>()..add(const AddRentalEvent.calculateRental());

    // Wait for the calculation to complete by listening to the bloc state
    await bloc.stream.firstWhere(
      (state) => state.maybeWhen(
        loaded: (_) => true,
        loading: () => false,
        orElse: () => false,
      ),
    );

    if (context.mounted) {
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: AppColors.background,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        builder: (context) => SizedBox(
          height: MediaQuery.of(context).size.height * 0.8,
          child: RentalCalculationSheet(
            rental: state.selectedRental,
            onMarkAsPaid: () {
              bloc.add(const AddRentalEvent.markRentalAsPaid());
              Navigator.pop(context);
            },
            onPartialPayment: (amount) {
              bloc.add(AddRentalEvent.recordPartialPayment(amount));
              Navigator.pop(context);
            },
          ),
        ),
      );
    }
  }
}
