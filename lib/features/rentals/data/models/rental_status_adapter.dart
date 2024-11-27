import 'package:hive_ce/hive.dart';
import 'package:rentease/features/rentals/domain/entities/rental_entity.dart';

class RentalStatusAdapter extends TypeAdapter<RentalStatus> {
  @override
  final int typeId = 4;

  @override
  RentalStatus read(BinaryReader reader) {
    return RentalStatus.values[reader.readByte()];
  }

  @override
  void write(BinaryWriter writer, RentalStatus obj) {
    writer.writeByte(obj.index);
  }
}
