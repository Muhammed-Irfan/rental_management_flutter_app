import 'package:flutter/material.dart';
import 'package:rentease/core/router/router.dart';
import 'package:rentease/core/theme/app_strings.dart';
import 'package:rentease/core/theme/app_theme.dart';

class RentalTracker extends StatelessWidget {
  const RentalTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: AppStrings.appName,
      routerConfig: router,
      theme: AppTheme.theme,
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return MediaQuery.withNoTextScaling(
          child: child ?? const SizedBox.shrink(),
        );
      },
    );
  }
}
