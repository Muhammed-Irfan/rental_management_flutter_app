import 'package:flutter/material.dart';
import 'package:rentease/core/theme/app_text_styles.dart';
import 'package:rentease/core/utils/extensions.dart';
import 'package:rentease/features/rentals/domain/entities/rental_entity.dart';

class PaymentHistoryList extends StatelessWidget {
  final List<PaymentRecord> payments;

  const PaymentHistoryList({
    required this.payments,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (payments.isEmpty) {
      return const Center(
        child: Text(
          'No payment history',
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      );
    }

    return Column(
      children: [
        for (final payment in payments) ...[
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              '\$${payment.amount.toStringAsFixed(2)}',
              style: AppTextStyles.body.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              payment.date.toFormattedString(),
              style: AppTextStyles.caption,
            ),
            trailing: _buildPaymentType(payment.type),
          ),
          if (payment != payments.last) const Divider(),
        ],
      ],
    );
  }

  Widget _buildPaymentType(PaymentType type) {
    final (color, label) = switch (type) {
      PaymentType.advance => (Colors.blue, 'Advance'),
      PaymentType.partial => (Colors.orange, 'Partial'),
      PaymentType.full => (Colors.green, 'Full'),
    };

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        label,
        style: TextStyle(color: color),
      ),
    );
  }
}
