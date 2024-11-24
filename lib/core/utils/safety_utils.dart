import 'package:fpdart/fpdart.dart';
import 'package:rentease/core/error/exceptions.dart';
import 'package:rentease/core/types/result.dart';

Future<Result<T>> executeSafely<T>(
  Future<T> Function() action, {
  void Function()? finallyAction,
}) async {
  try {
    final result = await action();
    return Right(result);
  } catch (e, s) {
    return Left(AppException.fromException(e, stackTrace: s));
  } finally {
    finallyAction?.call();
  }
}

Future<Result<R>> executeSafelyWithMapping<T, R>(
  Future<T> Function() action,
  R Function(T) mapper,
) async {
  try {
    final result = await action();
    return Right(mapper(result));
  } catch (e, s) {
    return Left(AppException.fromException(e, stackTrace: s));
  }
}
