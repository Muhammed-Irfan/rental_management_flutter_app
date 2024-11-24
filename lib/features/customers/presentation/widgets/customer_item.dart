import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rentease/core/theme/theme_imports.dart';
import 'package:rentease/core/utils/extensions.dart';

class CustomerItem extends StatelessWidget {
  final String name;
  final String subtitle;
  final VoidCallback? onTap;

  const CustomerItem({
    required this.name,
    required this.subtitle,
    this.onTap,
    super.key,
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
              CircleAvatar(
                backgroundColor: AppColors.profileColors[Random().nextInt(AppColors.profileColors.length)],
                radius: 24,
                child: Text(
                  name.substring(0, 2).toUpperCase(),
                  style: AppTextStyles.button,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  name,
                  style: AppTextStyles.title,
                ),
              ),
              const SizedBox(width: 16),
              const Icon(Icons.chevron_right_rounded, size: 30),
            ],
          ),
        ),
      ),
    );
  }
}
