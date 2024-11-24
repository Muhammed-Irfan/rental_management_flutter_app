import 'package:injectable/injectable.dart';
import 'package:rentease/core/services/storage/storage_service_provider.dart';

@injectable
class StorageService {
  final StorageServiceProvider _provider;

  StorageService(this._provider);

  Future<void> saveString(String key, String value) =>
      _provider.saveString(key, value);

  String? getString(String key) => _provider.getString(key);

  Future<void> remove(String key) => _provider.remove(key);

  Future<void> clear() => _provider.clear();
}
