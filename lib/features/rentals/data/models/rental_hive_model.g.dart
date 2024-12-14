// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rental_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PaymentRecordHiveModelAdapter
    extends TypeAdapter<PaymentRecordHiveModel> {
  @override
  final int typeId = 5;

  @override
  PaymentRecordHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PaymentRecordHiveModel(
      date: fields[0] as DateTime,
      amount: (fields[1] as num).toDouble(),
      type: fields[2] as PaymentType,
    );
  }

  @override
  void write(BinaryWriter writer, PaymentRecordHiveModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.date)
      ..writeByte(1)
      ..write(obj.amount)
      ..writeByte(2)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaymentRecordHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class RentalHiveModelAdapter extends TypeAdapter<RentalHiveModel> {
  @override
  final int typeId = 3;

  @override
  RentalHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RentalHiveModel(
      id: fields[0] as String,
      customer: fields[1] as CustomerHiveModel,
      items: (fields[2] as List).cast<InventoryItemHiveModel>(),
      rentedAt: fields[3] as DateTime,
      advanceAmount: fields[4] == null ? 0.0 : (fields[4] as num).toDouble(),
      returnedAt: fields[5] as DateTime?,
      totalAmount: fields[6] == null ? 0.0 : (fields[6] as num).toDouble(),
      status:
          fields[7] == null ? RentalStatus.active : fields[7] as RentalStatus,
      partialPaymentAmount:
          fields[8] == null ? 0.0 : (fields[8] as num).toDouble(),
      paymentHistory: fields[9] == null
          ? const []
          : (fields[9] as List).cast<PaymentRecordHiveModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, RentalHiveModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.customer)
      ..writeByte(2)
      ..write(obj.items)
      ..writeByte(3)
      ..write(obj.rentedAt)
      ..writeByte(4)
      ..write(obj.advanceAmount)
      ..writeByte(5)
      ..write(obj.returnedAt)
      ..writeByte(6)
      ..write(obj.totalAmount)
      ..writeByte(7)
      ..write(obj.status)
      ..writeByte(8)
      ..write(obj.partialPaymentAmount)
      ..writeByte(9)
      ..write(obj.paymentHistory);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RentalHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
