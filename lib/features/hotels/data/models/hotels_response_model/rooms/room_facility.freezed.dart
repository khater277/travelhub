// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_facility.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoomFacility _$RoomFacilityFromJson(Map<String, dynamic> json) {
  return _RoomFacility.fromJson(json);
}

/// @nodoc
mixin _$RoomFacility {
  @HiveField(0)
  int? get facilityCode => throw _privateConstructorUsedError;
  @HiveField(1)
  int? get facilityGroupCode => throw _privateConstructorUsedError;
  @HiveField(2)
  bool? get indLogic => throw _privateConstructorUsedError;
  @HiveField(3)
  bool? get voucher => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomFacilityCopyWith<RoomFacility> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomFacilityCopyWith<$Res> {
  factory $RoomFacilityCopyWith(
          RoomFacility value, $Res Function(RoomFacility) then) =
      _$RoomFacilityCopyWithImpl<$Res, RoomFacility>;
  @useResult
  $Res call(
      {@HiveField(0) int? facilityCode,
      @HiveField(1) int? facilityGroupCode,
      @HiveField(2) bool? indLogic,
      @HiveField(3) bool? voucher});
}

/// @nodoc
class _$RoomFacilityCopyWithImpl<$Res, $Val extends RoomFacility>
    implements $RoomFacilityCopyWith<$Res> {
  _$RoomFacilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? facilityCode = freezed,
    Object? facilityGroupCode = freezed,
    Object? indLogic = freezed,
    Object? voucher = freezed,
  }) {
    return _then(_value.copyWith(
      facilityCode: freezed == facilityCode
          ? _value.facilityCode
          : facilityCode // ignore: cast_nullable_to_non_nullable
              as int?,
      facilityGroupCode: freezed == facilityGroupCode
          ? _value.facilityGroupCode
          : facilityGroupCode // ignore: cast_nullable_to_non_nullable
              as int?,
      indLogic: freezed == indLogic
          ? _value.indLogic
          : indLogic // ignore: cast_nullable_to_non_nullable
              as bool?,
      voucher: freezed == voucher
          ? _value.voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomFacilityImplCopyWith<$Res>
    implements $RoomFacilityCopyWith<$Res> {
  factory _$$RoomFacilityImplCopyWith(
          _$RoomFacilityImpl value, $Res Function(_$RoomFacilityImpl) then) =
      __$$RoomFacilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? facilityCode,
      @HiveField(1) int? facilityGroupCode,
      @HiveField(2) bool? indLogic,
      @HiveField(3) bool? voucher});
}

/// @nodoc
class __$$RoomFacilityImplCopyWithImpl<$Res>
    extends _$RoomFacilityCopyWithImpl<$Res, _$RoomFacilityImpl>
    implements _$$RoomFacilityImplCopyWith<$Res> {
  __$$RoomFacilityImplCopyWithImpl(
      _$RoomFacilityImpl _value, $Res Function(_$RoomFacilityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? facilityCode = freezed,
    Object? facilityGroupCode = freezed,
    Object? indLogic = freezed,
    Object? voucher = freezed,
  }) {
    return _then(_$RoomFacilityImpl(
      facilityCode: freezed == facilityCode
          ? _value.facilityCode
          : facilityCode // ignore: cast_nullable_to_non_nullable
              as int?,
      facilityGroupCode: freezed == facilityGroupCode
          ? _value.facilityGroupCode
          : facilityGroupCode // ignore: cast_nullable_to_non_nullable
              as int?,
      indLogic: freezed == indLogic
          ? _value.indLogic
          : indLogic // ignore: cast_nullable_to_non_nullable
              as bool?,
      voucher: freezed == voucher
          ? _value.voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomFacilityImpl implements _RoomFacility {
  _$RoomFacilityImpl(
      {@HiveField(0) this.facilityCode,
      @HiveField(1) this.facilityGroupCode,
      @HiveField(2) this.indLogic,
      @HiveField(3) this.voucher});

  factory _$RoomFacilityImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomFacilityImplFromJson(json);

  @override
  @HiveField(0)
  final int? facilityCode;
  @override
  @HiveField(1)
  final int? facilityGroupCode;
  @override
  @HiveField(2)
  final bool? indLogic;
  @override
  @HiveField(3)
  final bool? voucher;

  @override
  String toString() {
    return 'RoomFacility(facilityCode: $facilityCode, facilityGroupCode: $facilityGroupCode, indLogic: $indLogic, voucher: $voucher)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomFacilityImpl &&
            (identical(other.facilityCode, facilityCode) ||
                other.facilityCode == facilityCode) &&
            (identical(other.facilityGroupCode, facilityGroupCode) ||
                other.facilityGroupCode == facilityGroupCode) &&
            (identical(other.indLogic, indLogic) ||
                other.indLogic == indLogic) &&
            (identical(other.voucher, voucher) || other.voucher == voucher));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, facilityCode, facilityGroupCode, indLogic, voucher);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomFacilityImplCopyWith<_$RoomFacilityImpl> get copyWith =>
      __$$RoomFacilityImplCopyWithImpl<_$RoomFacilityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomFacilityImplToJson(
      this,
    );
  }
}

abstract class _RoomFacility implements RoomFacility {
  factory _RoomFacility(
      {@HiveField(0) final int? facilityCode,
      @HiveField(1) final int? facilityGroupCode,
      @HiveField(2) final bool? indLogic,
      @HiveField(3) final bool? voucher}) = _$RoomFacilityImpl;

  factory _RoomFacility.fromJson(Map<String, dynamic> json) =
      _$RoomFacilityImpl.fromJson;

  @override
  @HiveField(0)
  int? get facilityCode;
  @override
  @HiveField(1)
  int? get facilityGroupCode;
  @override
  @HiveField(2)
  bool? get indLogic;
  @override
  @HiveField(3)
  bool? get voucher;
  @override
  @JsonKey(ignore: true)
  _$$RoomFacilityImplCopyWith<_$RoomFacilityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
