import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:rentease/core/services/storage/database_service.dart';

abstract class BaseLocalDataSource<T> {
  final DatabaseService _databaseService;
  final String boxName;
  Box<T>? _box;

  BaseLocalDataSource(this._databaseService, this.boxName);

  Future<Box<T>> getBox() async {
    if (_box == null || !_box!.isOpen) {
      _box = await _databaseService.openBox<T>(boxName);
    }
    return _box!;
  }

  @disposeMethod
  Future<void> dispose() async {
    if (_box != null && _box!.isOpen) {
      await _box!.close();
      _box = null;
    }
  }
} 
