import 'package:go_router/go_router.dart';
import 'package:rental_tracker/core/di/injection.dart';
import 'package:rental_tracker/core/presentation/widgets/base_wrapper_widget.dart';
import 'package:rental_tracker/core/router/route_names.dart';
import 'package:rental_tracker/core/router/route_paths.dart';
import 'package:rental_tracker/core/services/logging/logging_service.dart';
import 'package:rental_tracker/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:talker_flutter/talker_flutter.dart';

final router = GoRouter(
  initialLocation: RoutePaths.home,
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return BaseWrapperWidget(child: child);
      },
      routes: [
        GoRoute(
          path: RoutePaths.home,
          name: RouteNames.home,
          builder: (context, state) => const DashboardPage(),
          // routes: [
          //   // GoRoute(
          //   //   path: RoutePaths.details,
          //   //   name: RouteNames.details,
          //   //   builder: (context, state) {
          //   //     final id = state.pathParameters['id']!;
          //   //     return PostDetailsPage(postId: id);
          //   //   },
          //   // ),
          // ],
        ),
        GoRoute(
          path: RoutePaths.logs,
          name: RouteNames.logs,
          builder: (context, state) => TalkerScreen(
            talker: state.extra! as Talker,
          ),
        ),
      ],
    ),
  ],
  observers: [TalkerRouteObserver(getIt<LoggingService>().talker)],
);
