import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rental_tracker/core/di/injection.dart';
import 'package:rental_tracker/core/presentation/widgets/base_view.dart';
import 'package:rental_tracker/features/dashboard/presentation/bloc/dashboard_bloc.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<DashboardBloc>()..add(const DashboardEvent.fetchData()),
      child: const DashboardView(),
    );
  }
}

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Some Feature'),
      ),
      body: BaseView<DashboardBloc, DashboardState>(
        onLoaded: (state) => const SizedBox(),
      ),
    );
  }
}
