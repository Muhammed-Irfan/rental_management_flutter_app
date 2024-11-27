import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rentease/core/router/route_names.dart';
import 'package:rentease/core/theme/app_text_styles.dart';
import 'package:rentease/core/utils/extensions.dart';
import 'package:rentease/shared/presentation/widgets/app_button.dart';
import 'package:rentease/shared/presentation/widgets/app_text_field.dart';

class PartialPaymentDialog extends StatefulWidget {
  final double pendingAmount;
  final Function(double) onPaymentRecorded;

  const PartialPaymentDialog({
    required this.pendingAmount,
    required this.onPaymentRecorded,
    super.key,
  });

  @override
  State<PartialPaymentDialog> createState() => _PartialPaymentDialogState();
}

class _PartialPaymentDialogState extends State<PartialPaymentDialog> {
  late final TextEditingController _amountController;

  @override
  void initState() {
    super.initState();
    _amountController = TextEditingController(
      text: widget.pendingAmount.toString(),
    );
  }

  @override
  void dispose() {
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Record Partial\nPayment',
        textAlign: TextAlign.center,
        style: AppTextStyles.heading,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 20),
          AppTextField(
            label: 'Payment Amount',
            controller: _amountController,
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 10),
        ],
      ),
      actions: [
        AppButton(
          text: 'Record Payment',
          onPressed: () {
            final amount = double.tryParse(_amountController.text) ?? 0.0;
            if (amount > 0 && amount <= widget.pendingAmount) {
              widget.onPaymentRecorded(amount);
              context
                ..pop()
                ..goNamed(RouteNames.rentalHistory);
            }
          },
        ).expandedWidth,
        const SizedBox(height: 16),
        TextButton(
          onPressed: () {
            context.pop();
          },
          child: const Text('Cancel'),
        ).expandedWidth,
      ],
    );
  }
}
