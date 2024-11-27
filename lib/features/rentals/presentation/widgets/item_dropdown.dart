import 'package:flutter/material.dart';
import 'package:rentease/features/inventory/domain/entities/inventory_item_entity.dart';

import 'package:rentease/shared/presentation/widgets/common_widgets.dart';

class ItemDropdown extends StatefulWidget {
  final List<InventoryItemEntity> items;
  final Function(InventoryItemEntity) onItemSelected;

  const ItemDropdown({
    required this.items,
    required this.onItemSelected,
    super.key,
  });

  @override
  State<ItemDropdown> createState() => _ItemDropdownState();
}

class _ItemDropdownState extends State<ItemDropdown> {
  int _dropdownKey = 0;

  @override
  Widget build(BuildContext context) {
    return AppDropdown<InventoryItemEntity>(
      key: ValueKey(_dropdownKey),
      label: 'Select Item',
      hint: 'Choose an item to rent',
      items: widget.items,
      itemLabel: (item) => '${item.name} (\$${item.rent})',
      onChanged: (item) {
        if (item != null) {
          setState(() {
            _dropdownKey++; // Increment key to force rebuild
          });
          widget.onItemSelected(item);
        }
      },
    );
  }
}
