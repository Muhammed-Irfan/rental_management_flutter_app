// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customers_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCustomers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCustomers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCustomers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCustomers value) loadCustomers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCustomers value)? loadCustomers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCustomers value)? loadCustomers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomersEventCopyWith<$Res> {
  factory $CustomersEventCopyWith(
          CustomersEvent value, $Res Function(CustomersEvent) then) =
      _$CustomersEventCopyWithImpl<$Res, CustomersEvent>;
}

/// @nodoc
class _$CustomersEventCopyWithImpl<$Res, $Val extends CustomersEvent>
    implements $CustomersEventCopyWith<$Res> {
  _$CustomersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadCustomersImplCopyWith<$Res> {
  factory _$$LoadCustomersImplCopyWith(
          _$LoadCustomersImpl value, $Res Function(_$LoadCustomersImpl) then) =
      __$$LoadCustomersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadCustomersImplCopyWithImpl<$Res>
    extends _$CustomersEventCopyWithImpl<$Res, _$LoadCustomersImpl>
    implements _$$LoadCustomersImplCopyWith<$Res> {
  __$$LoadCustomersImplCopyWithImpl(
      _$LoadCustomersImpl _value, $Res Function(_$LoadCustomersImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadCustomersImpl implements _LoadCustomers {
  const _$LoadCustomersImpl();

  @override
  String toString() {
    return 'CustomersEvent.loadCustomers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadCustomersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCustomers,
  }) {
    return loadCustomers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCustomers,
  }) {
    return loadCustomers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCustomers,
    required TResult orElse(),
  }) {
    if (loadCustomers != null) {
      return loadCustomers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCustomers value) loadCustomers,
  }) {
    return loadCustomers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCustomers value)? loadCustomers,
  }) {
    return loadCustomers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCustomers value)? loadCustomers,
    required TResult orElse(),
  }) {
    if (loadCustomers != null) {
      return loadCustomers(this);
    }
    return orElse();
  }
}

abstract class _LoadCustomers implements CustomersEvent {
  const factory _LoadCustomers() = _$LoadCustomersImpl;
}

/// @nodoc
mixin _$CustomersState {
  List<CustomerEntity> get customers => throw _privateConstructorUsedError;

  /// Create a copy of CustomersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomersStateCopyWith<CustomersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomersStateCopyWith<$Res> {
  factory $CustomersStateCopyWith(
          CustomersState value, $Res Function(CustomersState) then) =
      _$CustomersStateCopyWithImpl<$Res, CustomersState>;
  @useResult
  $Res call({List<CustomerEntity> customers});
}

/// @nodoc
class _$CustomersStateCopyWithImpl<$Res, $Val extends CustomersState>
    implements $CustomersStateCopyWith<$Res> {
  _$CustomersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customers = null,
  }) {
    return _then(_value.copyWith(
      customers: null == customers
          ? _value.customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<CustomerEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomersStateImplCopyWith<$Res>
    implements $CustomersStateCopyWith<$Res> {
  factory _$$CustomersStateImplCopyWith(_$CustomersStateImpl value,
          $Res Function(_$CustomersStateImpl) then) =
      __$$CustomersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CustomerEntity> customers});
}

/// @nodoc
class __$$CustomersStateImplCopyWithImpl<$Res>
    extends _$CustomersStateCopyWithImpl<$Res, _$CustomersStateImpl>
    implements _$$CustomersStateImplCopyWith<$Res> {
  __$$CustomersStateImplCopyWithImpl(
      _$CustomersStateImpl _value, $Res Function(_$CustomersStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customers = null,
  }) {
    return _then(_$CustomersStateImpl(
      customers: null == customers
          ? _value._customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<CustomerEntity>,
    ));
  }
}

/// @nodoc

class _$CustomersStateImpl implements _CustomersState {
  const _$CustomersStateImpl({final List<CustomerEntity> customers = const []})
      : _customers = customers;

  final List<CustomerEntity> _customers;
  @override
  @JsonKey()
  List<CustomerEntity> get customers {
    if (_customers is EqualUnmodifiableListView) return _customers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customers);
  }

  @override
  String toString() {
    return 'CustomersState(customers: $customers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomersStateImpl &&
            const DeepCollectionEquality()
                .equals(other._customers, _customers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_customers));

  /// Create a copy of CustomersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomersStateImplCopyWith<_$CustomersStateImpl> get copyWith =>
      __$$CustomersStateImplCopyWithImpl<_$CustomersStateImpl>(
          this, _$identity);
}

abstract class _CustomersState implements CustomersState {
  const factory _CustomersState({final List<CustomerEntity> customers}) =
      _$CustomersStateImpl;

  @override
  List<CustomerEntity> get customers;

  /// Create a copy of CustomersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomersStateImplCopyWith<_$CustomersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
