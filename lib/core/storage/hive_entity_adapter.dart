import 'package:hive_ce/hive.dart';

abstract class HiveEntityAdapter<T> extends TypeAdapter<T> {
  @override
  final int typeId;

  HiveEntityAdapter(this.typeId);
} 
