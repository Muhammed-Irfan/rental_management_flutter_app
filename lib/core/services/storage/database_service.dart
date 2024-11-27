import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

abstract class DatabaseService {
  Future<void> init();
  Future<Box<T>> openBox<T>(String name);
  Future<void> closeBox<T>(Box<T> box);
  Future<void> deleteBox<T>(String name);
  Future<void> closeAllBoxes();
}

class DatabaseServiceImpl implements DatabaseService {
  final Map<String, Box> _openBoxes = {};

  @override
  Future<void> init() async {
    await Hive.initFlutter();
  }

  @override
  Future<Box<T>> openBox<T>(String name) async {
    if (_openBoxes.containsKey(name)) {
      final existingBox = _openBoxes[name];
      if (existingBox != null) return existingBox as Box<T>;
    }
    final box = await Hive.openBox<T>(name);
    _openBoxes[name] = box;
    return box;
  }

  @override
  Future<void> closeBox<T>(Box<T> box) async {
    if (box.isOpen) {
      await box.close();
      _openBoxes.remove(box.name);
    }
  }

  @override
  Future<void> deleteBox<T>(String name) async {
    if (_openBoxes.containsKey(name)) {
      await closeBox(_openBoxes[name]!);
    }
    await Hive.deleteBoxFromDisk(name);
  }

  @override
  Future<void> closeAllBoxes() async {
    await Future.wait(_openBoxes.values.map((box) => box.close()));
    _openBoxes.clear();
  }

  @disposeMethod
  Future<void> dispose() async {
    await closeAllBoxes();
  }
}
