// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomerDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String customerId) loadCustomerDetails,
    required TResult Function(RentalStatus status) filterByStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String customerId)? loadCustomerDetails,
    TResult? Function(RentalStatus status)? filterByStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String customerId)? loadCustomerDetails,
    TResult Function(RentalStatus status)? filterByStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCustomerDetails value) loadCustomerDetails,
    required TResult Function(_FilterByStatus value) filterByStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCustomerDetails value)? loadCustomerDetails,
    TResult? Function(_FilterByStatus value)? filterByStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCustomerDetails value)? loadCustomerDetails,
    TResult Function(_FilterByStatus value)? filterByStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerDetailsEventCopyWith<$Res> {
  factory $CustomerDetailsEventCopyWith(CustomerDetailsEvent value,
          $Res Function(CustomerDetailsEvent) then) =
      _$CustomerDetailsEventCopyWithImpl<$Res, CustomerDetailsEvent>;
}

/// @nodoc
class _$CustomerDetailsEventCopyWithImpl<$Res,
        $Val extends CustomerDetailsEvent>
    implements $CustomerDetailsEventCopyWith<$Res> {
  _$CustomerDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadCustomerDetailsImplCopyWith<$Res> {
  factory _$$LoadCustomerDetailsImplCopyWith(_$LoadCustomerDetailsImpl value,
          $Res Function(_$LoadCustomerDetailsImpl) then) =
      __$$LoadCustomerDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String customerId});
}

/// @nodoc
class __$$LoadCustomerDetailsImplCopyWithImpl<$Res>
    extends _$CustomerDetailsEventCopyWithImpl<$Res, _$LoadCustomerDetailsImpl>
    implements _$$LoadCustomerDetailsImplCopyWith<$Res> {
  __$$LoadCustomerDetailsImplCopyWithImpl(_$LoadCustomerDetailsImpl _value,
      $Res Function(_$LoadCustomerDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
  }) {
    return _then(_$LoadCustomerDetailsImpl(
      null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadCustomerDetailsImpl implements _LoadCustomerDetails {
  const _$LoadCustomerDetailsImpl(this.customerId);

  @override
  final String customerId;

  @override
  String toString() {
    return 'CustomerDetailsEvent.loadCustomerDetails(customerId: $customerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadCustomerDetailsImpl &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customerId);

  /// Create a copy of CustomerDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadCustomerDetailsImplCopyWith<_$LoadCustomerDetailsImpl> get copyWith =>
      __$$LoadCustomerDetailsImplCopyWithImpl<_$LoadCustomerDetailsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String customerId) loadCustomerDetails,
    required TResult Function(RentalStatus status) filterByStatus,
  }) {
    return loadCustomerDetails(customerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String customerId)? loadCustomerDetails,
    TResult? Function(RentalStatus status)? filterByStatus,
  }) {
    return loadCustomerDetails?.call(customerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String customerId)? loadCustomerDetails,
    TResult Function(RentalStatus status)? filterByStatus,
    required TResult orElse(),
  }) {
    if (loadCustomerDetails != null) {
      return loadCustomerDetails(customerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCustomerDetails value) loadCustomerDetails,
    required TResult Function(_FilterByStatus value) filterByStatus,
  }) {
    return loadCustomerDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCustomerDetails value)? loadCustomerDetails,
    TResult? Function(_FilterByStatus value)? filterByStatus,
  }) {
    return loadCustomerDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCustomerDetails value)? loadCustomerDetails,
    TResult Function(_FilterByStatus value)? filterByStatus,
    required TResult orElse(),
  }) {
    if (loadCustomerDetails != null) {
      return loadCustomerDetails(this);
    }
    return orElse();
  }
}

abstract class _LoadCustomerDetails implements CustomerDetailsEvent {
  const factory _LoadCustomerDetails(final String customerId) =
      _$LoadCustomerDetailsImpl;

  String get customerId;

  /// Create a copy of CustomerDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadCustomerDetailsImplCopyWith<_$LoadCustomerDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterByStatusImplCopyWith<$Res> {
  factory _$$FilterByStatusImplCopyWith(_$FilterByStatusImpl value,
          $Res Function(_$FilterByStatusImpl) then) =
      __$$FilterByStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RentalStatus status});
}

/// @nodoc
class __$$FilterByStatusImplCopyWithImpl<$Res>
    extends _$CustomerDetailsEventCopyWithImpl<$Res, _$FilterByStatusImpl>
    implements _$$FilterByStatusImplCopyWith<$Res> {
  __$$FilterByStatusImplCopyWithImpl(
      _$FilterByStatusImpl _value, $Res Function(_$FilterByStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$FilterByStatusImpl(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RentalStatus,
    ));
  }
}

/// @nodoc

class _$FilterByStatusImpl implements _FilterByStatus {
  const _$FilterByStatusImpl(this.status);

  @override
  final RentalStatus status;

  @override
  String toString() {
    return 'CustomerDetailsEvent.filterByStatus(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterByStatusImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of CustomerDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterByStatusImplCopyWith<_$FilterByStatusImpl> get copyWith =>
      __$$FilterByStatusImplCopyWithImpl<_$FilterByStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String customerId) loadCustomerDetails,
    required TResult Function(RentalStatus status) filterByStatus,
  }) {
    return filterByStatus(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String customerId)? loadCustomerDetails,
    TResult? Function(RentalStatus status)? filterByStatus,
  }) {
    return filterByStatus?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String customerId)? loadCustomerDetails,
    TResult Function(RentalStatus status)? filterByStatus,
    required TResult orElse(),
  }) {
    if (filterByStatus != null) {
      return filterByStatus(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCustomerDetails value) loadCustomerDetails,
    required TResult Function(_FilterByStatus value) filterByStatus,
  }) {
    return filterByStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCustomerDetails value)? loadCustomerDetails,
    TResult? Function(_FilterByStatus value)? filterByStatus,
  }) {
    return filterByStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCustomerDetails value)? loadCustomerDetails,
    TResult Function(_FilterByStatus value)? filterByStatus,
    required TResult orElse(),
  }) {
    if (filterByStatus != null) {
      return filterByStatus(this);
    }
    return orElse();
  }
}

abstract class _FilterByStatus implements CustomerDetailsEvent {
  const factory _FilterByStatus(final RentalStatus status) =
      _$FilterByStatusImpl;

  RentalStatus get status;

  /// Create a copy of CustomerDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterByStatusImplCopyWith<_$FilterByStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CustomerDetailsState {
  CustomerEntity get customer => throw _privateConstructorUsedError;
  List<RentalEntity> get rentals => throw _privateConstructorUsedError;
  double get totalPendingAmount => throw _privateConstructorUsedError;
  double get totalCollectedAmount => throw _privateConstructorUsedError;

  /// Create a copy of CustomerDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerDetailsStateCopyWith<CustomerDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerDetailsStateCopyWith<$Res> {
  factory $CustomerDetailsStateCopyWith(CustomerDetailsState value,
          $Res Function(CustomerDetailsState) then) =
      _$CustomerDetailsStateCopyWithImpl<$Res, CustomerDetailsState>;
  @useResult
  $Res call(
      {CustomerEntity customer,
      List<RentalEntity> rentals,
      double totalPendingAmount,
      double totalCollectedAmount});

  $CustomerEntityCopyWith<$Res> get customer;
}

/// @nodoc
class _$CustomerDetailsStateCopyWithImpl<$Res,
        $Val extends CustomerDetailsState>
    implements $CustomerDetailsStateCopyWith<$Res> {
  _$CustomerDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = null,
    Object? rentals = null,
    Object? totalPendingAmount = null,
    Object? totalCollectedAmount = null,
  }) {
    return _then(_value.copyWith(
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as CustomerEntity,
      rentals: null == rentals
          ? _value.rentals
          : rentals // ignore: cast_nullable_to_non_nullable
              as List<RentalEntity>,
      totalPendingAmount: null == totalPendingAmount
          ? _value.totalPendingAmount
          : totalPendingAmount // ignore: cast_nullable_to_non_nullable
              as double,
      totalCollectedAmount: null == totalCollectedAmount
          ? _value.totalCollectedAmount
          : totalCollectedAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  /// Create a copy of CustomerDetailsState
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
abstract class _$$CustomerDetailsStateImplCopyWith<$Res>
    implements $CustomerDetailsStateCopyWith<$Res> {
  factory _$$CustomerDetailsStateImplCopyWith(_$CustomerDetailsStateImpl value,
          $Res Function(_$CustomerDetailsStateImpl) then) =
      __$$CustomerDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CustomerEntity customer,
      List<RentalEntity> rentals,
      double totalPendingAmount,
      double totalCollectedAmount});

  @override
  $CustomerEntityCopyWith<$Res> get customer;
}

/// @nodoc
class __$$CustomerDetailsStateImplCopyWithImpl<$Res>
    extends _$CustomerDetailsStateCopyWithImpl<$Res, _$CustomerDetailsStateImpl>
    implements _$$CustomerDetailsStateImplCopyWith<$Res> {
  __$$CustomerDetailsStateImplCopyWithImpl(_$CustomerDetailsStateImpl _value,
      $Res Function(_$CustomerDetailsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = null,
    Object? rentals = null,
    Object? totalPendingAmount = null,
    Object? totalCollectedAmount = null,
  }) {
    return _then(_$CustomerDetailsStateImpl(
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as CustomerEntity,
      rentals: null == rentals
          ? _value._rentals
          : rentals // ignore: cast_nullable_to_non_nullable
              as List<RentalEntity>,
      totalPendingAmount: null == totalPendingAmount
          ? _value.totalPendingAmount
          : totalPendingAmount // ignore: cast_nullable_to_non_nullable
              as double,
      totalCollectedAmount: null == totalCollectedAmount
          ? _value.totalCollectedAmount
          : totalCollectedAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$CustomerDetailsStateImpl implements _CustomerDetailsState {
  const _$CustomerDetailsStateImpl(
      {required this.customer,
      required final List<RentalEntity> rentals,
      required this.totalPendingAmount,
      required this.totalCollectedAmount})
      : _rentals = rentals;

  @override
  final CustomerEntity customer;
  final List<RentalEntity> _rentals;
  @override
  List<RentalEntity> get rentals {
    if (_rentals is EqualUnmodifiableListView) return _rentals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rentals);
  }

  @override
  final double totalPendingAmount;
  @override
  final double totalCollectedAmount;

  @override
  String toString() {
    return 'CustomerDetailsState(customer: $customer, rentals: $rentals, totalPendingAmount: $totalPendingAmount, totalCollectedAmount: $totalCollectedAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerDetailsStateImpl &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            const DeepCollectionEquality().equals(other._rentals, _rentals) &&
            (identical(other.totalPendingAmount, totalPendingAmount) ||
                other.totalPendingAmount == totalPendingAmount) &&
            (identical(other.totalCollectedAmount, totalCollectedAmount) ||
                other.totalCollectedAmount == totalCollectedAmount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      customer,
      const DeepCollectionEquality().hash(_rentals),
      totalPendingAmount,
      totalCollectedAmount);

  /// Create a copy of CustomerDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerDetailsStateImplCopyWith<_$CustomerDetailsStateImpl>
      get copyWith =>
          __$$CustomerDetailsStateImplCopyWithImpl<_$CustomerDetailsStateImpl>(
              this, _$identity);
}

abstract class _CustomerDetailsState implements CustomerDetailsState {
  const factory _CustomerDetailsState(
      {required final CustomerEntity customer,
      required final List<RentalEntity> rentals,
      required final double totalPendingAmount,
      required final double totalCollectedAmount}) = _$CustomerDetailsStateImpl;

  @override
  CustomerEntity get customer;
  @override
  List<RentalEntity> get rentals;
  @override
  double get totalPendingAmount;
  @override
  double get totalCollectedAmount;

  /// Create a copy of CustomerDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerDetailsStateImplCopyWith<_$CustomerDetailsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
