import 'package:flutter/material.dart';
import 'package:rentease/core/theme/app_colors.dart';
import 'package:rentease/core/theme/app_text_styles.dart';

class GridCTA extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final IconData icon;

  const GridCTA({
    required this.title,
    required this.onTap,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.background,
      elevation: 8,
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon, color: AppColors.primary, size: 32),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style: AppTextStyles.body.copyWith(color: AppColors.onBackground),
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward,
                    color: AppColors.primary,
                    size: 30,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
