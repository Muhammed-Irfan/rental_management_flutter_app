// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_inventory_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddInventoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) updateName,
    required TResult Function(String description) updateDescription,
    required TResult Function(int quantity) updateQuantity,
    required TResult Function(int available) updateAvailable,
    required TResult Function(double rent) updateRent,
    required TResult Function() createItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? updateName,
    TResult? Function(String description)? updateDescription,
    TResult? Function(int quantity)? updateQuantity,
    TResult? Function(int available)? updateAvailable,
    TResult? Function(double rent)? updateRent,
    TResult? Function()? createItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? updateName,
    TResult Function(String description)? updateDescription,
    TResult Function(int quantity)? updateQuantity,
    TResult Function(int available)? updateAvailable,
    TResult Function(double rent)? updateRent,
    TResult Function()? createItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdateDescription value) updateDescription,
    required TResult Function(_UpdateQuantity value) updateQuantity,
    required TResult Function(_UpdateAvailable value) updateAvailable,
    required TResult Function(_UpdateRent value) updateRent,
    required TResult Function(_CreateItem value) createItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdateDescription value)? updateDescription,
    TResult? Function(_UpdateQuantity value)? updateQuantity,
    TResult? Function(_UpdateAvailable value)? updateAvailable,
    TResult? Function(_UpdateRent value)? updateRent,
    TResult? Function(_CreateItem value)? createItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateQuantity value)? updateQuantity,
    TResult Function(_UpdateAvailable value)? updateAvailable,
    TResult Function(_UpdateRent value)? updateRent,
    TResult Function(_CreateItem value)? createItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddInventoryEventCopyWith<$Res> {
  factory $AddInventoryEventCopyWith(
          AddInventoryEvent value, $Res Function(AddInventoryEvent) then) =
      _$AddInventoryEventCopyWithImpl<$Res, AddInventoryEvent>;
}

/// @nodoc
class _$AddInventoryEventCopyWithImpl<$Res, $Val extends AddInventoryEvent>
    implements $AddInventoryEventCopyWith<$Res> {
  _$AddInventoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddInventoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UpdateNameImplCopyWith<$Res> {
  factory _$$UpdateNameImplCopyWith(
          _$UpdateNameImpl value, $Res Function(_$UpdateNameImpl) then) =
      __$$UpdateNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$UpdateNameImplCopyWithImpl<$Res>
    extends _$AddInventoryEventCopyWithImpl<$Res, _$UpdateNameImpl>
    implements _$$UpdateNameImplCopyWith<$Res> {
  __$$UpdateNameImplCopyWithImpl(
      _$UpdateNameImpl _value, $Res Function(_$UpdateNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddInventoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$UpdateNameImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateNameImpl implements _UpdateName {
  const _$UpdateNameImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'AddInventoryEvent.updateName(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateNameImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of AddInventoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateNameImplCopyWith<_$UpdateNameImpl> get copyWith =>
      __$$UpdateNameImplCopyWithImpl<_$UpdateNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) updateName,
    required TResult Function(String description) updateDescription,
    required TResult Function(int quantity) updateQuantity,
    required TResult Function(int available) updateAvailable,
    required TResult Function(double rent) updateRent,
    required TResult Function() createItem,
  }) {
    return updateName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? updateName,
    TResult? Function(String description)? updateDescription,
    TResult? Function(int quantity)? updateQuantity,
    TResult? Function(int available)? updateAvailable,
    TResult? Function(double rent)? updateRent,
    TResult? Function()? createItem,
  }) {
    return updateName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? updateName,
    TResult Function(String description)? updateDescription,
    TResult Function(int quantity)? updateQuantity,
    TResult Function(int available)? updateAvailable,
    TResult Function(double rent)? updateRent,
    TResult Function()? createItem,
    required TResult orElse(),
  }) {
    if (updateName != null) {
      return updateName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdateDescription value) updateDescription,
    required TResult Function(_UpdateQuantity value) updateQuantity,
    required TResult Function(_UpdateAvailable value) updateAvailable,
    required TResult Function(_UpdateRent value) updateRent,
    required TResult Function(_CreateItem value) createItem,
  }) {
    return updateName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdateDescription value)? updateDescription,
    TResult? Function(_UpdateQuantity value)? updateQuantity,
    TResult? Function(_UpdateAvailable value)? updateAvailable,
    TResult? Function(_UpdateRent value)? updateRent,
    TResult? Function(_CreateItem value)? createItem,
  }) {
    return updateName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateQuantity value)? updateQuantity,
    TResult Function(_UpdateAvailable value)? updateAvailable,
    TResult Function(_UpdateRent value)? updateRent,
    TResult Function(_CreateItem value)? createItem,
    required TResult orElse(),
  }) {
    if (updateName != null) {
      return updateName(this);
    }
    return orElse();
  }
}

abstract class _UpdateName implements AddInventoryEvent {
  const factory _UpdateName(final String name) = _$UpdateNameImpl;

  String get name;

  /// Create a copy of AddInventoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateNameImplCopyWith<_$UpdateNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateDescriptionImplCopyWith<$Res> {
  factory _$$UpdateDescriptionImplCopyWith(_$UpdateDescriptionImpl value,
          $Res Function(_$UpdateDescriptionImpl) then) =
      __$$UpdateDescriptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String description});
}

/// @nodoc
class __$$UpdateDescriptionImplCopyWithImpl<$Res>
    extends _$AddInventoryEventCopyWithImpl<$Res, _$UpdateDescriptionImpl>
    implements _$$UpdateDescriptionImplCopyWith<$Res> {
  __$$UpdateDescriptionImplCopyWithImpl(_$UpdateDescriptionImpl _value,
      $Res Function(_$UpdateDescriptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddInventoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_$UpdateDescriptionImpl(
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateDescriptionImpl implements _UpdateDescription {
  const _$UpdateDescriptionImpl(this.description);

  @override
  final String description;

  @override
  String toString() {
    return 'AddInventoryEvent.updateDescription(description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDescriptionImpl &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

  /// Create a copy of AddInventoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDescriptionImplCopyWith<_$UpdateDescriptionImpl> get copyWith =>
      __$$UpdateDescriptionImplCopyWithImpl<_$UpdateDescriptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) updateName,
    required TResult Function(String description) updateDescription,
    required TResult Function(int quantity) updateQuantity,
    required TResult Function(int available) updateAvailable,
    required TResult Function(double rent) updateRent,
    required TResult Function() createItem,
  }) {
    return updateDescription(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? updateName,
    TResult? Function(String description)? updateDescription,
    TResult? Function(int quantity)? updateQuantity,
    TResult? Function(int available)? updateAvailable,
    TResult? Function(double rent)? updateRent,
    TResult? Function()? createItem,
  }) {
    return updateDescription?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? updateName,
    TResult Function(String description)? updateDescription,
    TResult Function(int quantity)? updateQuantity,
    TResult Function(int available)? updateAvailable,
    TResult Function(double rent)? updateRent,
    TResult Function()? createItem,
    required TResult orElse(),
  }) {
    if (updateDescription != null) {
      return updateDescription(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdateDescription value) updateDescription,
    required TResult Function(_UpdateQuantity value) updateQuantity,
    required TResult Function(_UpdateAvailable value) updateAvailable,
    required TResult Function(_UpdateRent value) updateRent,
    required TResult Function(_CreateItem value) createItem,
  }) {
    return updateDescription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdateDescription value)? updateDescription,
    TResult? Function(_UpdateQuantity value)? updateQuantity,
    TResult? Function(_UpdateAvailable value)? updateAvailable,
    TResult? Function(_UpdateRent value)? updateRent,
    TResult? Function(_CreateItem value)? createItem,
  }) {
    return updateDescription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateQuantity value)? updateQuantity,
    TResult Function(_UpdateAvailable value)? updateAvailable,
    TResult Function(_UpdateRent value)? updateRent,
    TResult Function(_CreateItem value)? createItem,
    required TResult orElse(),
  }) {
    if (updateDescription != null) {
      return updateDescription(this);
    }
    return orElse();
  }
}

abstract class _UpdateDescription implements AddInventoryEvent {
  const factory _UpdateDescription(final String description) =
      _$UpdateDescriptionImpl;

  String get description;

  /// Create a copy of AddInventoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateDescriptionImplCopyWith<_$UpdateDescriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateQuantityImplCopyWith<$Res> {
  factory _$$UpdateQuantityImplCopyWith(_$UpdateQuantityImpl value,
          $Res Function(_$UpdateQuantityImpl) then) =
      __$$UpdateQuantityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int quantity});
}

/// @nodoc
class __$$UpdateQuantityImplCopyWithImpl<$Res>
    extends _$AddInventoryEventCopyWithImpl<$Res, _$UpdateQuantityImpl>
    implements _$$UpdateQuantityImplCopyWith<$Res> {
  __$$UpdateQuantityImplCopyWithImpl(
      _$UpdateQuantityImpl _value, $Res Function(_$UpdateQuantityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddInventoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
  }) {
    return _then(_$UpdateQuantityImpl(
      null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateQuantityImpl implements _UpdateQuantity {
  const _$UpdateQuantityImpl(this.quantity);

  @override
  final int quantity;

  @override
  String toString() {
    return 'AddInventoryEvent.updateQuantity(quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateQuantityImpl &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quantity);

  /// Create a copy of AddInventoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateQuantityImplCopyWith<_$UpdateQuantityImpl> get copyWith =>
      __$$UpdateQuantityImplCopyWithImpl<_$UpdateQuantityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) updateName,
    required TResult Function(String description) updateDescription,
    required TResult Function(int quantity) updateQuantity,
    required TResult Function(int available) updateAvailable,
    required TResult Function(double rent) updateRent,
    required TResult Function() createItem,
  }) {
    return updateQuantity(quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? updateName,
    TResult? Function(String description)? updateDescription,
    TResult? Function(int quantity)? updateQuantity,
    TResult? Function(int available)? updateAvailable,
    TResult? Function(double rent)? updateRent,
    TResult? Function()? createItem,
  }) {
    return updateQuantity?.call(quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? updateName,
    TResult Function(String description)? updateDescription,
    TResult Function(int quantity)? updateQuantity,
    TResult Function(int available)? updateAvailable,
    TResult Function(double rent)? updateRent,
    TResult Function()? createItem,
    required TResult orElse(),
  }) {
    if (updateQuantity != null) {
      return updateQuantity(quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdateDescription value) updateDescription,
    required TResult Function(_UpdateQuantity value) updateQuantity,
    required TResult Function(_UpdateAvailable value) updateAvailable,
    required TResult Function(_UpdateRent value) updateRent,
    required TResult Function(_CreateItem value) createItem,
  }) {
    return updateQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdateDescription value)? updateDescription,
    TResult? Function(_UpdateQuantity value)? updateQuantity,
    TResult? Function(_UpdateAvailable value)? updateAvailable,
    TResult? Function(_UpdateRent value)? updateRent,
    TResult? Function(_CreateItem value)? createItem,
  }) {
    return updateQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateQuantity value)? updateQuantity,
    TResult Function(_UpdateAvailable value)? updateAvailable,
    TResult Function(_UpdateRent value)? updateRent,
    TResult Function(_CreateItem value)? createItem,
    required TResult orElse(),
  }) {
    if (updateQuantity != null) {
      return updateQuantity(this);
    }
    return orElse();
  }
}

abstract class _UpdateQuantity implements AddInventoryEvent {
  const factory _UpdateQuantity(final int quantity) = _$UpdateQuantityImpl;

  int get quantity;

  /// Create a copy of AddInventoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateQuantityImplCopyWith<_$UpdateQuantityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateAvailableImplCopyWith<$Res> {
  factory _$$UpdateAvailableImplCopyWith(_$UpdateAvailableImpl value,
          $Res Function(_$UpdateAvailableImpl) then) =
      __$$UpdateAvailableImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int available});
}

/// @nodoc
class __$$UpdateAvailableImplCopyWithImpl<$Res>
    extends _$AddInventoryEventCopyWithImpl<$Res, _$UpdateAvailableImpl>
    implements _$$UpdateAvailableImplCopyWith<$Res> {
  __$$UpdateAvailableImplCopyWithImpl(
      _$UpdateAvailableImpl _value, $Res Function(_$UpdateAvailableImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddInventoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = null,
  }) {
    return _then(_$UpdateAvailableImpl(
      null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateAvailableImpl implements _UpdateAvailable {
  const _$UpdateAvailableImpl(this.available);

  @override
  final int available;

  @override
  String toString() {
    return 'AddInventoryEvent.updateAvailable(available: $available)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAvailableImpl &&
            (identical(other.available, available) ||
                other.available == available));
  }

  @override
  int get hashCode => Object.hash(runtimeType, available);

  /// Create a copy of AddInventoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAvailableImplCopyWith<_$UpdateAvailableImpl> get copyWith =>
      __$$UpdateAvailableImplCopyWithImpl<_$UpdateAvailableImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) updateName,
    required TResult Function(String description) updateDescription,
    required TResult Function(int quantity) updateQuantity,
    required TResult Function(int available) updateAvailable,
    required TResult Function(double rent) updateRent,
    required TResult Function() createItem,
  }) {
    return updateAvailable(available);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? updateName,
    TResult? Function(String description)? updateDescription,
    TResult? Function(int quantity)? updateQuantity,
    TResult? Function(int available)? updateAvailable,
    TResult? Function(double rent)? updateRent,
    TResult? Function()? createItem,
  }) {
    return updateAvailable?.call(available);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? updateName,
    TResult Function(String description)? updateDescription,
    TResult Function(int quantity)? updateQuantity,
    TResult Function(int available)? updateAvailable,
    TResult Function(double rent)? updateRent,
    TResult Function()? createItem,
    required TResult orElse(),
  }) {
    if (updateAvailable != null) {
      return updateAvailable(available);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdateDescription value) updateDescription,
    required TResult Function(_UpdateQuantity value) updateQuantity,
    required TResult Function(_UpdateAvailable value) updateAvailable,
    required TResult Function(_UpdateRent value) updateRent,
    required TResult Function(_CreateItem value) createItem,
  }) {
    return updateAvailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdateDescription value)? updateDescription,
    TResult? Function(_UpdateQuantity value)? updateQuantity,
    TResult? Function(_UpdateAvailable value)? updateAvailable,
    TResult? Function(_UpdateRent value)? updateRent,
    TResult? Function(_CreateItem value)? createItem,
  }) {
    return updateAvailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateQuantity value)? updateQuantity,
    TResult Function(_UpdateAvailable value)? updateAvailable,
    TResult Function(_UpdateRent value)? updateRent,
    TResult Function(_CreateItem value)? createItem,
    required TResult orElse(),
  }) {
    if (updateAvailable != null) {
      return updateAvailable(this);
    }
    return orElse();
  }
}

abstract class _UpdateAvailable implements AddInventoryEvent {
  const factory _UpdateAvailable(final int available) = _$UpdateAvailableImpl;

  int get available;

  /// Create a copy of AddInventoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateAvailableImplCopyWith<_$UpdateAvailableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateRentImplCopyWith<$Res> {
  factory _$$UpdateRentImplCopyWith(
          _$UpdateRentImpl value, $Res Function(_$UpdateRentImpl) then) =
      __$$UpdateRentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double rent});
}

/// @nodoc
class __$$UpdateRentImplCopyWithImpl<$Res>
    extends _$AddInventoryEventCopyWithImpl<$Res, _$UpdateRentImpl>
    implements _$$UpdateRentImplCopyWith<$Res> {
  __$$UpdateRentImplCopyWithImpl(
      _$UpdateRentImpl _value, $Res Function(_$UpdateRentImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddInventoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rent = null,
  }) {
    return _then(_$UpdateRentImpl(
      null == rent
          ? _value.rent
          : rent // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$UpdateRentImpl implements _UpdateRent {
  const _$UpdateRentImpl(this.rent);

  @override
  final double rent;

  @override
  String toString() {
    return 'AddInventoryEvent.updateRent(rent: $rent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateRentImpl &&
            (identical(other.rent, rent) || other.rent == rent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rent);

  /// Create a copy of AddInventoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateRentImplCopyWith<_$UpdateRentImpl> get copyWith =>
      __$$UpdateRentImplCopyWithImpl<_$UpdateRentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) updateName,
    required TResult Function(String description) updateDescription,
    required TResult Function(int quantity) updateQuantity,
    required TResult Function(int available) updateAvailable,
    required TResult Function(double rent) updateRent,
    required TResult Function() createItem,
  }) {
    return updateRent(rent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? updateName,
    TResult? Function(String description)? updateDescription,
    TResult? Function(int quantity)? updateQuantity,
    TResult? Function(int available)? updateAvailable,
    TResult? Function(double rent)? updateRent,
    TResult? Function()? createItem,
  }) {
    return updateRent?.call(rent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? updateName,
    TResult Function(String description)? updateDescription,
    TResult Function(int quantity)? updateQuantity,
    TResult Function(int available)? updateAvailable,
    TResult Function(double rent)? updateRent,
    TResult Function()? createItem,
    required TResult orElse(),
  }) {
    if (updateRent != null) {
      return updateRent(rent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdateDescription value) updateDescription,
    required TResult Function(_UpdateQuantity value) updateQuantity,
    required TResult Function(_UpdateAvailable value) updateAvailable,
    required TResult Function(_UpdateRent value) updateRent,
    required TResult Function(_CreateItem value) createItem,
  }) {
    return updateRent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdateDescription value)? updateDescription,
    TResult? Function(_UpdateQuantity value)? updateQuantity,
    TResult? Function(_UpdateAvailable value)? updateAvailable,
    TResult? Function(_UpdateRent value)? updateRent,
    TResult? Function(_CreateItem value)? createItem,
  }) {
    return updateRent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateQuantity value)? updateQuantity,
    TResult Function(_UpdateAvailable value)? updateAvailable,
    TResult Function(_UpdateRent value)? updateRent,
    TResult Function(_CreateItem value)? createItem,
    required TResult orElse(),
  }) {
    if (updateRent != null) {
      return updateRent(this);
    }
    return orElse();
  }
}

abstract class _UpdateRent implements AddInventoryEvent {
  const factory _UpdateRent(final double rent) = _$UpdateRentImpl;

  double get rent;

  /// Create a copy of AddInventoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateRentImplCopyWith<_$UpdateRentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateItemImplCopyWith<$Res> {
  factory _$$CreateItemImplCopyWith(
          _$CreateItemImpl value, $Res Function(_$CreateItemImpl) then) =
      __$$CreateItemImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateItemImplCopyWithImpl<$Res>
    extends _$AddInventoryEventCopyWithImpl<$Res, _$CreateItemImpl>
    implements _$$CreateItemImplCopyWith<$Res> {
  __$$CreateItemImplCopyWithImpl(
      _$CreateItemImpl _value, $Res Function(_$CreateItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddInventoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CreateItemImpl implements _CreateItem {
  const _$CreateItemImpl();

  @override
  String toString() {
    return 'AddInventoryEvent.createItem()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreateItemImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) updateName,
    required TResult Function(String description) updateDescription,
    required TResult Function(int quantity) updateQuantity,
    required TResult Function(int available) updateAvailable,
    required TResult Function(double rent) updateRent,
    required TResult Function() createItem,
  }) {
    return createItem();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? updateName,
    TResult? Function(String description)? updateDescription,
    TResult? Function(int quantity)? updateQuantity,
    TResult? Function(int available)? updateAvailable,
    TResult? Function(double rent)? updateRent,
    TResult? Function()? createItem,
  }) {
    return createItem?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? updateName,
    TResult Function(String description)? updateDescription,
    TResult Function(int quantity)? updateQuantity,
    TResult Function(int available)? updateAvailable,
    TResult Function(double rent)? updateRent,
    TResult Function()? createItem,
    required TResult orElse(),
  }) {
    if (createItem != null) {
      return createItem();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdateDescription value) updateDescription,
    required TResult Function(_UpdateQuantity value) updateQuantity,
    required TResult Function(_UpdateAvailable value) updateAvailable,
    required TResult Function(_UpdateRent value) updateRent,
    required TResult Function(_CreateItem value) createItem,
  }) {
    return createItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdateDescription value)? updateDescription,
    TResult? Function(_UpdateQuantity value)? updateQuantity,
    TResult? Function(_UpdateAvailable value)? updateAvailable,
    TResult? Function(_UpdateRent value)? updateRent,
    TResult? Function(_CreateItem value)? createItem,
  }) {
    return createItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_UpdateQuantity value)? updateQuantity,
    TResult Function(_UpdateAvailable value)? updateAvailable,
    TResult Function(_UpdateRent value)? updateRent,
    TResult Function(_CreateItem value)? createItem,
    required TResult orElse(),
  }) {
    if (createItem != null) {
      return createItem(this);
    }
    return orElse();
  }
}

abstract class _CreateItem implements AddInventoryEvent {
  const factory _CreateItem() = _$CreateItemImpl;
}

/// @nodoc
mixin _$AddInventoryState {
  InventoryItemEntity get item => throw _privateConstructorUsedError;

  /// Create a copy of AddInventoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddInventoryStateCopyWith<AddInventoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddInventoryStateCopyWith<$Res> {
  factory $AddInventoryStateCopyWith(
          AddInventoryState value, $Res Function(AddInventoryState) then) =
      _$AddInventoryStateCopyWithImpl<$Res, AddInventoryState>;
  @useResult
  $Res call({InventoryItemEntity item});

  $InventoryItemEntityCopyWith<$Res> get item;
}

/// @nodoc
class _$AddInventoryStateCopyWithImpl<$Res, $Val extends AddInventoryState>
    implements $AddInventoryStateCopyWith<$Res> {
  _$AddInventoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddInventoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_value.copyWith(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as InventoryItemEntity,
    ) as $Val);
  }

  /// Create a copy of AddInventoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InventoryItemEntityCopyWith<$Res> get item {
    return $InventoryItemEntityCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddInventoryStateImplCopyWith<$Res>
    implements $AddInventoryStateCopyWith<$Res> {
  factory _$$AddInventoryStateImplCopyWith(_$AddInventoryStateImpl value,
          $Res Function(_$AddInventoryStateImpl) then) =
      __$$AddInventoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InventoryItemEntity item});

  @override
  $InventoryItemEntityCopyWith<$Res> get item;
}

/// @nodoc
class __$$AddInventoryStateImplCopyWithImpl<$Res>
    extends _$AddInventoryStateCopyWithImpl<$Res, _$AddInventoryStateImpl>
    implements _$$AddInventoryStateImplCopyWith<$Res> {
  __$$AddInventoryStateImplCopyWithImpl(_$AddInventoryStateImpl _value,
      $Res Function(_$AddInventoryStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddInventoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$AddInventoryStateImpl(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as InventoryItemEntity,
    ));
  }
}

/// @nodoc

class _$AddInventoryStateImpl implements _AddInventoryState {
  const _$AddInventoryStateImpl({required this.item});

  @override
  final InventoryItemEntity item;

  @override
  String toString() {
    return 'AddInventoryState(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddInventoryStateImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  /// Create a copy of AddInventoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddInventoryStateImplCopyWith<_$AddInventoryStateImpl> get copyWith =>
      __$$AddInventoryStateImplCopyWithImpl<_$AddInventoryStateImpl>(
          this, _$identity);
}

abstract class _AddInventoryState implements AddInventoryState {
  const factory _AddInventoryState({required final InventoryItemEntity item}) =
      _$AddInventoryStateImpl;

  @override
  InventoryItemEntity get item;

  /// Create a copy of AddInventoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddInventoryStateImplCopyWith<_$AddInventoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
