// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_item_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InventoryItemEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get rent => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  int get available => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Create a copy of InventoryItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InventoryItemEntityCopyWith<InventoryItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryItemEntityCopyWith<$Res> {
  factory $InventoryItemEntityCopyWith(
          InventoryItemEntity value, $Res Function(InventoryItemEntity) then) =
      _$InventoryItemEntityCopyWithImpl<$Res, InventoryItemEntity>;
  @useResult
  $Res call(
      {int id,
      String name,
      double rent,
      int quantity,
      int available,
      String? description});
}

/// @nodoc
class _$InventoryItemEntityCopyWithImpl<$Res, $Val extends InventoryItemEntity>
    implements $InventoryItemEntityCopyWith<$Res> {
  _$InventoryItemEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InventoryItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? rent = null,
    Object? quantity = null,
    Object? available = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rent: null == rent
          ? _value.rent
          : rent // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InventoryItemEntityImplCopyWith<$Res>
    implements $InventoryItemEntityCopyWith<$Res> {
  factory _$$InventoryItemEntityImplCopyWith(_$InventoryItemEntityImpl value,
          $Res Function(_$InventoryItemEntityImpl) then) =
      __$$InventoryItemEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      double rent,
      int quantity,
      int available,
      String? description});
}

/// @nodoc
class __$$InventoryItemEntityImplCopyWithImpl<$Res>
    extends _$InventoryItemEntityCopyWithImpl<$Res, _$InventoryItemEntityImpl>
    implements _$$InventoryItemEntityImplCopyWith<$Res> {
  __$$InventoryItemEntityImplCopyWithImpl(_$InventoryItemEntityImpl _value,
      $Res Function(_$InventoryItemEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of InventoryItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? rent = null,
    Object? quantity = null,
    Object? available = null,
    Object? description = freezed,
  }) {
    return _then(_$InventoryItemEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rent: null == rent
          ? _value.rent
          : rent // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InventoryItemEntityImpl implements _InventoryItemEntity {
  const _$InventoryItemEntityImpl(
      {required this.id,
      required this.name,
      required this.rent,
      required this.quantity,
      required this.available,
      this.description});

  @override
  final int id;
  @override
  final String name;
  @override
  final double rent;
  @override
  final int quantity;
  @override
  final int available;
  @override
  final String? description;

  @override
  String toString() {
    return 'InventoryItemEntity(id: $id, name: $name, rent: $rent, quantity: $quantity, available: $available, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventoryItemEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.rent, rent) || other.rent == rent) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, rent, quantity, available, description);

  /// Create a copy of InventoryItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InventoryItemEntityImplCopyWith<_$InventoryItemEntityImpl> get copyWith =>
      __$$InventoryItemEntityImplCopyWithImpl<_$InventoryItemEntityImpl>(
          this, _$identity);
}

abstract class _InventoryItemEntity implements InventoryItemEntity {
  const factory _InventoryItemEntity(
      {required final int id,
      required final String name,
      required final double rent,
      required final int quantity,
      required final int available,
      final String? description}) = _$InventoryItemEntityImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  double get rent;
  @override
  int get quantity;
  @override
  int get available;
  @override
  String? get description;

  /// Create a copy of InventoryItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InventoryItemEntityImplCopyWith<_$InventoryItemEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
