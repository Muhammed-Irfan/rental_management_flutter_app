import 'package:flutter/material.dart';
import 'package:rentease/core/theme/app_colors.dart';
import 'package:rentease/core/theme/app_text_styles.dart';

class OverviewCard extends StatelessWidget {
  final String title;
  final String value;
  final Color color;
  final IconData icon;
  final VoidCallback onTap;

  const OverviewCard({
    required this.title,
    required this.value,
    required this.color,
    required this.icon,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: 8,
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(icon, color: AppColors.onPrimary, size: 32),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: AppTextStyles.body.copyWith(color: AppColors.onSecondary)),
                  ],
                ),
              ),
              const SizedBox(width: 25),
              Text(value, style: AppTextStyles.heading.copyWith(color: AppColors.onSecondary)),
            ],
          ),
        ),
      ),
    );
  }
}
