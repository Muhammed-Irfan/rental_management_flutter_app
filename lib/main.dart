import 'package:flutter/material.dart';
import 'package:rental_tracker/app.dart';
import 'package:rental_tracker/core/di/injection.dart';
import 'package:rental_tracker/core/utils/initializer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

  Initializer.instance.init(() {
    runApp(const RentalTracker());
  });
}
