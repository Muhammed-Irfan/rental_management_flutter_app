import 'package:flutter/material.dart';
import 'package:rentease/core/theme/theme_imports.dart';
import 'package:rentease/core/utils/extensions.dart';
import 'package:rentease/features/inventory/domain/entities/inventory_item_entity.dart';

class InventoryItem extends StatelessWidget {
  final InventoryItemEntity item;
  final VoidCallback? onTap;

  const InventoryItem({
    required this.item,
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      clipBehavior: Clip.hardEdge,
      color: AppColors.itemCardBackground,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: 20.0.toInsetsAll(),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: AppTextStyles.title.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),
                    RichText(
                      text: TextSpan(
                        style: AppTextStyles.body.copyWith(color: Colors.grey),
                        children: [
                          const TextSpan(text: 'Available: '),
                          TextSpan(
                            text: '${item.available}',
                            style: const TextStyle(fontWeight: FontWeight.bold, color: AppColors.primary),
                          ),
                          const TextSpan(text: ' • Rent: '),
                          TextSpan(
                            text: '₹${item.rent}',
                            style: const TextStyle(fontWeight: FontWeight.bold, color: AppColors.primary),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              const Icon(Icons.mode_edit_outline_outlined, size: 30),
            ],
          ),
        ),
      ),
    );
  }
}
