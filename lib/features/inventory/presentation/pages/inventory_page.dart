import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rentease/core/di/injection.dart';
import 'package:rentease/core/presentation/widgets/base_view.dart';
import 'package:rentease/core/router/route_names.dart';
import 'package:rentease/core/utils/extensions.dart';
import 'package:rentease/features/inventory/domain/entities/inventory_item_entity.dart';
import 'package:rentease/features/inventory/presentation/bloc/inventory_bloc.dart';
import 'package:rentease/features/inventory/presentation/widgets/inventory_item.dart';
import 'package:rentease/shared/presentation/widgets/common_widgets.dart';

class InventoryPage extends StatelessWidget {
  const InventoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<InventoryBloc>(),
      child: const InventoryView(),
    );
  }
}

class InventoryView extends StatelessWidget {
  const InventoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inventory'),
      ),
      body: BaseView<InventoryBloc, InventoryState>(
        initialWidget: _buildContent(
          context,
          InventoryState(items: [InventoryItemEntity.empty(), InventoryItemEntity.empty()]),
        ),
        onLoaded: (state) => _buildContent(context, state),
      ),
    );
  }

  Widget _buildContent(BuildContext context, InventoryState state) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppButton(
              text: 'Add Item',
              onPressed: () {
                context.pushNamed(RouteNames.addInventory);
              },
            ).expandedWidth,
            const SizedBox(height: 24),
            _buildInventoryList(state),
          ],
        ),
      ),
    );
  }

  Widget _buildInventoryList(InventoryState state) {
    if (state.items.isEmpty) {
      return const Center(
        child: Text(
          'No items found',
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      );
    }

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: state.items.length,
      itemBuilder: (context, index) {
        final item = state.items[index];
        return InventoryItem(
          item: item,
          onTap: () => context.pushNamed(
            RouteNames.editInventory,
            pathParameters: {'id': item.id.toString()},
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(height: 16),
    );
  }
}
