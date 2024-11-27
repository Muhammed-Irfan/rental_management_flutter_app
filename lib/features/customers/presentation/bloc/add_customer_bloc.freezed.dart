// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_customer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddCustomerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String phone, String address)
        updateFields,
    required TResult Function() createCustomer,
    required TResult Function() updateCustomer,
    required TResult Function(String id) setCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String phone, String address)? updateFields,
    TResult? Function()? createCustomer,
    TResult? Function()? updateCustomer,
    TResult? Function(String id)? setCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String phone, String address)? updateFields,
    TResult Function()? createCustomer,
    TResult Function()? updateCustomer,
    TResult Function(String id)? setCustomer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateFields value) updateFields,
    required TResult Function(_CreateCustomer value) createCustomer,
    required TResult Function(_UpdateCustomer value) updateCustomer,
    required TResult Function(_SetCustomer value) setCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateFields value)? updateFields,
    TResult? Function(_CreateCustomer value)? createCustomer,
    TResult? Function(_UpdateCustomer value)? updateCustomer,
    TResult? Function(_SetCustomer value)? setCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateFields value)? updateFields,
    TResult Function(_CreateCustomer value)? createCustomer,
    TResult Function(_UpdateCustomer value)? updateCustomer,
    TResult Function(_SetCustomer value)? setCustomer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCustomerEventCopyWith<$Res> {
  factory $AddCustomerEventCopyWith(
          AddCustomerEvent value, $Res Function(AddCustomerEvent) then) =
      _$AddCustomerEventCopyWithImpl<$Res, AddCustomerEvent>;
}

/// @nodoc
class _$AddCustomerEventCopyWithImpl<$Res, $Val extends AddCustomerEvent>
    implements $AddCustomerEventCopyWith<$Res> {
  _$AddCustomerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddCustomerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UpdateFieldsImplCopyWith<$Res> {
  factory _$$UpdateFieldsImplCopyWith(
          _$UpdateFieldsImpl value, $Res Function(_$UpdateFieldsImpl) then) =
      __$$UpdateFieldsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String phone, String address});
}

/// @nodoc
class __$$UpdateFieldsImplCopyWithImpl<$Res>
    extends _$AddCustomerEventCopyWithImpl<$Res, _$UpdateFieldsImpl>
    implements _$$UpdateFieldsImplCopyWith<$Res> {
  __$$UpdateFieldsImplCopyWithImpl(
      _$UpdateFieldsImpl _value, $Res Function(_$UpdateFieldsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddCustomerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phone = null,
    Object? address = null,
  }) {
    return _then(_$UpdateFieldsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateFieldsImpl implements _UpdateFields {
  const _$UpdateFieldsImpl(
      {required this.name, required this.phone, required this.address});

  @override
  final String name;
  @override
  final String phone;
  @override
  final String address;

  @override
  String toString() {
    return 'AddCustomerEvent.updateFields(name: $name, phone: $phone, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFieldsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, phone, address);

  /// Create a copy of AddCustomerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFieldsImplCopyWith<_$UpdateFieldsImpl> get copyWith =>
      __$$UpdateFieldsImplCopyWithImpl<_$UpdateFieldsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String phone, String address)
        updateFields,
    required TResult Function() createCustomer,
    required TResult Function() updateCustomer,
    required TResult Function(String id) setCustomer,
  }) {
    return updateFields(name, phone, address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String phone, String address)? updateFields,
    TResult? Function()? createCustomer,
    TResult? Function()? updateCustomer,
    TResult? Function(String id)? setCustomer,
  }) {
    return updateFields?.call(name, phone, address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String phone, String address)? updateFields,
    TResult Function()? createCustomer,
    TResult Function()? updateCustomer,
    TResult Function(String id)? setCustomer,
    required TResult orElse(),
  }) {
    if (updateFields != null) {
      return updateFields(name, phone, address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateFields value) updateFields,
    required TResult Function(_CreateCustomer value) createCustomer,
    required TResult Function(_UpdateCustomer value) updateCustomer,
    required TResult Function(_SetCustomer value) setCustomer,
  }) {
    return updateFields(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateFields value)? updateFields,
    TResult? Function(_CreateCustomer value)? createCustomer,
    TResult? Function(_UpdateCustomer value)? updateCustomer,
    TResult? Function(_SetCustomer value)? setCustomer,
  }) {
    return updateFields?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateFields value)? updateFields,
    TResult Function(_CreateCustomer value)? createCustomer,
    TResult Function(_UpdateCustomer value)? updateCustomer,
    TResult Function(_SetCustomer value)? setCustomer,
    required TResult orElse(),
  }) {
    if (updateFields != null) {
      return updateFields(this);
    }
    return orElse();
  }
}

abstract class _UpdateFields implements AddCustomerEvent {
  const factory _UpdateFields(
      {required final String name,
      required final String phone,
      required final String address}) = _$UpdateFieldsImpl;

  String get name;
  String get phone;
  String get address;

  /// Create a copy of AddCustomerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateFieldsImplCopyWith<_$UpdateFieldsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateCustomerImplCopyWith<$Res> {
  factory _$$CreateCustomerImplCopyWith(_$CreateCustomerImpl value,
          $Res Function(_$CreateCustomerImpl) then) =
      __$$CreateCustomerImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateCustomerImplCopyWithImpl<$Res>
    extends _$AddCustomerEventCopyWithImpl<$Res, _$CreateCustomerImpl>
    implements _$$CreateCustomerImplCopyWith<$Res> {
  __$$CreateCustomerImplCopyWithImpl(
      _$CreateCustomerImpl _value, $Res Function(_$CreateCustomerImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddCustomerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CreateCustomerImpl implements _CreateCustomer {
  const _$CreateCustomerImpl();

  @override
  String toString() {
    return 'AddCustomerEvent.createCustomer()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreateCustomerImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String phone, String address)
        updateFields,
    required TResult Function() createCustomer,
    required TResult Function() updateCustomer,
    required TResult Function(String id) setCustomer,
  }) {
    return createCustomer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String phone, String address)? updateFields,
    TResult? Function()? createCustomer,
    TResult? Function()? updateCustomer,
    TResult? Function(String id)? setCustomer,
  }) {
    return createCustomer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String phone, String address)? updateFields,
    TResult Function()? createCustomer,
    TResult Function()? updateCustomer,
    TResult Function(String id)? setCustomer,
    required TResult orElse(),
  }) {
    if (createCustomer != null) {
      return createCustomer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateFields value) updateFields,
    required TResult Function(_CreateCustomer value) createCustomer,
    required TResult Function(_UpdateCustomer value) updateCustomer,
    required TResult Function(_SetCustomer value) setCustomer,
  }) {
    return createCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateFields value)? updateFields,
    TResult? Function(_CreateCustomer value)? createCustomer,
    TResult? Function(_UpdateCustomer value)? updateCustomer,
    TResult? Function(_SetCustomer value)? setCustomer,
  }) {
    return createCustomer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateFields value)? updateFields,
    TResult Function(_CreateCustomer value)? createCustomer,
    TResult Function(_UpdateCustomer value)? updateCustomer,
    TResult Function(_SetCustomer value)? setCustomer,
    required TResult orElse(),
  }) {
    if (createCustomer != null) {
      return createCustomer(this);
    }
    return orElse();
  }
}

abstract class _CreateCustomer implements AddCustomerEvent {
  const factory _CreateCustomer() = _$CreateCustomerImpl;
}

/// @nodoc
abstract class _$$UpdateCustomerImplCopyWith<$Res> {
  factory _$$UpdateCustomerImplCopyWith(_$UpdateCustomerImpl value,
          $Res Function(_$UpdateCustomerImpl) then) =
      __$$UpdateCustomerImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateCustomerImplCopyWithImpl<$Res>
    extends _$AddCustomerEventCopyWithImpl<$Res, _$UpdateCustomerImpl>
    implements _$$UpdateCustomerImplCopyWith<$Res> {
  __$$UpdateCustomerImplCopyWithImpl(
      _$UpdateCustomerImpl _value, $Res Function(_$UpdateCustomerImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddCustomerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdateCustomerImpl implements _UpdateCustomer {
  const _$UpdateCustomerImpl();

  @override
  String toString() {
    return 'AddCustomerEvent.updateCustomer()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateCustomerImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String phone, String address)
        updateFields,
    required TResult Function() createCustomer,
    required TResult Function() updateCustomer,
    required TResult Function(String id) setCustomer,
  }) {
    return updateCustomer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String phone, String address)? updateFields,
    TResult? Function()? createCustomer,
    TResult? Function()? updateCustomer,
    TResult? Function(String id)? setCustomer,
  }) {
    return updateCustomer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String phone, String address)? updateFields,
    TResult Function()? createCustomer,
    TResult Function()? updateCustomer,
    TResult Function(String id)? setCustomer,
    required TResult orElse(),
  }) {
    if (updateCustomer != null) {
      return updateCustomer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateFields value) updateFields,
    required TResult Function(_CreateCustomer value) createCustomer,
    required TResult Function(_UpdateCustomer value) updateCustomer,
    required TResult Function(_SetCustomer value) setCustomer,
  }) {
    return updateCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateFields value)? updateFields,
    TResult? Function(_CreateCustomer value)? createCustomer,
    TResult? Function(_UpdateCustomer value)? updateCustomer,
    TResult? Function(_SetCustomer value)? setCustomer,
  }) {
    return updateCustomer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateFields value)? updateFields,
    TResult Function(_CreateCustomer value)? createCustomer,
    TResult Function(_UpdateCustomer value)? updateCustomer,
    TResult Function(_SetCustomer value)? setCustomer,
    required TResult orElse(),
  }) {
    if (updateCustomer != null) {
      return updateCustomer(this);
    }
    return orElse();
  }
}

abstract class _UpdateCustomer implements AddCustomerEvent {
  const factory _UpdateCustomer() = _$UpdateCustomerImpl;
}

/// @nodoc
abstract class _$$SetCustomerImplCopyWith<$Res> {
  factory _$$SetCustomerImplCopyWith(
          _$SetCustomerImpl value, $Res Function(_$SetCustomerImpl) then) =
      __$$SetCustomerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$SetCustomerImplCopyWithImpl<$Res>
    extends _$AddCustomerEventCopyWithImpl<$Res, _$SetCustomerImpl>
    implements _$$SetCustomerImplCopyWith<$Res> {
  __$$SetCustomerImplCopyWithImpl(
      _$SetCustomerImpl _value, $Res Function(_$SetCustomerImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddCustomerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$SetCustomerImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetCustomerImpl implements _SetCustomer {
  const _$SetCustomerImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'AddCustomerEvent.setCustomer(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetCustomerImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of AddCustomerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetCustomerImplCopyWith<_$SetCustomerImpl> get copyWith =>
      __$$SetCustomerImplCopyWithImpl<_$SetCustomerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String phone, String address)
        updateFields,
    required TResult Function() createCustomer,
    required TResult Function() updateCustomer,
    required TResult Function(String id) setCustomer,
  }) {
    return setCustomer(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String phone, String address)? updateFields,
    TResult? Function()? createCustomer,
    TResult? Function()? updateCustomer,
    TResult? Function(String id)? setCustomer,
  }) {
    return setCustomer?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String phone, String address)? updateFields,
    TResult Function()? createCustomer,
    TResult Function()? updateCustomer,
    TResult Function(String id)? setCustomer,
    required TResult orElse(),
  }) {
    if (setCustomer != null) {
      return setCustomer(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateFields value) updateFields,
    required TResult Function(_CreateCustomer value) createCustomer,
    required TResult Function(_UpdateCustomer value) updateCustomer,
    required TResult Function(_SetCustomer value) setCustomer,
  }) {
    return setCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateFields value)? updateFields,
    TResult? Function(_CreateCustomer value)? createCustomer,
    TResult? Function(_UpdateCustomer value)? updateCustomer,
    TResult? Function(_SetCustomer value)? setCustomer,
  }) {
    return setCustomer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateFields value)? updateFields,
    TResult Function(_CreateCustomer value)? createCustomer,
    TResult Function(_UpdateCustomer value)? updateCustomer,
    TResult Function(_SetCustomer value)? setCustomer,
    required TResult orElse(),
  }) {
    if (setCustomer != null) {
      return setCustomer(this);
    }
    return orElse();
  }
}

abstract class _SetCustomer implements AddCustomerEvent {
  const factory _SetCustomer(final String id) = _$SetCustomerImpl;

  String get id;

  /// Create a copy of AddCustomerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetCustomerImplCopyWith<_$SetCustomerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddCustomerState {
  CustomerEntity get customer => throw _privateConstructorUsedError;

  /// Create a copy of AddCustomerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddCustomerStateCopyWith<AddCustomerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCustomerStateCopyWith<$Res> {
  factory $AddCustomerStateCopyWith(
          AddCustomerState value, $Res Function(AddCustomerState) then) =
      _$AddCustomerStateCopyWithImpl<$Res, AddCustomerState>;
  @useResult
  $Res call({CustomerEntity customer});

  $CustomerEntityCopyWith<$Res> get customer;
}

/// @nodoc
class _$AddCustomerStateCopyWithImpl<$Res, $Val extends AddCustomerState>
    implements $AddCustomerStateCopyWith<$Res> {
  _$AddCustomerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddCustomerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = null,
  }) {
    return _then(_value.copyWith(
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as CustomerEntity,
    ) as $Val);
  }

  /// Create a copy of AddCustomerState
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
abstract class _$$AddCustomerStateImplCopyWith<$Res>
    implements $AddCustomerStateCopyWith<$Res> {
  factory _$$AddCustomerStateImplCopyWith(_$AddCustomerStateImpl value,
          $Res Function(_$AddCustomerStateImpl) then) =
      __$$AddCustomerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomerEntity customer});

  @override
  $CustomerEntityCopyWith<$Res> get customer;
}

/// @nodoc
class __$$AddCustomerStateImplCopyWithImpl<$Res>
    extends _$AddCustomerStateCopyWithImpl<$Res, _$AddCustomerStateImpl>
    implements _$$AddCustomerStateImplCopyWith<$Res> {
  __$$AddCustomerStateImplCopyWithImpl(_$AddCustomerStateImpl _value,
      $Res Function(_$AddCustomerStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddCustomerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = null,
  }) {
    return _then(_$AddCustomerStateImpl(
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as CustomerEntity,
    ));
  }
}

/// @nodoc

class _$AddCustomerStateImpl implements _AddCustomerState {
  const _$AddCustomerStateImpl({required this.customer});

  @override
  final CustomerEntity customer;

  @override
  String toString() {
    return 'AddCustomerState(customer: $customer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCustomerStateImpl &&
            (identical(other.customer, customer) ||
                other.customer == customer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customer);

  /// Create a copy of AddCustomerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCustomerStateImplCopyWith<_$AddCustomerStateImpl> get copyWith =>
      __$$AddCustomerStateImplCopyWithImpl<_$AddCustomerStateImpl>(
          this, _$identity);
}

abstract class _AddCustomerState implements AddCustomerState {
  const factory _AddCustomerState({required final CustomerEntity customer}) =
      _$AddCustomerStateImpl;

  @override
  CustomerEntity get customer;

  /// Create a copy of AddCustomerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddCustomerStateImplCopyWith<_$AddCustomerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
