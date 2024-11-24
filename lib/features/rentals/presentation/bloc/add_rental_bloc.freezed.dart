// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_rental_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddRentalEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerEntity customer) selectCustomer,
    required TResult Function(InventoryItemEntity item) addItem,
    required TResult Function(int index) removeItem,
    required TResult Function(int index, InventoryItemEntity item) updateItem,
    required TResult Function(double amount) updateAdvanceAmount,
    required TResult Function() createRental,
    required TResult Function() calculateRental,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerEntity customer)? selectCustomer,
    TResult? Function(InventoryItemEntity item)? addItem,
    TResult? Function(int index)? removeItem,
    TResult? Function(int index, InventoryItemEntity item)? updateItem,
    TResult? Function(double amount)? updateAdvanceAmount,
    TResult? Function()? createRental,
    TResult? Function()? calculateRental,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerEntity customer)? selectCustomer,
    TResult Function(InventoryItemEntity item)? addItem,
    TResult Function(int index)? removeItem,
    TResult Function(int index, InventoryItemEntity item)? updateItem,
    TResult Function(double amount)? updateAdvanceAmount,
    TResult Function()? createRental,
    TResult Function()? calculateRental,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectCustomer value) selectCustomer,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_UpdateItem value) updateItem,
    required TResult Function(_UpdateAdvanceAmount value) updateAdvanceAmount,
    required TResult Function(_CreateRental value) createRental,
    required TResult Function(_CalculateRental value) calculateRental,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectCustomer value)? selectCustomer,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_UpdateItem value)? updateItem,
    TResult? Function(_UpdateAdvanceAmount value)? updateAdvanceAmount,
    TResult? Function(_CreateRental value)? createRental,
    TResult? Function(_CalculateRental value)? calculateRental,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectCustomer value)? selectCustomer,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_UpdateItem value)? updateItem,
    TResult Function(_UpdateAdvanceAmount value)? updateAdvanceAmount,
    TResult Function(_CreateRental value)? createRental,
    TResult Function(_CalculateRental value)? calculateRental,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddRentalEventCopyWith<$Res> {
  factory $AddRentalEventCopyWith(
          AddRentalEvent value, $Res Function(AddRentalEvent) then) =
      _$AddRentalEventCopyWithImpl<$Res, AddRentalEvent>;
}

/// @nodoc
class _$AddRentalEventCopyWithImpl<$Res, $Val extends AddRentalEvent>
    implements $AddRentalEventCopyWith<$Res> {
  _$AddRentalEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddRentalEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SelectCustomerImplCopyWith<$Res> {
  factory _$$SelectCustomerImplCopyWith(_$SelectCustomerImpl value,
          $Res Function(_$SelectCustomerImpl) then) =
      __$$SelectCustomerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CustomerEntity customer});

  $CustomerEntityCopyWith<$Res> get customer;
}

/// @nodoc
class __$$SelectCustomerImplCopyWithImpl<$Res>
    extends _$AddRentalEventCopyWithImpl<$Res, _$SelectCustomerImpl>
    implements _$$SelectCustomerImplCopyWith<$Res> {
  __$$SelectCustomerImplCopyWithImpl(
      _$SelectCustomerImpl _value, $Res Function(_$SelectCustomerImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddRentalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = null,
  }) {
    return _then(_$SelectCustomerImpl(
      null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as CustomerEntity,
    ));
  }

  /// Create a copy of AddRentalEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerEntityCopyWith<$Res> get customer {
    return $CustomerEntityCopyWith<$Res>(_value.customer, (value) {
      return _then(_value.copyWith(customer: value));
    });
  }
}

/// @nodoc

class _$SelectCustomerImpl implements _SelectCustomer {
  const _$SelectCustomerImpl(this.customer);

  @override
  final CustomerEntity customer;

  @override
  String toString() {
    return 'AddRentalEvent.selectCustomer(customer: $customer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectCustomerImpl &&
            (identical(other.customer, customer) ||
                other.customer == customer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customer);

  /// Create a copy of AddRentalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectCustomerImplCopyWith<_$SelectCustomerImpl> get copyWith =>
      __$$SelectCustomerImplCopyWithImpl<_$SelectCustomerImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerEntity customer) selectCustomer,
    required TResult Function(InventoryItemEntity item) addItem,
    required TResult Function(int index) removeItem,
    required TResult Function(int index, InventoryItemEntity item) updateItem,
    required TResult Function(double amount) updateAdvanceAmount,
    required TResult Function() createRental,
    required TResult Function() calculateRental,
  }) {
    return selectCustomer(customer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerEntity customer)? selectCustomer,
    TResult? Function(InventoryItemEntity item)? addItem,
    TResult? Function(int index)? removeItem,
    TResult? Function(int index, InventoryItemEntity item)? updateItem,
    TResult? Function(double amount)? updateAdvanceAmount,
    TResult? Function()? createRental,
    TResult? Function()? calculateRental,
  }) {
    return selectCustomer?.call(customer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerEntity customer)? selectCustomer,
    TResult Function(InventoryItemEntity item)? addItem,
    TResult Function(int index)? removeItem,
    TResult Function(int index, InventoryItemEntity item)? updateItem,
    TResult Function(double amount)? updateAdvanceAmount,
    TResult Function()? createRental,
    TResult Function()? calculateRental,
    required TResult orElse(),
  }) {
    if (selectCustomer != null) {
      return selectCustomer(customer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectCustomer value) selectCustomer,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_UpdateItem value) updateItem,
    required TResult Function(_UpdateAdvanceAmount value) updateAdvanceAmount,
    required TResult Function(_CreateRental value) createRental,
    required TResult Function(_CalculateRental value) calculateRental,
  }) {
    return selectCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectCustomer value)? selectCustomer,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_UpdateItem value)? updateItem,
    TResult? Function(_UpdateAdvanceAmount value)? updateAdvanceAmount,
    TResult? Function(_CreateRental value)? createRental,
    TResult? Function(_CalculateRental value)? calculateRental,
  }) {
    return selectCustomer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectCustomer value)? selectCustomer,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_UpdateItem value)? updateItem,
    TResult Function(_UpdateAdvanceAmount value)? updateAdvanceAmount,
    TResult Function(_CreateRental value)? createRental,
    TResult Function(_CalculateRental value)? calculateRental,
    required TResult orElse(),
  }) {
    if (selectCustomer != null) {
      return selectCustomer(this);
    }
    return orElse();
  }
}

abstract class _SelectCustomer implements AddRentalEvent {
  const factory _SelectCustomer(final CustomerEntity customer) =
      _$SelectCustomerImpl;

  CustomerEntity get customer;

  /// Create a copy of AddRentalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectCustomerImplCopyWith<_$SelectCustomerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddItemImplCopyWith<$Res> {
  factory _$$AddItemImplCopyWith(
          _$AddItemImpl value, $Res Function(_$AddItemImpl) then) =
      __$$AddItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InventoryItemEntity item});

  $InventoryItemEntityCopyWith<$Res> get item;
}

/// @nodoc
class __$$AddItemImplCopyWithImpl<$Res>
    extends _$AddRentalEventCopyWithImpl<$Res, _$AddItemImpl>
    implements _$$AddItemImplCopyWith<$Res> {
  __$$AddItemImplCopyWithImpl(
      _$AddItemImpl _value, $Res Function(_$AddItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddRentalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$AddItemImpl(
      null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as InventoryItemEntity,
    ));
  }

  /// Create a copy of AddRentalEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InventoryItemEntityCopyWith<$Res> get item {
    return $InventoryItemEntityCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$AddItemImpl implements _AddItem {
  const _$AddItemImpl(this.item);

  @override
  final InventoryItemEntity item;

  @override
  String toString() {
    return 'AddRentalEvent.addItem(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddItemImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  /// Create a copy of AddRentalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddItemImplCopyWith<_$AddItemImpl> get copyWith =>
      __$$AddItemImplCopyWithImpl<_$AddItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerEntity customer) selectCustomer,
    required TResult Function(InventoryItemEntity item) addItem,
    required TResult Function(int index) removeItem,
    required TResult Function(int index, InventoryItemEntity item) updateItem,
    required TResult Function(double amount) updateAdvanceAmount,
    required TResult Function() createRental,
    required TResult Function() calculateRental,
  }) {
    return addItem(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerEntity customer)? selectCustomer,
    TResult? Function(InventoryItemEntity item)? addItem,
    TResult? Function(int index)? removeItem,
    TResult? Function(int index, InventoryItemEntity item)? updateItem,
    TResult? Function(double amount)? updateAdvanceAmount,
    TResult? Function()? createRental,
    TResult? Function()? calculateRental,
  }) {
    return addItem?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerEntity customer)? selectCustomer,
    TResult Function(InventoryItemEntity item)? addItem,
    TResult Function(int index)? removeItem,
    TResult Function(int index, InventoryItemEntity item)? updateItem,
    TResult Function(double amount)? updateAdvanceAmount,
    TResult Function()? createRental,
    TResult Function()? calculateRental,
    required TResult orElse(),
  }) {
    if (addItem != null) {
      return addItem(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectCustomer value) selectCustomer,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_UpdateItem value) updateItem,
    required TResult Function(_UpdateAdvanceAmount value) updateAdvanceAmount,
    required TResult Function(_CreateRental value) createRental,
    required TResult Function(_CalculateRental value) calculateRental,
  }) {
    return addItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectCustomer value)? selectCustomer,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_UpdateItem value)? updateItem,
    TResult? Function(_UpdateAdvanceAmount value)? updateAdvanceAmount,
    TResult? Function(_CreateRental value)? createRental,
    TResult? Function(_CalculateRental value)? calculateRental,
  }) {
    return addItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectCustomer value)? selectCustomer,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_UpdateItem value)? updateItem,
    TResult Function(_UpdateAdvanceAmount value)? updateAdvanceAmount,
    TResult Function(_CreateRental value)? createRental,
    TResult Function(_CalculateRental value)? calculateRental,
    required TResult orElse(),
  }) {
    if (addItem != null) {
      return addItem(this);
    }
    return orElse();
  }
}

abstract class _AddItem implements AddRentalEvent {
  const factory _AddItem(final InventoryItemEntity item) = _$AddItemImpl;

  InventoryItemEntity get item;

  /// Create a copy of AddRentalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddItemImplCopyWith<_$AddItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveItemImplCopyWith<$Res> {
  factory _$$RemoveItemImplCopyWith(
          _$RemoveItemImpl value, $Res Function(_$RemoveItemImpl) then) =
      __$$RemoveItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$RemoveItemImplCopyWithImpl<$Res>
    extends _$AddRentalEventCopyWithImpl<$Res, _$RemoveItemImpl>
    implements _$$RemoveItemImplCopyWith<$Res> {
  __$$RemoveItemImplCopyWithImpl(
      _$RemoveItemImpl _value, $Res Function(_$RemoveItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddRentalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$RemoveItemImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveItemImpl implements _RemoveItem {
  const _$RemoveItemImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'AddRentalEvent.removeItem(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveItemImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of AddRentalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveItemImplCopyWith<_$RemoveItemImpl> get copyWith =>
      __$$RemoveItemImplCopyWithImpl<_$RemoveItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerEntity customer) selectCustomer,
    required TResult Function(InventoryItemEntity item) addItem,
    required TResult Function(int index) removeItem,
    required TResult Function(int index, InventoryItemEntity item) updateItem,
    required TResult Function(double amount) updateAdvanceAmount,
    required TResult Function() createRental,
    required TResult Function() calculateRental,
  }) {
    return removeItem(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerEntity customer)? selectCustomer,
    TResult? Function(InventoryItemEntity item)? addItem,
    TResult? Function(int index)? removeItem,
    TResult? Function(int index, InventoryItemEntity item)? updateItem,
    TResult? Function(double amount)? updateAdvanceAmount,
    TResult? Function()? createRental,
    TResult? Function()? calculateRental,
  }) {
    return removeItem?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerEntity customer)? selectCustomer,
    TResult Function(InventoryItemEntity item)? addItem,
    TResult Function(int index)? removeItem,
    TResult Function(int index, InventoryItemEntity item)? updateItem,
    TResult Function(double amount)? updateAdvanceAmount,
    TResult Function()? createRental,
    TResult Function()? calculateRental,
    required TResult orElse(),
  }) {
    if (removeItem != null) {
      return removeItem(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectCustomer value) selectCustomer,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_UpdateItem value) updateItem,
    required TResult Function(_UpdateAdvanceAmount value) updateAdvanceAmount,
    required TResult Function(_CreateRental value) createRental,
    required TResult Function(_CalculateRental value) calculateRental,
  }) {
    return removeItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectCustomer value)? selectCustomer,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_UpdateItem value)? updateItem,
    TResult? Function(_UpdateAdvanceAmount value)? updateAdvanceAmount,
    TResult? Function(_CreateRental value)? createRental,
    TResult? Function(_CalculateRental value)? calculateRental,
  }) {
    return removeItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectCustomer value)? selectCustomer,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_UpdateItem value)? updateItem,
    TResult Function(_UpdateAdvanceAmount value)? updateAdvanceAmount,
    TResult Function(_CreateRental value)? createRental,
    TResult Function(_CalculateRental value)? calculateRental,
    required TResult orElse(),
  }) {
    if (removeItem != null) {
      return removeItem(this);
    }
    return orElse();
  }
}

abstract class _RemoveItem implements AddRentalEvent {
  const factory _RemoveItem(final int index) = _$RemoveItemImpl;

  int get index;

  /// Create a copy of AddRentalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveItemImplCopyWith<_$RemoveItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateItemImplCopyWith<$Res> {
  factory _$$UpdateItemImplCopyWith(
          _$UpdateItemImpl value, $Res Function(_$UpdateItemImpl) then) =
      __$$UpdateItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, InventoryItemEntity item});

  $InventoryItemEntityCopyWith<$Res> get item;
}

/// @nodoc
class __$$UpdateItemImplCopyWithImpl<$Res>
    extends _$AddRentalEventCopyWithImpl<$Res, _$UpdateItemImpl>
    implements _$$UpdateItemImplCopyWith<$Res> {
  __$$UpdateItemImplCopyWithImpl(
      _$UpdateItemImpl _value, $Res Function(_$UpdateItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddRentalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? item = null,
  }) {
    return _then(_$UpdateItemImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as InventoryItemEntity,
    ));
  }

  /// Create a copy of AddRentalEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InventoryItemEntityCopyWith<$Res> get item {
    return $InventoryItemEntityCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$UpdateItemImpl implements _UpdateItem {
  const _$UpdateItemImpl(this.index, this.item);

  @override
  final int index;
  @override
  final InventoryItemEntity item;

  @override
  String toString() {
    return 'AddRentalEvent.updateItem(index: $index, item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateItemImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, item);

  /// Create a copy of AddRentalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateItemImplCopyWith<_$UpdateItemImpl> get copyWith =>
      __$$UpdateItemImplCopyWithImpl<_$UpdateItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerEntity customer) selectCustomer,
    required TResult Function(InventoryItemEntity item) addItem,
    required TResult Function(int index) removeItem,
    required TResult Function(int index, InventoryItemEntity item) updateItem,
    required TResult Function(double amount) updateAdvanceAmount,
    required TResult Function() createRental,
    required TResult Function() calculateRental,
  }) {
    return updateItem(index, item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerEntity customer)? selectCustomer,
    TResult? Function(InventoryItemEntity item)? addItem,
    TResult? Function(int index)? removeItem,
    TResult? Function(int index, InventoryItemEntity item)? updateItem,
    TResult? Function(double amount)? updateAdvanceAmount,
    TResult? Function()? createRental,
    TResult? Function()? calculateRental,
  }) {
    return updateItem?.call(index, item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerEntity customer)? selectCustomer,
    TResult Function(InventoryItemEntity item)? addItem,
    TResult Function(int index)? removeItem,
    TResult Function(int index, InventoryItemEntity item)? updateItem,
    TResult Function(double amount)? updateAdvanceAmount,
    TResult Function()? createRental,
    TResult Function()? calculateRental,
    required TResult orElse(),
  }) {
    if (updateItem != null) {
      return updateItem(index, item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectCustomer value) selectCustomer,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_UpdateItem value) updateItem,
    required TResult Function(_UpdateAdvanceAmount value) updateAdvanceAmount,
    required TResult Function(_CreateRental value) createRental,
    required TResult Function(_CalculateRental value) calculateRental,
  }) {
    return updateItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectCustomer value)? selectCustomer,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_UpdateItem value)? updateItem,
    TResult? Function(_UpdateAdvanceAmount value)? updateAdvanceAmount,
    TResult? Function(_CreateRental value)? createRental,
    TResult? Function(_CalculateRental value)? calculateRental,
  }) {
    return updateItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectCustomer value)? selectCustomer,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_UpdateItem value)? updateItem,
    TResult Function(_UpdateAdvanceAmount value)? updateAdvanceAmount,
    TResult Function(_CreateRental value)? createRental,
    TResult Function(_CalculateRental value)? calculateRental,
    required TResult orElse(),
  }) {
    if (updateItem != null) {
      return updateItem(this);
    }
    return orElse();
  }
}

abstract class _UpdateItem implements AddRentalEvent {
  const factory _UpdateItem(final int index, final InventoryItemEntity item) =
      _$UpdateItemImpl;

  int get index;
  InventoryItemEntity get item;

  /// Create a copy of AddRentalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateItemImplCopyWith<_$UpdateItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateAdvanceAmountImplCopyWith<$Res> {
  factory _$$UpdateAdvanceAmountImplCopyWith(_$UpdateAdvanceAmountImpl value,
          $Res Function(_$UpdateAdvanceAmountImpl) then) =
      __$$UpdateAdvanceAmountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double amount});
}

/// @nodoc
class __$$UpdateAdvanceAmountImplCopyWithImpl<$Res>
    extends _$AddRentalEventCopyWithImpl<$Res, _$UpdateAdvanceAmountImpl>
    implements _$$UpdateAdvanceAmountImplCopyWith<$Res> {
  __$$UpdateAdvanceAmountImplCopyWithImpl(_$UpdateAdvanceAmountImpl _value,
      $Res Function(_$UpdateAdvanceAmountImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddRentalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$UpdateAdvanceAmountImpl(
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$UpdateAdvanceAmountImpl implements _UpdateAdvanceAmount {
  const _$UpdateAdvanceAmountImpl(this.amount);

  @override
  final double amount;

  @override
  String toString() {
    return 'AddRentalEvent.updateAdvanceAmount(amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAdvanceAmountImpl &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  /// Create a copy of AddRentalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAdvanceAmountImplCopyWith<_$UpdateAdvanceAmountImpl> get copyWith =>
      __$$UpdateAdvanceAmountImplCopyWithImpl<_$UpdateAdvanceAmountImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerEntity customer) selectCustomer,
    required TResult Function(InventoryItemEntity item) addItem,
    required TResult Function(int index) removeItem,
    required TResult Function(int index, InventoryItemEntity item) updateItem,
    required TResult Function(double amount) updateAdvanceAmount,
    required TResult Function() createRental,
    required TResult Function() calculateRental,
  }) {
    return updateAdvanceAmount(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerEntity customer)? selectCustomer,
    TResult? Function(InventoryItemEntity item)? addItem,
    TResult? Function(int index)? removeItem,
    TResult? Function(int index, InventoryItemEntity item)? updateItem,
    TResult? Function(double amount)? updateAdvanceAmount,
    TResult? Function()? createRental,
    TResult? Function()? calculateRental,
  }) {
    return updateAdvanceAmount?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerEntity customer)? selectCustomer,
    TResult Function(InventoryItemEntity item)? addItem,
    TResult Function(int index)? removeItem,
    TResult Function(int index, InventoryItemEntity item)? updateItem,
    TResult Function(double amount)? updateAdvanceAmount,
    TResult Function()? createRental,
    TResult Function()? calculateRental,
    required TResult orElse(),
  }) {
    if (updateAdvanceAmount != null) {
      return updateAdvanceAmount(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectCustomer value) selectCustomer,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_UpdateItem value) updateItem,
    required TResult Function(_UpdateAdvanceAmount value) updateAdvanceAmount,
    required TResult Function(_CreateRental value) createRental,
    required TResult Function(_CalculateRental value) calculateRental,
  }) {
    return updateAdvanceAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectCustomer value)? selectCustomer,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_UpdateItem value)? updateItem,
    TResult? Function(_UpdateAdvanceAmount value)? updateAdvanceAmount,
    TResult? Function(_CreateRental value)? createRental,
    TResult? Function(_CalculateRental value)? calculateRental,
  }) {
    return updateAdvanceAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectCustomer value)? selectCustomer,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_UpdateItem value)? updateItem,
    TResult Function(_UpdateAdvanceAmount value)? updateAdvanceAmount,
    TResult Function(_CreateRental value)? createRental,
    TResult Function(_CalculateRental value)? calculateRental,
    required TResult orElse(),
  }) {
    if (updateAdvanceAmount != null) {
      return updateAdvanceAmount(this);
    }
    return orElse();
  }
}

abstract class _UpdateAdvanceAmount implements AddRentalEvent {
  const factory _UpdateAdvanceAmount(final double amount) =
      _$UpdateAdvanceAmountImpl;

  double get amount;

  /// Create a copy of AddRentalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateAdvanceAmountImplCopyWith<_$UpdateAdvanceAmountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateRentalImplCopyWith<$Res> {
  factory _$$CreateRentalImplCopyWith(
          _$CreateRentalImpl value, $Res Function(_$CreateRentalImpl) then) =
      __$$CreateRentalImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateRentalImplCopyWithImpl<$Res>
    extends _$AddRentalEventCopyWithImpl<$Res, _$CreateRentalImpl>
    implements _$$CreateRentalImplCopyWith<$Res> {
  __$$CreateRentalImplCopyWithImpl(
      _$CreateRentalImpl _value, $Res Function(_$CreateRentalImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddRentalEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CreateRentalImpl implements _CreateRental {
  const _$CreateRentalImpl();

  @override
  String toString() {
    return 'AddRentalEvent.createRental()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreateRentalImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerEntity customer) selectCustomer,
    required TResult Function(InventoryItemEntity item) addItem,
    required TResult Function(int index) removeItem,
    required TResult Function(int index, InventoryItemEntity item) updateItem,
    required TResult Function(double amount) updateAdvanceAmount,
    required TResult Function() createRental,
    required TResult Function() calculateRental,
  }) {
    return createRental();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerEntity customer)? selectCustomer,
    TResult? Function(InventoryItemEntity item)? addItem,
    TResult? Function(int index)? removeItem,
    TResult? Function(int index, InventoryItemEntity item)? updateItem,
    TResult? Function(double amount)? updateAdvanceAmount,
    TResult? Function()? createRental,
    TResult? Function()? calculateRental,
  }) {
    return createRental?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerEntity customer)? selectCustomer,
    TResult Function(InventoryItemEntity item)? addItem,
    TResult Function(int index)? removeItem,
    TResult Function(int index, InventoryItemEntity item)? updateItem,
    TResult Function(double amount)? updateAdvanceAmount,
    TResult Function()? createRental,
    TResult Function()? calculateRental,
    required TResult orElse(),
  }) {
    if (createRental != null) {
      return createRental();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectCustomer value) selectCustomer,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_UpdateItem value) updateItem,
    required TResult Function(_UpdateAdvanceAmount value) updateAdvanceAmount,
    required TResult Function(_CreateRental value) createRental,
    required TResult Function(_CalculateRental value) calculateRental,
  }) {
    return createRental(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectCustomer value)? selectCustomer,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_UpdateItem value)? updateItem,
    TResult? Function(_UpdateAdvanceAmount value)? updateAdvanceAmount,
    TResult? Function(_CreateRental value)? createRental,
    TResult? Function(_CalculateRental value)? calculateRental,
  }) {
    return createRental?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectCustomer value)? selectCustomer,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_UpdateItem value)? updateItem,
    TResult Function(_UpdateAdvanceAmount value)? updateAdvanceAmount,
    TResult Function(_CreateRental value)? createRental,
    TResult Function(_CalculateRental value)? calculateRental,
    required TResult orElse(),
  }) {
    if (createRental != null) {
      return createRental(this);
    }
    return orElse();
  }
}

abstract class _CreateRental implements AddRentalEvent {
  const factory _CreateRental() = _$CreateRentalImpl;
}

/// @nodoc
abstract class _$$CalculateRentalImplCopyWith<$Res> {
  factory _$$CalculateRentalImplCopyWith(_$CalculateRentalImpl value,
          $Res Function(_$CalculateRentalImpl) then) =
      __$$CalculateRentalImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CalculateRentalImplCopyWithImpl<$Res>
    extends _$AddRentalEventCopyWithImpl<$Res, _$CalculateRentalImpl>
    implements _$$CalculateRentalImplCopyWith<$Res> {
  __$$CalculateRentalImplCopyWithImpl(
      _$CalculateRentalImpl _value, $Res Function(_$CalculateRentalImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddRentalEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CalculateRentalImpl implements _CalculateRental {
  const _$CalculateRentalImpl();

  @override
  String toString() {
    return 'AddRentalEvent.calculateRental()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CalculateRentalImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerEntity customer) selectCustomer,
    required TResult Function(InventoryItemEntity item) addItem,
    required TResult Function(int index) removeItem,
    required TResult Function(int index, InventoryItemEntity item) updateItem,
    required TResult Function(double amount) updateAdvanceAmount,
    required TResult Function() createRental,
    required TResult Function() calculateRental,
  }) {
    return calculateRental();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerEntity customer)? selectCustomer,
    TResult? Function(InventoryItemEntity item)? addItem,
    TResult? Function(int index)? removeItem,
    TResult? Function(int index, InventoryItemEntity item)? updateItem,
    TResult? Function(double amount)? updateAdvanceAmount,
    TResult? Function()? createRental,
    TResult? Function()? calculateRental,
  }) {
    return calculateRental?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerEntity customer)? selectCustomer,
    TResult Function(InventoryItemEntity item)? addItem,
    TResult Function(int index)? removeItem,
    TResult Function(int index, InventoryItemEntity item)? updateItem,
    TResult Function(double amount)? updateAdvanceAmount,
    TResult Function()? createRental,
    TResult Function()? calculateRental,
    required TResult orElse(),
  }) {
    if (calculateRental != null) {
      return calculateRental();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectCustomer value) selectCustomer,
    required TResult Function(_AddItem value) addItem,
    required TResult Function(_RemoveItem value) removeItem,
    required TResult Function(_UpdateItem value) updateItem,
    required TResult Function(_UpdateAdvanceAmount value) updateAdvanceAmount,
    required TResult Function(_CreateRental value) createRental,
    required TResult Function(_CalculateRental value) calculateRental,
  }) {
    return calculateRental(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectCustomer value)? selectCustomer,
    TResult? Function(_AddItem value)? addItem,
    TResult? Function(_RemoveItem value)? removeItem,
    TResult? Function(_UpdateItem value)? updateItem,
    TResult? Function(_UpdateAdvanceAmount value)? updateAdvanceAmount,
    TResult? Function(_CreateRental value)? createRental,
    TResult? Function(_CalculateRental value)? calculateRental,
  }) {
    return calculateRental?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectCustomer value)? selectCustomer,
    TResult Function(_AddItem value)? addItem,
    TResult Function(_RemoveItem value)? removeItem,
    TResult Function(_UpdateItem value)? updateItem,
    TResult Function(_UpdateAdvanceAmount value)? updateAdvanceAmount,
    TResult Function(_CreateRental value)? createRental,
    TResult Function(_CalculateRental value)? calculateRental,
    required TResult orElse(),
  }) {
    if (calculateRental != null) {
      return calculateRental(this);
    }
    return orElse();
  }
}

abstract class _CalculateRental implements AddRentalEvent {
  const factory _CalculateRental() = _$CalculateRentalImpl;
}

/// @nodoc
mixin _$AddRentalState {
  RentalEntity get selectedRental => throw _privateConstructorUsedError;

  /// Create a copy of AddRentalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddRentalStateCopyWith<AddRentalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddRentalStateCopyWith<$Res> {
  factory $AddRentalStateCopyWith(
          AddRentalState value, $Res Function(AddRentalState) then) =
      _$AddRentalStateCopyWithImpl<$Res, AddRentalState>;
  @useResult
  $Res call({RentalEntity selectedRental});

  $RentalEntityCopyWith<$Res> get selectedRental;
}

/// @nodoc
class _$AddRentalStateCopyWithImpl<$Res, $Val extends AddRentalState>
    implements $AddRentalStateCopyWith<$Res> {
  _$AddRentalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddRentalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedRental = null,
  }) {
    return _then(_value.copyWith(
      selectedRental: null == selectedRental
          ? _value.selectedRental
          : selectedRental // ignore: cast_nullable_to_non_nullable
              as RentalEntity,
    ) as $Val);
  }

  /// Create a copy of AddRentalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RentalEntityCopyWith<$Res> get selectedRental {
    return $RentalEntityCopyWith<$Res>(_value.selectedRental, (value) {
      return _then(_value.copyWith(selectedRental: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddRentalStateImplCopyWith<$Res>
    implements $AddRentalStateCopyWith<$Res> {
  factory _$$AddRentalStateImplCopyWith(_$AddRentalStateImpl value,
          $Res Function(_$AddRentalStateImpl) then) =
      __$$AddRentalStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RentalEntity selectedRental});

  @override
  $RentalEntityCopyWith<$Res> get selectedRental;
}

/// @nodoc
class __$$AddRentalStateImplCopyWithImpl<$Res>
    extends _$AddRentalStateCopyWithImpl<$Res, _$AddRentalStateImpl>
    implements _$$AddRentalStateImplCopyWith<$Res> {
  __$$AddRentalStateImplCopyWithImpl(
      _$AddRentalStateImpl _value, $Res Function(_$AddRentalStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddRentalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedRental = null,
  }) {
    return _then(_$AddRentalStateImpl(
      selectedRental: null == selectedRental
          ? _value.selectedRental
          : selectedRental // ignore: cast_nullable_to_non_nullable
              as RentalEntity,
    ));
  }
}

/// @nodoc

class _$AddRentalStateImpl implements _AddRentalState {
  const _$AddRentalStateImpl({required this.selectedRental});

  @override
  final RentalEntity selectedRental;

  @override
  String toString() {
    return 'AddRentalState(selectedRental: $selectedRental)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddRentalStateImpl &&
            (identical(other.selectedRental, selectedRental) ||
                other.selectedRental == selectedRental));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedRental);

  /// Create a copy of AddRentalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddRentalStateImplCopyWith<_$AddRentalStateImpl> get copyWith =>
      __$$AddRentalStateImplCopyWithImpl<_$AddRentalStateImpl>(
          this, _$identity);
}

abstract class _AddRentalState implements AddRentalState {
  const factory _AddRentalState({required final RentalEntity selectedRental}) =
      _$AddRentalStateImpl;

  @override
  RentalEntity get selectedRental;

  /// Create a copy of AddRentalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddRentalStateImplCopyWith<_$AddRentalStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
