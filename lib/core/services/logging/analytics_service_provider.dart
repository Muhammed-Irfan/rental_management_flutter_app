import 'package:rentease/core/constants/analytics_events.dart';

abstract class AnalyticsServiceProvider {
  void track(AnalyticsEvents eventName, {Map<String, dynamic>? properties});
  void identify(String userId);
}
