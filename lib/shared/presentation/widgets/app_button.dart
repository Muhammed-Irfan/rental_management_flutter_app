import 'package:flutter/material.dart';
import 'package:rentease/core/theme/app_colors.dart';
import 'package:rentease/core/theme/app_text_styles.dart';
import 'package:rentease/core/utils/extensions.dart';

class AppButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final bool isLoading;
  final bool isDisabled;

  const AppButton({
    required this.text,
    required this.onPressed,
    super.key,
    this.isLoading = false,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isDisabled || isLoading ? null : onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(
          Theme.of(context).primaryColor.withOpacity(isDisabled ? 0.7 : 1),
        ),
        padding: const WidgetStatePropertyAll(
          EdgeInsets.symmetric(vertical: 16),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: 12.0.borderRadius,
          ),
        ),
        elevation: const WidgetStatePropertyAll(8),
      ),
      child: isLoading
          ? const SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: AppColors.onPrimary,
              ),
            )
          : Text(text, style: AppTextStyles.button),
    );
  }
}
