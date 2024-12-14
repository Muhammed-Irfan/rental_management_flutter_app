// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rental_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentRecord {
  DateTime get date => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  PaymentType get type => throw _privateConstructorUsedError;

  /// Create a copy of PaymentRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentRecordCopyWith<PaymentRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentRecordCopyWith<$Res> {
  factory $PaymentRecordCopyWith(
          PaymentRecord value, $Res Function(PaymentRecord) then) =
      _$PaymentRecordCopyWithImpl<$Res, PaymentRecord>;
  @useResult
  $Res call({DateTime date, double amount, PaymentType type});
}

/// @nodoc
class _$PaymentRecordCopyWithImpl<$Res, $Val extends PaymentRecord>
    implements $PaymentRecordCopyWith<$Res> {
  _$PaymentRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? amount = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PaymentType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentRecordImplCopyWith<$Res>
    implements $PaymentRecordCopyWith<$Res> {
  factory _$$PaymentRecordImplCopyWith(
          _$PaymentRecordImpl value, $Res Function(_$PaymentRecordImpl) then) =
      __$$PaymentRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, double amount, PaymentType type});
}

/// @nodoc
class __$$PaymentRecordImplCopyWithImpl<$Res>
    extends _$PaymentRecordCopyWithImpl<$Res, _$PaymentRecordImpl>
    implements _$$PaymentRecordImplCopyWith<$Res> {
  __$$PaymentRecordImplCopyWithImpl(
      _$PaymentRecordImpl _value, $Res Function(_$PaymentRecordImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? amount = null,
    Object? type = null,
  }) {
    return _then(_$PaymentRecordImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PaymentType,
    ));
  }
}

/// @nodoc

class _$PaymentRecordImpl implements _PaymentRecord {
  const _$PaymentRecordImpl(
      {required this.date, required this.amount, required this.type});

  @override
  final DateTime date;
  @override
  final double amount;
  @override
  final PaymentType type;

  @override
  String toString() {
    return 'PaymentRecord(date: $date, amount: $amount, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentRecordImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, amount, type);

  /// Create a copy of PaymentRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentRecordImplCopyWith<_$PaymentRecordImpl> get copyWith =>
      __$$PaymentRecordImplCopyWithImpl<_$PaymentRecordImpl>(this, _$identity);
}

abstract class _PaymentRecord implements PaymentRecord {
  const factory _PaymentRecord(
      {required final DateTime date,
      required final double amount,
      required final PaymentType type}) = _$PaymentRecordImpl;

  @override
  DateTime get date;
  @override
  double get amount;
  @override
  PaymentType get type;

  /// Create a copy of PaymentRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentRecordImplCopyWith<_$PaymentRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RentalEntity {
  String get id => throw _privateConstructorUsedError;
  CustomerEntity get customer => throw _privateConstructorUsedError;
  List<InventoryItemEntity> get items => throw _privateConstructorUsedError;
  DateTime get rentedAt => throw _privateConstructorUsedError;
  double get advanceAmount => throw _privateConstructorUsedError;
  double get partialPaymentAmount => throw _privateConstructorUsedError;
  List<PaymentRecord> get paymentHistory => throw _privateConstructorUsedError;
  DateTime? get returnedAt => throw _privateConstructorUsedError;
  double get totalAmount => throw _privateConstructorUsedError;
  RentalStatus get status => throw _privateConstructorUsedError;

  /// Create a copy of RentalEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RentalEntityCopyWith<RentalEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RentalEntityCopyWith<$Res> {
  factory $RentalEntityCopyWith(
          RentalEntity value, $Res Function(RentalEntity) then) =
      _$RentalEntityCopyWithImpl<$Res, RentalEntity>;
  @useResult
  $Res call(
      {String id,
      CustomerEntity customer,
      List<InventoryItemEntity> items,
      DateTime rentedAt,
      double advanceAmount,
      double partialPaymentAmount,
      List<PaymentRecord> paymentHistory,
      DateTime? returnedAt,
      double totalAmount,
      RentalStatus status});

  $CustomerEntityCopyWith<$Res> get customer;
}

/// @nodoc
class _$RentalEntityCopyWithImpl<$Res, $Val extends RentalEntity>
    implements $RentalEntityCopyWith<$Res> {
  _$RentalEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RentalEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customer = null,
    Object? items = null,
    Object? rentedAt = null,
    Object? advanceAmount = null,
    Object? partialPaymentAmount = null,
    Object? paymentHistory = null,
    Object? returnedAt = freezed,
    Object? totalAmount = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as CustomerEntity,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<InventoryItemEntity>,
      rentedAt: null == rentedAt
          ? _value.rentedAt
          : rentedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      advanceAmount: null == advanceAmount
          ? _value.advanceAmount
          : advanceAmount // ignore: cast_nullable_to_non_nullable
              as double,
      partialPaymentAmount: null == partialPaymentAmount
          ? _value.partialPaymentAmount
          : partialPaymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentHistory: null == paymentHistory
          ? _value.paymentHistory
          : paymentHistory // ignore: cast_nullable_to_non_nullable
              as List<PaymentRecord>,
      returnedAt: freezed == returnedAt
          ? _value.returnedAt
          : returnedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RentalStatus,
    ) as $Val);
  }

  /// Create a copy of RentalEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerEntityCopyWith<$Res> get customer {
    return $CustomerEntityCopyWith<$Res>(_value.customer, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RentalEntityImplCopyWith<$Res>
    implements $RentalEntityCopyWith<$Res> {
  factory _$$RentalEntityImplCopyWith(
          _$RentalEntityImpl value, $Res Function(_$RentalEntityImpl) then) =
      __$$RentalEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      CustomerEntity customer,
      List<InventoryItemEntity> items,
      DateTime rentedAt,
      double advanceAmount,
      double partialPaymentAmount,
      List<PaymentRecord> paymentHistory,
      DateTime? returnedAt,
      double totalAmount,
      RentalStatus status});

  @override
  $CustomerEntityCopyWith<$Res> get customer;
}

/// @nodoc
class __$$RentalEntityImplCopyWithImpl<$Res>
    extends _$RentalEntityCopyWithImpl<$Res, _$RentalEntityImpl>
    implements _$$RentalEntityImplCopyWith<$Res> {
  __$$RentalEntityImplCopyWithImpl(
      _$RentalEntityImpl _value, $Res Function(_$RentalEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of RentalEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customer = null,
    Object? items = null,
    Object? rentedAt = null,
    Object? advanceAmount = null,
    Object? partialPaymentAmount = null,
    Object? paymentHistory = null,
    Object? returnedAt = freezed,
    Object? totalAmount = null,
    Object? status = null,
  }) {
    return _then(_$RentalEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as CustomerEntity,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<InventoryItemEntity>,
      rentedAt: null == rentedAt
          ? _value.rentedAt
          : rentedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      advanceAmount: null == advanceAmount
          ? _value.advanceAmount
          : advanceAmount // ignore: cast_nullable_to_non_nullable
              as double,
      partialPaymentAmount: null == partialPaymentAmount
          ? _value.partialPaymentAmount
          : partialPaymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentHistory: null == paymentHistory
          ? _value._paymentHistory
          : paymentHistory // ignore: cast_nullable_to_non_nullable
              as List<PaymentRecord>,
      returnedAt: freezed == returnedAt
          ? _value.returnedAt
          : returnedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RentalStatus,
    ));
  }
}

/// @nodoc

class _$RentalEntityImpl extends _RentalEntity {
  const _$RentalEntityImpl(
      {required this.id,
      required this.customer,
      required final List<InventoryItemEntity> items,
      required this.rentedAt,
      this.advanceAmount = 0.0,
      this.partialPaymentAmount = 0.0,
      final List<PaymentRecord> paymentHistory = const [],
      this.returnedAt,
      this.totalAmount = 0.0,
      this.status = RentalStatus.active})
      : _items = items,
        _paymentHistory = paymentHistory,
        super._();

  @override
  final String id;
  @override
  final CustomerEntity customer;
  final List<InventoryItemEntity> _items;
  @override
  List<InventoryItemEntity> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final DateTime rentedAt;
  @override
  @JsonKey()
  final double advanceAmount;
  @override
  @JsonKey()
  final double partialPaymentAmount;
  final List<PaymentRecord> _paymentHistory;
  @override
  @JsonKey()
  List<PaymentRecord> get paymentHistory {
    if (_paymentHistory is EqualUnmodifiableListView) return _paymentHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentHistory);
  }

  @override
  final DateTime? returnedAt;
  @override
  @JsonKey()
  final double totalAmount;
  @override
  @JsonKey()
  final RentalStatus status;

  @override
  String toString() {
    return 'RentalEntity(id: $id, customer: $customer, items: $items, rentedAt: $rentedAt, advanceAmount: $advanceAmount, partialPaymentAmount: $partialPaymentAmount, paymentHistory: $paymentHistory, returnedAt: $returnedAt, totalAmount: $totalAmount, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RentalEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.rentedAt, rentedAt) ||
                other.rentedAt == rentedAt) &&
            (identical(other.advanceAmount, advanceAmount) ||
                other.advanceAmount == advanceAmount) &&
            (identical(other.partialPaymentAmount, partialPaymentAmount) ||
                other.partialPaymentAmount == partialPaymentAmount) &&
            const DeepCollectionEquality()
                .equals(other._paymentHistory, _paymentHistory) &&
            (identical(other.returnedAt, returnedAt) ||
                other.returnedAt == returnedAt) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      customer,
      const DeepCollectionEquality().hash(_items),
      rentedAt,
      advanceAmount,
      partialPaymentAmount,
      const DeepCollectionEquality().hash(_paymentHistory),
      returnedAt,
      totalAmount,
      status);

  /// Create a copy of RentalEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RentalEntityImplCopyWith<_$RentalEntityImpl> get copyWith =>
      __$$RentalEntityImplCopyWithImpl<_$RentalEntityImpl>(this, _$identity);
}

abstract class _RentalEntity extends RentalEntity {
  const factory _RentalEntity(
      {required final String id,
      required final CustomerEntity customer,
      required final List<InventoryItemEntity> items,
      required final DateTime rentedAt,
      final double advanceAmount,
      final double partialPaymentAmount,
      final List<PaymentRecord> paymentHistory,
      final DateTime? returnedAt,
      final double totalAmount,
      final RentalStatus status}) = _$RentalEntityImpl;
  const _RentalEntity._() : super._();

  @override
  String get id;
  @override
  CustomerEntity get customer;
  @override
  List<InventoryItemEntity> get items;
  @override
  DateTime get rentedAt;
  @override
  double get advanceAmount;
  @override
  double get partialPaymentAmount;
  @override
  List<PaymentRecord> get paymentHistory;
  @override
  DateTime? get returnedAt;
  @override
  double get totalAmount;
  @override
  RentalStatus get status;

  /// Create a copy of RentalEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RentalEntityImplCopyWith<_$RentalEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
