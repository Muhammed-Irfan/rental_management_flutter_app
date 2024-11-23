import 'package:fpdart/fpdart.dart';
import 'package:rental_tracker/core/error/exceptions.dart';

/// Type alias for Either with AppException as the left type
typedef Result<T> = Either<AppException, T>;