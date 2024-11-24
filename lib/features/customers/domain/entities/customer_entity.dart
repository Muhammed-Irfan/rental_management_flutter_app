import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_entity.freezed.dart';

@freezed
class CustomerEntity with _$CustomerEntity {
  const factory CustomerEntity({
    required int id,
    required String name,
    String? phoneNumber,
    String? address,
  }) = _CustomerEntity;

  factory CustomerEntity.empty() => const CustomerEntity(
        id: 0,
        name: 'John Doe',
      );
}
