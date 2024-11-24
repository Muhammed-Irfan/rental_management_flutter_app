import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentease/core/di/injection.dart';
import 'package:rentease/core/presentation/widgets/base_view.dart';
import 'package:rentease/core/theme/theme_imports.dart';
import 'package:rentease/core/utils/extensions.dart';
import 'package:rentease/features/inventory/domain/entities/inventory_item_entity.dart';
import 'package:rentease/features/inventory/presentation/bloc/add_inventory_bloc.dart';
import 'package:rentease/shared/presentation/widgets/common_widgets.dart';

class AddInventoryPage extends StatelessWidget {
  const AddInventoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AddInventoryBloc>(),
      child: const AddInventoryView(),
    );
  }
}

class AddInventoryView extends StatelessWidget {
  const AddInventoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Item'),
      ),
      body: BaseView<AddInventoryBloc, AddInventoryState>(
        initialWidget: _buildContent(
          context,
          AddInventoryState(item: InventoryItemEntity.empty()),
        ),
        onLoaded: (state) => _buildContent(context, state),
      ),
    );
  }

  Widget _buildContent(BuildContext context, AddInventoryState state) {
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
              controller: TextEditingController(text: state.item.name)
                ..selection = TextSelection.fromPosition(
                  TextPosition(offset: state.item.name.length),
                ),
              onChanged: (value) {
                context.read<AddInventoryBloc>().add(AddInventoryEvent.updateName(value));
              },
            ),
            const SizedBox(height: 16),
            AppTextField(
              label: 'Description',
              controller: TextEditingController(text: state.item.description)
                ..selection = TextSelection.fromPosition(
                  TextPosition(offset: state.item.description?.length ?? 0),
                ),
              onChanged: (value) {
                context.read<AddInventoryBloc>().add(AddInventoryEvent.updateDescription(value));
              },
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
                    controller: TextEditingController(
                      text: state.item.quantity.toString(),
                    )..selection = TextSelection.fromPosition(
                        TextPosition(
                          offset: state.item.quantity.toString().length,
                        ),
                      ),
                    onChanged: (value) {
                      final quantity = int.tryParse(value) ?? 0;
                      context.read<AddInventoryBloc>().add(AddInventoryEvent.updateQuantity(quantity));
                    },
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: AppTextField(
                    label: 'Available',
                    keyboardType: TextInputType.number,
                    controller: TextEditingController(
                      text: state.item.available.toString(),
                    )..selection = TextSelection.fromPosition(
                        TextPosition(
                          offset: state.item.available.toString().length,
                        ),
                      ),
                    onChanged: (value) {
                      final available = int.tryParse(value) ?? 0;
                      context.read<AddInventoryBloc>().add(AddInventoryEvent.updateAvailable(available));
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            AppTextField(
              label: 'Rent',
              keyboardType: TextInputType.number,
              controller: TextEditingController(
                text: state.item.rent.toString(),
              )..selection = TextSelection.fromPosition(
                  TextPosition(
                    offset: state.item.rent.toString().length,
                  ),
                ),
              onChanged: (value) {
                final rent = double.tryParse(value) ?? 0.0;
                context.read<AddInventoryBloc>().add(AddInventoryEvent.updateRent(rent));
              },
            ),
            const SizedBox(height: 32),
            AppButton(
              text: 'Add Item',
              onPressed: () {
                context.read<AddInventoryBloc>().add(const AddInventoryEvent.createItem());
              },
            ).expandedWidth,
          ],
        ),
      ),
    );
  }
}
