import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rentease/core/di/injection.dart';
import 'package:rentease/core/presentation/widgets/base_view.dart';
import 'package:rentease/core/router/route_names.dart';
import 'package:rentease/core/utils/extensions.dart';
import 'package:rentease/features/inventory/presentation/bloc/inventory_bloc.dart';
import 'package:rentease/features/inventory/presentation/widgets/inventory_item.dart';
import 'package:rentease/shared/presentation/widgets/common_widgets.dart';

class InventoryPage extends StatelessWidget {
  const InventoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<InventoryBloc>()..add(const InventoryEvent.loadInventory()),
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
        initialWidget: _buildContent(context, const InventoryState(items: [])),
        onLoaded: (state) => _buildContent(context, state),
      ),
    );
  }

  Widget _buildContent(BuildContext context, InventoryState state) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<InventoryBloc>().add(const InventoryEvent.loadInventory());
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 16, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppButton(
              text: 'Add New Item',
              onPressed: () {
                context.pushNamed(RouteNames.addInventory);
              },
            ).expandedWidth,
            const SizedBox(height: 24),
            Expanded(child: _buildInventoryList(state)),
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
      physics: const NeverScrollableScrollPhysics(),
      itemCount: state.items.length,
      itemBuilder: (context, index) {
        final item = state.items[index];
        return InventoryItem(
          item: item,
          onTap: () => context.pushNamed(
            RouteNames.editInventory,
            pathParameters: {'id': item.id},
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(height: 16),
    );
  }
}
