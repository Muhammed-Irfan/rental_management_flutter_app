// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_overview_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DashboardOverviewEntity {
  int get activeRentalsCount => throw _privateConstructorUsedError;
  double get pendingRentalAmount => throw _privateConstructorUsedError;
  double get totalAmountCollected => throw _privateConstructorUsedError;

  /// Create a copy of DashboardOverviewEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardOverviewEntityCopyWith<DashboardOverviewEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardOverviewEntityCopyWith<$Res> {
  factory $DashboardOverviewEntityCopyWith(DashboardOverviewEntity value,
          $Res Function(DashboardOverviewEntity) then) =
      _$DashboardOverviewEntityCopyWithImpl<$Res, DashboardOverviewEntity>;
  @useResult
  $Res call(
      {int activeRentalsCount,
      double pendingRentalAmount,
      double totalAmountCollected});
}

/// @nodoc
class _$DashboardOverviewEntityCopyWithImpl<$Res,
        $Val extends DashboardOverviewEntity>
    implements $DashboardOverviewEntityCopyWith<$Res> {
  _$DashboardOverviewEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardOverviewEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeRentalsCount = null,
    Object? pendingRentalAmount = null,
    Object? totalAmountCollected = null,
  }) {
    return _then(_value.copyWith(
      activeRentalsCount: null == activeRentalsCount
          ? _value.activeRentalsCount
          : activeRentalsCount // ignore: cast_nullable_to_non_nullable
              as int,
      pendingRentalAmount: null == pendingRentalAmount
          ? _value.pendingRentalAmount
          : pendingRentalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      totalAmountCollected: null == totalAmountCollected
          ? _value.totalAmountCollected
          : totalAmountCollected // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DashboardOverviewEntityImplCopyWith<$Res>
    implements $DashboardOverviewEntityCopyWith<$Res> {
  factory _$$DashboardOverviewEntityImplCopyWith(
          _$DashboardOverviewEntityImpl value,
          $Res Function(_$DashboardOverviewEntityImpl) then) =
      __$$DashboardOverviewEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int activeRentalsCount,
      double pendingRentalAmount,
      double totalAmountCollected});
}

/// @nodoc
class __$$DashboardOverviewEntityImplCopyWithImpl<$Res>
    extends _$DashboardOverviewEntityCopyWithImpl<$Res,
        _$DashboardOverviewEntityImpl>
    implements _$$DashboardOverviewEntityImplCopyWith<$Res> {
  __$$DashboardOverviewEntityImplCopyWithImpl(
      _$DashboardOverviewEntityImpl _value,
      $Res Function(_$DashboardOverviewEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardOverviewEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeRentalsCount = null,
    Object? pendingRentalAmount = null,
    Object? totalAmountCollected = null,
  }) {
    return _then(_$DashboardOverviewEntityImpl(
      activeRentalsCount: null == activeRentalsCount
          ? _value.activeRentalsCount
          : activeRentalsCount // ignore: cast_nullable_to_non_nullable
              as int,
      pendingRentalAmount: null == pendingRentalAmount
          ? _value.pendingRentalAmount
          : pendingRentalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      totalAmountCollected: null == totalAmountCollected
          ? _value.totalAmountCollected
          : totalAmountCollected // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$DashboardOverviewEntityImpl implements _DashboardOverviewEntity {
  const _$DashboardOverviewEntityImpl(
      {required this.activeRentalsCount,
      required this.pendingRentalAmount,
      required this.totalAmountCollected});

  @override
  final int activeRentalsCount;
  @override
  final double pendingRentalAmount;
  @override
  final double totalAmountCollected;

  @override
  String toString() {
    return 'DashboardOverviewEntity(activeRentalsCount: $activeRentalsCount, pendingRentalAmount: $pendingRentalAmount, totalAmountCollected: $totalAmountCollected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardOverviewEntityImpl &&
            (identical(other.activeRentalsCount, activeRentalsCount) ||
                other.activeRentalsCount == activeRentalsCount) &&
            (identical(other.pendingRentalAmount, pendingRentalAmount) ||
                other.pendingRentalAmount == pendingRentalAmount) &&
            (identical(other.totalAmountCollected, totalAmountCollected) ||
                other.totalAmountCollected == totalAmountCollected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activeRentalsCount,
      pendingRentalAmount, totalAmountCollected);

  /// Create a copy of DashboardOverviewEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardOverviewEntityImplCopyWith<_$DashboardOverviewEntityImpl>
      get copyWith => __$$DashboardOverviewEntityImplCopyWithImpl<
          _$DashboardOverviewEntityImpl>(this, _$identity);
}

abstract class _DashboardOverviewEntity implements DashboardOverviewEntity {
  const factory _DashboardOverviewEntity(
          {required final int activeRentalsCount,
          required final double pendingRentalAmount,
          required final double totalAmountCollected}) =
      _$DashboardOverviewEntityImpl;

  @override
  int get activeRentalsCount;
  @override
  double get pendingRentalAmount;
  @override
  double get totalAmountCollected;

  /// Create a copy of DashboardOverviewEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardOverviewEntityImplCopyWith<_$DashboardOverviewEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
