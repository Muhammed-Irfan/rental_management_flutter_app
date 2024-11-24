import 'package:flutter/material.dart';
import 'package:rentease/core/theme/theme_imports.dart';
import 'package:rentease/core/utils/extensions.dart';
import 'package:rentease/features/rentals/domain/entities/rental_entity.dart';
import 'package:rentease/shared/presentation/widgets/common_widgets.dart';

class RentalCalculationSheet extends StatelessWidget {
  final RentalEntity rental;
  final VoidCallback? onMarkAsPaid;

  const RentalCalculationSheet({
    required this.rental,
    this.onMarkAsPaid,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Rental Summary',
            style: AppTextStyles.title.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Items',
            style: AppTextStyles.body.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          ...rental.items.map(
            (item) => Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      item.name,
                      style: AppTextStyles.body,
                    ),
                  ),
                  Text(
                    '${item.quantity} × ₹${item.rent}',
                    style: AppTextStyles.body.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    '₹${(item.quantity * item.rent).toStringAsFixed(2)}',
                    style: AppTextStyles.body.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Divider(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Amount',
                style: AppTextStyles.body.copyWith(
                  color: AppColors.primary,
                ),
              ),
              Text(
                '₹${rental.totalAmount.toStringAsFixed(2)}',
                style: AppTextStyles.title.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Advance Paid',
                style: AppTextStyles.body.copyWith(
                  color: AppColors.primary,
                ),
              ),
              Text(
                '₹${rental.advanceAmount.toStringAsFixed(2)}',
                style: AppTextStyles.body.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Balance',
                style: AppTextStyles.body.copyWith(
                  color: AppColors.primary,
                ),
              ),
              Text(
                '₹${(rental.totalAmount - rental.advanceAmount).toStringAsFixed(2)}',
                style: AppTextStyles.body.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.error,
                ),
              ),
            ],
          ),
          const SizedBox(height: 32),
          AppButton(
            text: 'Mark as Paid',
            onPressed: onMarkAsPaid ?? () => Navigator.pop(context),
          ).expandedWidth,
        ],
      ),
    );
  }
}
