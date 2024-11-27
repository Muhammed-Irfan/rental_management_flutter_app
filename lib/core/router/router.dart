import 'package:go_router/go_router.dart';
import 'package:rentease/core/di/injection.dart';
import 'package:rentease/core/presentation/widgets/base_wrapper_widget.dart';
import 'package:rentease/core/router/route_names.dart';
import 'package:rentease/core/router/route_paths.dart';
import 'package:rentease/core/services/logging/logging_service.dart';
import 'package:rentease/features/customers/presentation/pages/add_customer_page.dart';
import 'package:rentease/features/customers/presentation/pages/customer_details_page.dart';
import 'package:rentease/features/customers/presentation/pages/customers_page.dart';
import 'package:rentease/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:rentease/features/inventory/presentation/pages/add_inventory_page.dart';
import 'package:rentease/features/inventory/presentation/pages/inventory_page.dart';
import 'package:rentease/features/rentals/presentation/pages/add_rental_page.dart';
import 'package:rentease/features/rentals/presentation/pages/rentals_page.dart';
import 'package:talker_flutter/talker_flutter.dart';

final router = GoRouter(
  initialLocation: RoutePaths.dashboard,
  routes: [
    ShellRoute(
      builder: (context, state, child) => BaseWrapperWidget(child: child),
      routes: [
        GoRoute(
          path: RoutePaths.dashboard,
          name: RouteNames.dashboard,
          builder: (context, state) => const DashboardPage(),
        ),
        GoRoute(
          path: RoutePaths.customers,
          name: RouteNames.customers,
          builder: (context, state) => const CustomersPage(),
          routes: [
            GoRoute(
              path: RoutePaths.addCustomer,
              name: RouteNames.addCustomer,
              builder: (context, state) => const AddCustomerPage(),
            ),
            GoRoute(
              path: RoutePaths.customerDetails,
              name: RouteNames.customerDetails,
              builder: (context, state) => CustomerDetailsPage(
                customerId: state.pathParameters['id']!,
              ),
              routes: [
                GoRoute(
                  path: RoutePaths.editCustomer,
                  name: RouteNames.editCustomer,
                  builder: (context, state) => AddCustomerPage(
                    id: state.pathParameters['id'],
                  ),
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          path: RoutePaths.inventory,
          name: RouteNames.inventory,
          builder: (context, state) => const InventoryPage(),
          routes: [
            GoRoute(
              path: RoutePaths.addInventory,
              name: RouteNames.addInventory,
              builder: (context, state) => const AddInventoryPage(),
            ),
            GoRoute(
              path: RoutePaths.editInventory,
              name: RouteNames.editInventory,
              builder: (context, state) => AddInventoryPage(
                id: state.pathParameters['id'],
              ),
            ),
          ],
        ),
        GoRoute(
          path: RoutePaths.rentalHistory,
          name: RouteNames.rentalHistory,
          builder: (context, state) => const RentalsPage(),
          routes: [
            GoRoute(
              path: RoutePaths.editRental,
              name: RouteNames.editRental,
              builder: (context, state) => AddRentalPage(
                id: state.pathParameters['id'],
              ),
            ),
          ],
        ),
        GoRoute(
          path: RoutePaths.addRental,
          name: RouteNames.addRental,
          builder: (context, state) => const AddRentalPage(),
        ),
      ],
    ),
    GoRoute(
      path: RoutePaths.logs,
      name: RouteNames.logs,
      builder: (context, state) => TalkerScreen(talker: getIt<LoggingService>().talker),
    ),
  ],
  observers: [TalkerRouteObserver(getIt<LoggingService>().talker)],
);
