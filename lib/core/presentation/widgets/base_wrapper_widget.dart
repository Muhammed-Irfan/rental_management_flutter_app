import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rentease/core/di/injection.dart';
import 'package:rentease/core/router/route_names.dart';
import 'package:rentease/core/services/logging/logging_service.dart';

class BaseWrapperWidget extends StatelessWidget {
  final Widget child;

  const BaseWrapperWidget({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: child),
        //Can add force update screen here

        Positioned(
          right: 0,
          top: 0,
          bottom: 0,
          child: Center(
            child: FloatingActionButton(
              elevation: 0,
              onPressed: () => context.pushNamed(
                RouteNames.logs,
                extra: getIt<LoggingService>().talker,
              ),
              backgroundColor: Colors.transparent,
              child:
                  Icon(Icons.logo_dev, color: Colors.black.withOpacity(0.05)),
            ),
          ),
        ),
      ],
    );
  }
}
