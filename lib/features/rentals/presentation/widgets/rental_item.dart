import 'package:flutter/material.dart';
import 'package:rentease/core/theme/theme_imports.dart';
import 'package:rentease/core/utils/extensions.dart';
import 'package:rentease/features/rentals/domain/entities/rental_entity.dart';

class RentalItem extends StatelessWidget {
  final RentalEntity rental;
  final VoidCallback? onTap;

  const RentalItem({
    required this.rental,
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
          padding: 16.0.toInsetsAll(),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      rental.customer.name,
                      style: AppTextStyles.title,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Rented on: ${rental.rentedAt.toString().split(' ')[0]}',
                      style: AppTextStyles.body.copyWith(
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 4),
                    ...rental.items.map(
                      (item) => Text('${item.name}:${item.quantity}').padding(bottom: 4),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              _buildStatusIndicator(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatusIndicator() {
    final (color, label) = switch (rental.status) {
      RentalStatus.active => (AppColors.tealGreen, 'Active'),
      RentalStatus.paid => (AppColors.royalBlue, 'Completed'),
    };

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        label,
        style: AppTextStyles.body.copyWith(
          fontWeight: FontWeight.bold,
          color: AppColors.onPrimary,
        ),
      ),
    );
  }
}
