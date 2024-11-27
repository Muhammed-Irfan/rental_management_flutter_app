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
    required TResult Function(String name, String description, int quantity,
            int available, double rent)
        updateFields,
    required TResult Function() createItem,
    required TResult Function() updateItem,
    required TResult Function(String itemId) setItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String description, int quantity,
            int available, double rent)?
        updateFields,
    TResult? Function()? createItem,
    TResult? Function()? updateItem,
    TResult? Function(String itemId)? setItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String description, int quantity,
            int available, double rent)?
        updateFields,
    TResult Function()? createItem,
    TResult Function()? updateItem,
    TResult Function(String itemId)? setItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateFields value) updateFields,
    required TResult Function(_CreateItem value) createItem,
    required TResult Function(_UpdateItem value) updateItem,
    required TResult Function(_SetItem value) setItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateFields value)? updateFields,
    TResult? Function(_CreateItem value)? createItem,
    TResult? Function(_UpdateItem value)? updateItem,
    TResult? Function(_SetItem value)? setItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateFields value)? updateFields,
    TResult Function(_CreateItem value)? createItem,
    TResult Function(_UpdateItem value)? updateItem,
    TResult Function(_SetItem value)? setItem,
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
abstract class _$$UpdateFieldsImplCopyWith<$Res> {
  factory _$$UpdateFieldsImplCopyWith(
          _$UpdateFieldsImpl value, $Res Function(_$UpdateFieldsImpl) then) =
      __$$UpdateFieldsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      String description,
      int quantity,
      int available,
      double rent});
}

/// @nodoc
class __$$UpdateFieldsImplCopyWithImpl<$Res>
    extends _$AddInventoryEventCopyWithImpl<$Res, _$UpdateFieldsImpl>
    implements _$$UpdateFieldsImplCopyWith<$Res> {
  __$$UpdateFieldsImplCopyWithImpl(
      _$UpdateFieldsImpl _value, $Res Function(_$UpdateFieldsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddInventoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? quantity = null,
    Object? available = null,
    Object? rent = null,
  }) {
    return _then(_$UpdateFieldsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int,
      rent: null == rent
          ? _value.rent
          : rent // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$UpdateFieldsImpl implements _UpdateFields {
  const _$UpdateFieldsImpl(
      {required this.name,
      required this.description,
      required this.quantity,
      required this.available,
      required this.rent});

  @override
  final String name;
  @override
  final String description;
  @override
  final int quantity;
  @override
  final int available;
  @override
  final double rent;

  @override
  String toString() {
    return 'AddInventoryEvent.updateFields(name: $name, description: $description, quantity: $quantity, available: $available, rent: $rent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFieldsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.rent, rent) || other.rent == rent));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, quantity, available, rent);

  /// Create a copy of AddInventoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFieldsImplCopyWith<_$UpdateFieldsImpl> get copyWith =>
      __$$UpdateFieldsImplCopyWithImpl<_$UpdateFieldsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String description, int quantity,
            int available, double rent)
        updateFields,
    required TResult Function() createItem,
    required TResult Function() updateItem,
    required TResult Function(String itemId) setItem,
  }) {
    return updateFields(name, description, quantity, available, rent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String description, int quantity,
            int available, double rent)?
        updateFields,
    TResult? Function()? createItem,
    TResult? Function()? updateItem,
    TResult? Function(String itemId)? setItem,
  }) {
    return updateFields?.call(name, description, quantity, available, rent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String description, int quantity,
            int available, double rent)?
        updateFields,
    TResult Function()? createItem,
    TResult Function()? updateItem,
    TResult Function(String itemId)? setItem,
    required TResult orElse(),
  }) {
    if (updateFields != null) {
      return updateFields(name, description, quantity, available, rent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateFields value) updateFields,
    required TResult Function(_CreateItem value) createItem,
    required TResult Function(_UpdateItem value) updateItem,
    required TResult Function(_SetItem value) setItem,
  }) {
    return updateFields(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateFields value)? updateFields,
    TResult? Function(_CreateItem value)? createItem,
    TResult? Function(_UpdateItem value)? updateItem,
    TResult? Function(_SetItem value)? setItem,
  }) {
    return updateFields?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateFields value)? updateFields,
    TResult Function(_CreateItem value)? createItem,
    TResult Function(_UpdateItem value)? updateItem,
    TResult Function(_SetItem value)? setItem,
    required TResult orElse(),
  }) {
    if (updateFields != null) {
      return updateFields(this);
    }
    return orElse();
  }
}

abstract class _UpdateFields implements AddInventoryEvent {
  const factory _UpdateFields(
      {required final String name,
      required final String description,
      required final int quantity,
      required final int available,
      required final double rent}) = _$UpdateFieldsImpl;

  String get name;
  String get description;
  int get quantity;
  int get available;
  double get rent;

  /// Create a copy of AddInventoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateFieldsImplCopyWith<_$UpdateFieldsImpl> get copyWith =>
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
    required TResult Function(String name, String description, int quantity,
            int available, double rent)
        updateFields,
    required TResult Function() createItem,
    required TResult Function() updateItem,
    required TResult Function(String itemId) setItem,
  }) {
    return createItem();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String description, int quantity,
            int available, double rent)?
        updateFields,
    TResult? Function()? createItem,
    TResult? Function()? updateItem,
    TResult? Function(String itemId)? setItem,
  }) {
    return createItem?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String description, int quantity,
            int available, double rent)?
        updateFields,
    TResult Function()? createItem,
    TResult Function()? updateItem,
    TResult Function(String itemId)? setItem,
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
    required TResult Function(_UpdateFields value) updateFields,
    required TResult Function(_CreateItem value) createItem,
    required TResult Function(_UpdateItem value) updateItem,
    required TResult Function(_SetItem value) setItem,
  }) {
    return createItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateFields value)? updateFields,
    TResult? Function(_CreateItem value)? createItem,
    TResult? Function(_UpdateItem value)? updateItem,
    TResult? Function(_SetItem value)? setItem,
  }) {
    return createItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateFields value)? updateFields,
    TResult Function(_CreateItem value)? createItem,
    TResult Function(_UpdateItem value)? updateItem,
    TResult Function(_SetItem value)? setItem,
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
abstract class _$$UpdateItemImplCopyWith<$Res> {
  factory _$$UpdateItemImplCopyWith(
          _$UpdateItemImpl value, $Res Function(_$UpdateItemImpl) then) =
      __$$UpdateItemImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateItemImplCopyWithImpl<$Res>
    extends _$AddInventoryEventCopyWithImpl<$Res, _$UpdateItemImpl>
    implements _$$UpdateItemImplCopyWith<$Res> {
  __$$UpdateItemImplCopyWithImpl(
      _$UpdateItemImpl _value, $Res Function(_$UpdateItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddInventoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdateItemImpl implements _UpdateItem {
  const _$UpdateItemImpl();

  @override
  String toString() {
    return 'AddInventoryEvent.updateItem()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateItemImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String description, int quantity,
            int available, double rent)
        updateFields,
    required TResult Function() createItem,
    required TResult Function() updateItem,
    required TResult Function(String itemId) setItem,
  }) {
    return updateItem();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String description, int quantity,
            int available, double rent)?
        updateFields,
    TResult? Function()? createItem,
    TResult? Function()? updateItem,
    TResult? Function(String itemId)? setItem,
  }) {
    return updateItem?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String description, int quantity,
            int available, double rent)?
        updateFields,
    TResult Function()? createItem,
    TResult Function()? updateItem,
    TResult Function(String itemId)? setItem,
    required TResult orElse(),
  }) {
    if (updateItem != null) {
      return updateItem();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateFields value) updateFields,
    required TResult Function(_CreateItem value) createItem,
    required TResult Function(_UpdateItem value) updateItem,
    required TResult Function(_SetItem value) setItem,
  }) {
    return updateItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateFields value)? updateFields,
    TResult? Function(_CreateItem value)? createItem,
    TResult? Function(_UpdateItem value)? updateItem,
    TResult? Function(_SetItem value)? setItem,
  }) {
    return updateItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateFields value)? updateFields,
    TResult Function(_CreateItem value)? createItem,
    TResult Function(_UpdateItem value)? updateItem,
    TResult Function(_SetItem value)? setItem,
    required TResult orElse(),
  }) {
    if (updateItem != null) {
      return updateItem(this);
    }
    return orElse();
  }
}

abstract class _UpdateItem implements AddInventoryEvent {
  const factory _UpdateItem() = _$UpdateItemImpl;
}

/// @nodoc
abstract class _$$SetItemImplCopyWith<$Res> {
  factory _$$SetItemImplCopyWith(
          _$SetItemImpl value, $Res Function(_$SetItemImpl) then) =
      __$$SetItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String itemId});
}

/// @nodoc
class __$$SetItemImplCopyWithImpl<$Res>
    extends _$AddInventoryEventCopyWithImpl<$Res, _$SetItemImpl>
    implements _$$SetItemImplCopyWith<$Res> {
  __$$SetItemImplCopyWithImpl(
      _$SetItemImpl _value, $Res Function(_$SetItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddInventoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
  }) {
    return _then(_$SetItemImpl(
      null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetItemImpl implements _SetItem {
  const _$SetItemImpl(this.itemId);

  @override
  final String itemId;

  @override
  String toString() {
    return 'AddInventoryEvent.setItem(itemId: $itemId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetItemImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, itemId);

  /// Create a copy of AddInventoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetItemImplCopyWith<_$SetItemImpl> get copyWith =>
      __$$SetItemImplCopyWithImpl<_$SetItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String description, int quantity,
            int available, double rent)
        updateFields,
    required TResult Function() createItem,
    required TResult Function() updateItem,
    required TResult Function(String itemId) setItem,
  }) {
    return setItem(itemId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String description, int quantity,
            int available, double rent)?
        updateFields,
    TResult? Function()? createItem,
    TResult? Function()? updateItem,
    TResult? Function(String itemId)? setItem,
  }) {
    return setItem?.call(itemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String description, int quantity,
            int available, double rent)?
        updateFields,
    TResult Function()? createItem,
    TResult Function()? updateItem,
    TResult Function(String itemId)? setItem,
    required TResult orElse(),
  }) {
    if (setItem != null) {
      return setItem(itemId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateFields value) updateFields,
    required TResult Function(_CreateItem value) createItem,
    required TResult Function(_UpdateItem value) updateItem,
    required TResult Function(_SetItem value) setItem,
  }) {
    return setItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateFields value)? updateFields,
    TResult? Function(_CreateItem value)? createItem,
    TResult? Function(_UpdateItem value)? updateItem,
    TResult? Function(_SetItem value)? setItem,
  }) {
    return setItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateFields value)? updateFields,
    TResult Function(_CreateItem value)? createItem,
    TResult Function(_UpdateItem value)? updateItem,
    TResult Function(_SetItem value)? setItem,
    required TResult orElse(),
  }) {
    if (setItem != null) {
      return setItem(this);
    }
    return orElse();
  }
}

abstract class _SetItem implements AddInventoryEvent {
  const factory _SetItem(final String itemId) = _$SetItemImpl;

  String get itemId;

  /// Create a copy of AddInventoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetItemImplCopyWith<_$SetItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
