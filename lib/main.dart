import 'package:flutter/material.dart';
import 'package:rentease/app.dart';
import 'package:rentease/core/di/injection.dart';
import 'package:rentease/core/utils/initializer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

  Initializer.instance.init(() {
    runApp(const RentalTracker());
  });
}
