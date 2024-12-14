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
                    RichText(
                      text: TextSpan(
                        style: AppTextStyles.body.copyWith(color: Colors.grey),
                        children: [
                          const TextSpan(text: 'Rented On: '),
                          TextSpan(
                            text: rental.rentedAt.toFormattedString(),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 4),
                    if (rental.status == RentalStatus.partiallyPaid) ...[
                      const SizedBox(height: 4),
                      Text(
                        'Pending Amount: ₹${rental.calculatePendingAmount().toStringAsFixed(2)}',
                        style: AppTextStyles.body.copyWith(
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  _buildStatusIndicator(),
                  const SizedBox(height: 8),
                  Text(
                    '₹${rental.calculateTotalAmount().toStringAsFixed(2)}',
                    style: AppTextStyles.body.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatusIndicator() {
    final (color, label) = switch (rental.status) {
      RentalStatus.active => (AppColors.tealGreen, 'Active'),
      RentalStatus.partiallyPaid => (AppColors.amber, 'Partially Paid'),
      RentalStatus.paid => (AppColors.royalBlue, 'Paid'),
      RentalStatus.all => (AppColors.primary, 'All'),
    };

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        label,
        style: AppTextStyles.caption.copyWith(
          fontWeight: FontWeight.bold,
          color: AppColors.onPrimary,
        ),
      ),
    );
  }
}
