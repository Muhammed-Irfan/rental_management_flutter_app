// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_item_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class InventoryItemHiveModelAdapter
    extends TypeAdapter<InventoryItemHiveModel> {
  @override
  final int typeId = 1;

  @override
  InventoryItemHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return InventoryItemHiveModel(
      id: fields[0] as String,
      name: fields[1] as String,
      rent: (fields[2] as num).toDouble(),
      quantity: (fields[3] as num).toInt(),
      available: (fields[4] as num).toInt(),
      description: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, InventoryItemHiveModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.rent)
      ..writeByte(3)
      ..write(obj.quantity)
      ..writeByte(4)
      ..write(obj.available)
      ..writeByte(5)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InventoryItemHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
