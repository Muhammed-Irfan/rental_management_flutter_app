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
    required TResult Function(String name) updateName,
    required TResult Function(String phone) updatePhone,
    required TResult Function(String address) updateAddress,
    required TResult Function() createCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? updateName,
    TResult? Function(String phone)? updatePhone,
    TResult? Function(String address)? updateAddress,
    TResult? Function()? createCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? updateName,
    TResult Function(String phone)? updatePhone,
    TResult Function(String address)? updateAddress,
    TResult Function()? createCustomer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdatePhone value) updatePhone,
    required TResult Function(_UpdateAddress value) updateAddress,
    required TResult Function(_CreateCustomer value) createCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdatePhone value)? updatePhone,
    TResult? Function(_UpdateAddress value)? updateAddress,
    TResult? Function(_CreateCustomer value)? createCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhone value)? updatePhone,
    TResult Function(_UpdateAddress value)? updateAddress,
    TResult Function(_CreateCustomer value)? createCustomer,
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
abstract class _$$UpdateNameImplCopyWith<$Res> {
  factory _$$UpdateNameImplCopyWith(
          _$UpdateNameImpl value, $Res Function(_$UpdateNameImpl) then) =
      __$$UpdateNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$UpdateNameImplCopyWithImpl<$Res>
    extends _$AddCustomerEventCopyWithImpl<$Res, _$UpdateNameImpl>
    implements _$$UpdateNameImplCopyWith<$Res> {
  __$$UpdateNameImplCopyWithImpl(
      _$UpdateNameImpl _value, $Res Function(_$UpdateNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddCustomerEvent
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
    return 'AddCustomerEvent.updateName(name: $name)';
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

  /// Create a copy of AddCustomerEvent
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
    required TResult Function(String phone) updatePhone,
    required TResult Function(String address) updateAddress,
    required TResult Function() createCustomer,
  }) {
    return updateName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? updateName,
    TResult? Function(String phone)? updatePhone,
    TResult? Function(String address)? updateAddress,
    TResult? Function()? createCustomer,
  }) {
    return updateName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? updateName,
    TResult Function(String phone)? updatePhone,
    TResult Function(String address)? updateAddress,
    TResult Function()? createCustomer,
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
    required TResult Function(_UpdatePhone value) updatePhone,
    required TResult Function(_UpdateAddress value) updateAddress,
    required TResult Function(_CreateCustomer value) createCustomer,
  }) {
    return updateName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdatePhone value)? updatePhone,
    TResult? Function(_UpdateAddress value)? updateAddress,
    TResult? Function(_CreateCustomer value)? createCustomer,
  }) {
    return updateName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhone value)? updatePhone,
    TResult Function(_UpdateAddress value)? updateAddress,
    TResult Function(_CreateCustomer value)? createCustomer,
    required TResult orElse(),
  }) {
    if (updateName != null) {
      return updateName(this);
    }
    return orElse();
  }
}

abstract class _UpdateName implements AddCustomerEvent {
  const factory _UpdateName(final String name) = _$UpdateNameImpl;

  String get name;

  /// Create a copy of AddCustomerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateNameImplCopyWith<_$UpdateNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePhoneImplCopyWith<$Res> {
  factory _$$UpdatePhoneImplCopyWith(
          _$UpdatePhoneImpl value, $Res Function(_$UpdatePhoneImpl) then) =
      __$$UpdatePhoneImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$UpdatePhoneImplCopyWithImpl<$Res>
    extends _$AddCustomerEventCopyWithImpl<$Res, _$UpdatePhoneImpl>
    implements _$$UpdatePhoneImplCopyWith<$Res> {
  __$$UpdatePhoneImplCopyWithImpl(
      _$UpdatePhoneImpl _value, $Res Function(_$UpdatePhoneImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddCustomerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$UpdatePhoneImpl(
      null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdatePhoneImpl implements _UpdatePhone {
  const _$UpdatePhoneImpl(this.phone);

  @override
  final String phone;

  @override
  String toString() {
    return 'AddCustomerEvent.updatePhone(phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePhoneImpl &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  /// Create a copy of AddCustomerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePhoneImplCopyWith<_$UpdatePhoneImpl> get copyWith =>
      __$$UpdatePhoneImplCopyWithImpl<_$UpdatePhoneImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) updateName,
    required TResult Function(String phone) updatePhone,
    required TResult Function(String address) updateAddress,
    required TResult Function() createCustomer,
  }) {
    return updatePhone(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? updateName,
    TResult? Function(String phone)? updatePhone,
    TResult? Function(String address)? updateAddress,
    TResult? Function()? createCustomer,
  }) {
    return updatePhone?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? updateName,
    TResult Function(String phone)? updatePhone,
    TResult Function(String address)? updateAddress,
    TResult Function()? createCustomer,
    required TResult orElse(),
  }) {
    if (updatePhone != null) {
      return updatePhone(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdatePhone value) updatePhone,
    required TResult Function(_UpdateAddress value) updateAddress,
    required TResult Function(_CreateCustomer value) createCustomer,
  }) {
    return updatePhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdatePhone value)? updatePhone,
    TResult? Function(_UpdateAddress value)? updateAddress,
    TResult? Function(_CreateCustomer value)? createCustomer,
  }) {
    return updatePhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhone value)? updatePhone,
    TResult Function(_UpdateAddress value)? updateAddress,
    TResult Function(_CreateCustomer value)? createCustomer,
    required TResult orElse(),
  }) {
    if (updatePhone != null) {
      return updatePhone(this);
    }
    return orElse();
  }
}

abstract class _UpdatePhone implements AddCustomerEvent {
  const factory _UpdatePhone(final String phone) = _$UpdatePhoneImpl;

  String get phone;

  /// Create a copy of AddCustomerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePhoneImplCopyWith<_$UpdatePhoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateAddressImplCopyWith<$Res> {
  factory _$$UpdateAddressImplCopyWith(
          _$UpdateAddressImpl value, $Res Function(_$UpdateAddressImpl) then) =
      __$$UpdateAddressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String address});
}

/// @nodoc
class __$$UpdateAddressImplCopyWithImpl<$Res>
    extends _$AddCustomerEventCopyWithImpl<$Res, _$UpdateAddressImpl>
    implements _$$UpdateAddressImplCopyWith<$Res> {
  __$$UpdateAddressImplCopyWithImpl(
      _$UpdateAddressImpl _value, $Res Function(_$UpdateAddressImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddCustomerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$UpdateAddressImpl(
      null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateAddressImpl implements _UpdateAddress {
  const _$UpdateAddressImpl(this.address);

  @override
  final String address;

  @override
  String toString() {
    return 'AddCustomerEvent.updateAddress(address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAddressImpl &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address);

  /// Create a copy of AddCustomerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAddressImplCopyWith<_$UpdateAddressImpl> get copyWith =>
      __$$UpdateAddressImplCopyWithImpl<_$UpdateAddressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) updateName,
    required TResult Function(String phone) updatePhone,
    required TResult Function(String address) updateAddress,
    required TResult Function() createCustomer,
  }) {
    return updateAddress(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? updateName,
    TResult? Function(String phone)? updatePhone,
    TResult? Function(String address)? updateAddress,
    TResult? Function()? createCustomer,
  }) {
    return updateAddress?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? updateName,
    TResult Function(String phone)? updatePhone,
    TResult Function(String address)? updateAddress,
    TResult Function()? createCustomer,
    required TResult orElse(),
  }) {
    if (updateAddress != null) {
      return updateAddress(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdatePhone value) updatePhone,
    required TResult Function(_UpdateAddress value) updateAddress,
    required TResult Function(_CreateCustomer value) createCustomer,
  }) {
    return updateAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdatePhone value)? updatePhone,
    TResult? Function(_UpdateAddress value)? updateAddress,
    TResult? Function(_CreateCustomer value)? createCustomer,
  }) {
    return updateAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhone value)? updatePhone,
    TResult Function(_UpdateAddress value)? updateAddress,
    TResult Function(_CreateCustomer value)? createCustomer,
    required TResult orElse(),
  }) {
    if (updateAddress != null) {
      return updateAddress(this);
    }
    return orElse();
  }
}

abstract class _UpdateAddress implements AddCustomerEvent {
  const factory _UpdateAddress(final String address) = _$UpdateAddressImpl;

  String get address;

  /// Create a copy of AddCustomerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateAddressImplCopyWith<_$UpdateAddressImpl> get copyWith =>
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
    required TResult Function(String name) updateName,
    required TResult Function(String phone) updatePhone,
    required TResult Function(String address) updateAddress,
    required TResult Function() createCustomer,
  }) {
    return createCustomer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? updateName,
    TResult? Function(String phone)? updatePhone,
    TResult? Function(String address)? updateAddress,
    TResult? Function()? createCustomer,
  }) {
    return createCustomer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? updateName,
    TResult Function(String phone)? updatePhone,
    TResult Function(String address)? updateAddress,
    TResult Function()? createCustomer,
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
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdatePhone value) updatePhone,
    required TResult Function(_UpdateAddress value) updateAddress,
    required TResult Function(_CreateCustomer value) createCustomer,
  }) {
    return createCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdatePhone value)? updatePhone,
    TResult? Function(_UpdateAddress value)? updateAddress,
    TResult? Function(_CreateCustomer value)? createCustomer,
  }) {
    return createCustomer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhone value)? updatePhone,
    TResult Function(_UpdateAddress value)? updateAddress,
    TResult Function(_CreateCustomer value)? createCustomer,
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
