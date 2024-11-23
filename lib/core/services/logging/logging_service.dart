import 'package:injectable/injectable.dart';
import 'package:talker_flutter/talker_flutter.dart';

@singleton
class LoggingService {
  final Talker _talker;

  LoggingService() : _talker = TalkerFlutter.init();

  Talker get talker => _talker;

  void log(String message) => _talker.info(message);
  
  void logError(Object error, [StackTrace? stackTrace]) {
    _talker.error(error, stackTrace);
  }
}
