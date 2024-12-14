import 'package:hive_ce/hive.dart';
import 'package:rentease/features/rentals/domain/entities/rental_entity.dart';

class PaymentTypeAdapter extends TypeAdapter<PaymentType> {
  @override
  final int typeId = 7;

  @override
  PaymentType read(BinaryReader reader) {
    return PaymentType.values[reader.readByte()];
  }

  @override
  void write(BinaryWriter writer, PaymentType obj) {
    writer.writeByte(obj.index);
  }
} 
