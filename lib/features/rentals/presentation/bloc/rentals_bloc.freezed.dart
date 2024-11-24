// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rentals_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RentalsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRentals,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRentals,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRentals,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadRentals value) loadRentals,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadRentals value)? loadRentals,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRentals value)? loadRentals,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RentalsEventCopyWith<$Res> {
  factory $RentalsEventCopyWith(
          RentalsEvent value, $Res Function(RentalsEvent) then) =
      _$RentalsEventCopyWithImpl<$Res, RentalsEvent>;
}

/// @nodoc
class _$RentalsEventCopyWithImpl<$Res, $Val extends RentalsEvent>
    implements $RentalsEventCopyWith<$Res> {
  _$RentalsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RentalsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadRentalsImplCopyWith<$Res> {
  factory _$$LoadRentalsImplCopyWith(
          _$LoadRentalsImpl value, $Res Function(_$LoadRentalsImpl) then) =
      __$$LoadRentalsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadRentalsImplCopyWithImpl<$Res>
    extends _$RentalsEventCopyWithImpl<$Res, _$LoadRentalsImpl>
    implements _$$LoadRentalsImplCopyWith<$Res> {
  __$$LoadRentalsImplCopyWithImpl(
      _$LoadRentalsImpl _value, $Res Function(_$LoadRentalsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RentalsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadRentalsImpl implements _LoadRentals {
  const _$LoadRentalsImpl();

  @override
  String toString() {
    return 'RentalsEvent.loadRentals()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadRentalsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRentals,
  }) {
    return loadRentals();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRentals,
  }) {
    return loadRentals?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRentals,
    required TResult orElse(),
  }) {
    if (loadRentals != null) {
      return loadRentals();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadRentals value) loadRentals,
  }) {
    return loadRentals(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadRentals value)? loadRentals,
  }) {
    return loadRentals?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadRentals value)? loadRentals,
    required TResult orElse(),
  }) {
    if (loadRentals != null) {
      return loadRentals(this);
    }
    return orElse();
  }
}

abstract class _LoadRentals implements RentalsEvent {
  const factory _LoadRentals() = _$LoadRentalsImpl;
}

/// @nodoc
mixin _$RentalsState {
  List<RentalEntity> get rentals => throw _privateConstructorUsedError;

  /// Create a copy of RentalsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RentalsStateCopyWith<RentalsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RentalsStateCopyWith<$Res> {
  factory $RentalsStateCopyWith(
          RentalsState value, $Res Function(RentalsState) then) =
      _$RentalsStateCopyWithImpl<$Res, RentalsState>;
  @useResult
  $Res call({List<RentalEntity> rentals});
}

/// @nodoc
class _$RentalsStateCopyWithImpl<$Res, $Val extends RentalsState>
    implements $RentalsStateCopyWith<$Res> {
  _$RentalsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RentalsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rentals = null,
  }) {
    return _then(_value.copyWith(
      rentals: null == rentals
          ? _value.rentals
          : rentals // ignore: cast_nullable_to_non_nullable
              as List<RentalEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RentalsStateImplCopyWith<$Res>
    implements $RentalsStateCopyWith<$Res> {
  factory _$$RentalsStateImplCopyWith(
          _$RentalsStateImpl value, $Res Function(_$RentalsStateImpl) then) =
      __$$RentalsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RentalEntity> rentals});
}

/// @nodoc
class __$$RentalsStateImplCopyWithImpl<$Res>
    extends _$RentalsStateCopyWithImpl<$Res, _$RentalsStateImpl>
    implements _$$RentalsStateImplCopyWith<$Res> {
  __$$RentalsStateImplCopyWithImpl(
      _$RentalsStateImpl _value, $Res Function(_$RentalsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RentalsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rentals = null,
  }) {
    return _then(_$RentalsStateImpl(
      rentals: null == rentals
          ? _value._rentals
          : rentals // ignore: cast_nullable_to_non_nullable
              as List<RentalEntity>,
    ));
  }
}

/// @nodoc

class _$RentalsStateImpl implements _RentalsState {
  const _$RentalsStateImpl({final List<RentalEntity> rentals = const []})
      : _rentals = rentals;

  final List<RentalEntity> _rentals;
  @override
  @JsonKey()
  List<RentalEntity> get rentals {
    if (_rentals is EqualUnmodifiableListView) return _rentals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rentals);
  }

  @override
  String toString() {
    return 'RentalsState(rentals: $rentals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RentalsStateImpl &&
            const DeepCollectionEquality().equals(other._rentals, _rentals));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rentals));

  /// Create a copy of RentalsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RentalsStateImplCopyWith<_$RentalsStateImpl> get copyWith =>
      __$$RentalsStateImplCopyWithImpl<_$RentalsStateImpl>(this, _$identity);
}

abstract class _RentalsState implements RentalsState {
  const factory _RentalsState({final List<RentalEntity> rentals}) =
      _$RentalsStateImpl;

  @override
  List<RentalEntity> get rentals;

  /// Create a copy of RentalsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RentalsStateImplCopyWith<_$RentalsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
