import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentease/core/di/injection.dart';
import 'package:rentease/core/presentation/widgets/base_view.dart';
import 'package:rentease/core/theme/theme_imports.dart';
import 'package:rentease/core/utils/extensions.dart';
import 'package:rentease/features/inventory/presentation/bloc/add_inventory_bloc.dart';
import 'package:rentease/shared/presentation/widgets/common_widgets.dart';

class AddInventoryPage extends StatelessWidget {
  final String? id;
  const AddInventoryPage({super.key, this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final bloc = getIt<AddInventoryBloc>();
        if (id != null) {
          bloc.add(AddInventoryEvent.setItem(id!));
        }
        return bloc;
      },
      child: AddInventoryView(id: id),
    );
  }
}

class AddInventoryView extends StatelessWidget {
  final String? id;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();
  final TextEditingController _availableController = TextEditingController();
  final TextEditingController _rentController = TextEditingController();

  AddInventoryView({super.key, this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Item'),
      ),
      body: BaseView<AddInventoryBloc, AddInventoryState>(
        initialWidget: _buildContent(context),
        onLoaded: (state) {
          _nameController.text = state.item.name;
          _descriptionController.text = state.item.description ?? '';
          _quantityController.text = state.item.quantity.toString();
          _availableController.text = state.item.available.toString();
          _rentController.text = state.item.rent.toStringAsFixed(2);
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
              'Item Details',
              style: AppTextStyles.title,
            ),
            const SizedBox(height: 16),
            AppTextField(
              label: 'Name',
              controller: _nameController,
            ),
            const SizedBox(height: 16),
            AppTextField(
              label: 'Description',
              controller: _descriptionController,
            ),
            const SizedBox(height: 24),
            Text(
              'Stock Details',
              style: AppTextStyles.title,
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: AppTextField(
                    label: 'Quantity',
                    keyboardType: TextInputType.number,
                    controller: _quantityController,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: AppTextField(
                    label: 'Available',
                    keyboardType: TextInputType.number,
                    controller: _availableController,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            AppTextField(
              label: 'Rent (₹)',
              keyboardType: TextInputType.number,
              controller: _rentController,
            ),
            const SizedBox(height: 32),
            ValueListenableBuilder<TextEditingValue>(
              valueListenable: _nameController,
              builder: (context, nameValue, _) {
                return ValueListenableBuilder<TextEditingValue>(
                  valueListenable: _rentController,
                  builder: (context, rentValue, _) {
                    return AppButton(
                      text: id != null ? 'Save Item' : 'Add Item',
                      isDisabled: nameValue.text.isEmpty || (double.tryParse(rentValue.text) ?? 0) <= 0,
                      onPressed: () async {
                        final bloc = context.read<AddInventoryBloc>()
                          ..add(
                            AddInventoryEvent.updateFields(
                              name: _nameController.text,
                              description: _descriptionController.text,
                              quantity: int.tryParse(_quantityController.text) ?? 0,
                              available: int.tryParse(_availableController.text) ?? 0,
                              rent: double.tryParse(_rentController.text) ?? 0.0,
                            ),
                          );
                        await Future.delayed(const Duration(milliseconds: 100));
                        bloc.add(
                            id != null ? const AddInventoryEvent.updateItem() : const AddInventoryEvent.createItem(),);
                      },
                    ).expandedWidth;
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
