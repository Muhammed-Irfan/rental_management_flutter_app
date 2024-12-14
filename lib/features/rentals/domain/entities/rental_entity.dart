import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rentease/features/customers/domain/entities/customer_entity.dart';
import 'package:rentease/features/inventory/domain/entities/inventory_item_entity.dart';

part 'rental_entity.freezed.dart';

@freezed
class PaymentRecord with _$PaymentRecord {
  const factory PaymentRecord({
    required DateTime date,
    required double amount,
    required PaymentType type,
  }) = _PaymentRecord;
}

enum PaymentType {
  advance,
  partial,
  full
}

@freezed
class RentalEntity with _$RentalEntity {
  const factory RentalEntity({
    required String id,
    required CustomerEntity customer,
    required List<InventoryItemEntity> items,
    required DateTime rentedAt,
    @Default(0.0) double advanceAmount,
    @Default(0.0) double partialPaymentAmount,
    @Default([]) List<PaymentRecord> paymentHistory,
    DateTime? returnedAt,
    @Default(0.0) double totalAmount,
    @Default(RentalStatus.active) RentalStatus status,
  }) = _RentalEntity;

  factory RentalEntity.empty() => RentalEntity(
        id: '',
        customer: CustomerEntity.empty(),
        items: [],
        rentedAt: DateTime.now(),
      );

  const RentalEntity._();

  // Add 1 to include the rental day
  int get numberOfDays => (returnedAt ?? DateTime.now()).difference(rentedAt).inDays + 1;

  double calculateTotalAmount() {
    if (status != RentalStatus.active) {
      return totalAmount;
    }

    return items.fold(
      0,
      (total, item) => total + (item.rent * item.quantity * numberOfDays),
    );
  }

  double calculatePendingAmount() {
    return calculateTotalAmount() - advanceAmount - partialPaymentAmount;
  }
}

enum RentalStatus {
  all, // Represents all statuses
  active,
  partiallyPaid,
  paid,
}
