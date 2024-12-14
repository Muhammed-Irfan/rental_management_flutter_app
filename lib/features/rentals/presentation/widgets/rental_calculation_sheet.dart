import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rentease/core/theme/theme_imports.dart';
import 'package:rentease/core/utils/extensions.dart';
import 'package:rentease/features/rentals/domain/entities/rental_entity.dart';
import 'package:rentease/features/rentals/presentation/widgets/partial_payment_dialog.dart';
import 'package:rentease/features/rentals/presentation/widgets/payment_history.dart';
import 'package:rentease/shared/presentation/widgets/app_button.dart';
import 'package:rentease/shared/presentation/widgets/common_widgets.dart';

class RentalCalculationSheet extends StatelessWidget {
  final RentalEntity rental;
  final VoidCallback? onMarkAsPaid;
  final Function(double)? onPartialPayment;

  const RentalCalculationSheet({
    required this.rental,
    this.onMarkAsPaid,
    this.onPartialPayment,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Rented Date',
                  style: AppTextStyles.body.copyWith(
                    color: AppColors.primary,
                  ),
                ),
                Text(
                  rental.rentedAt.toFormattedString(),
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
                  'Returned Date',
                  style: AppTextStyles.body.copyWith(
                    color: AppColors.primary,
                  ),
                ),
                Text(
                  (rental.returnedAt ?? DateTime.now()).toFormattedString(),
                  style: AppTextStyles.body.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.name,
                            style: AppTextStyles.body,
                          ),
                          RichText(
                            text: TextSpan(
                              style: AppTextStyles.body.copyWith(
                                color: AppColors.secondary,
                              ),
                              children: [
                                TextSpan(text: '${item.quantity} × '),
                                TextSpan(text: '₹${item.rent}'),
                                TextSpan(text: ' × ${rental.numberOfDays} days'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '₹${(item.quantity * item.rent * rental.numberOfDays).toStringAsFixed(2)}',
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
                  '₹${rental.calculateTotalAmount().toStringAsFixed(2)}',
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
                  '-₹${rental.advanceAmount.toStringAsFixed(2)}',
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
                  'Partial Payment',
                  style: AppTextStyles.body.copyWith(
                    color: AppColors.primary,
                  ),
                ),
                Text(
                  '-₹${rental.partialPaymentAmount.toStringAsFixed(2)}',
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
                  '₹${rental.calculatePendingAmount().toStringAsFixed(2)}',
                  style: AppTextStyles.body.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.error,
                  ),
                ),
              ],
            ),
            if (rental.paymentHistory.isNotEmpty) ...[
              const Divider(height: 32),
              Text(
                'Payment History',
                style: AppTextStyles.body.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              PaymentHistoryList(payments: rental.paymentHistory),
            ],
            if (rental.status != RentalStatus.paid) ...[
              const SizedBox(height: 32),
              AppButton(
                text: 'Partial Payment',
                onPressed: () => _showPartialPaymentDialog(context),
              ).expandedWidth,
              const SizedBox(height: 16),
              AppButton(
                text: 'Mark as Paid',
                onPressed: onMarkAsPaid ?? () => context.pop(),
              ).expandedWidth,
            ],
          ],
        ),
      ),
    );
  }

  void _showPartialPaymentDialog(BuildContext context) {
    final pendingAmount = rental.calculatePendingAmount();

    showDialog(
      context: context,
      builder: (context) => PartialPaymentDialog(
        pendingAmount: pendingAmount,
        onPaymentRecorded: onPartialPayment ?? (_) => context.pop(),
      ),
    );
  }
}
