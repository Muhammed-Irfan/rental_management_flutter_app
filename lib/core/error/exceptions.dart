/// Base class for custom application exceptions.
class AppException implements Exception {
  final String message; // Message associated with the exception
  final String? prefix; // Prefix for the exception
  final StackTrace? stackTrace;

  /// Constructor for creating an [AppException] instance.
  ///
  /// The [message] parameter represents the message associated with the exception,
  /// and the [prefix] parameter represents the prefix for the exception.
  AppException({String? message, this.prefix, this.stackTrace}) : message = message ?? 'Something went wrong.';

  factory AppException.fromException(Object e, {String? prefix, StackTrace? stackTrace}) {
    if (e is AppException) {
      return e;
    }
    return AppException(message: e.toString(), prefix: prefix, stackTrace: stackTrace);
  }

  @override
  String toString() {
    return '$prefix$message'; // Returns the formatted error message
  }
}

class NotFoundException extends AppException {
  NotFoundException([String? message, stackTrace])
      : super(
          message: message,
          prefix: 'Not Found: ',
          stackTrace: stackTrace,
        );
}


class JSONParsingException extends AppException {
  JSONParsingException([String? message, stackTrace])
      : super(
          message: message ?? 'Failed to parse JSON response',
          prefix: 'JSON Parsing Error: ',
          stackTrace: stackTrace,
        );
}
