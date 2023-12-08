// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_stay_facility.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoomStayFacility _$RoomStayFacilityFromJson(Map<String, dynamic> json) {
  return _RoomStayFacility.fromJson(json);
}

/// @nodoc
mixin _$RoomStayFacility {
  @HiveField(0)
  int? get facilityCode => throw _privateConstructorUsedError;
  @HiveField(1)
  int? get facilityGroupCode => throw _privateConstructorUsedError;
  @HiveField(2)
  int? get number => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomStayFacilityCopyWith<RoomStayFacility> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomStayFacilityCopyWith<$Res> {
  factory $RoomStayFacilityCopyWith(
          RoomStayFacility value, $Res Function(RoomStayFacility) then) =
      _$RoomStayFacilityCopyWithImpl<$Res, RoomStayFacility>;
  @useResult
  $Res call(
      {@HiveField(0) int? facilityCode,
      @HiveField(1) int? facilityGroupCode,
      @HiveField(2) int? number});
}

/// @nodoc
class _$RoomStayFacilityCopyWithImpl<$Res, $Val extends RoomStayFacility>
    implements $RoomStayFacilityCopyWith<$Res> {
  _$RoomStayFacilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? facilityCode = freezed,
    Object? facilityGroupCode = freezed,
    Object? number = freezed,
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
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomStayFacilityImplCopyWith<$Res>
    implements $RoomStayFacilityCopyWith<$Res> {
  factory _$$RoomStayFacilityImplCopyWith(_$RoomStayFacilityImpl value,
          $Res Function(_$RoomStayFacilityImpl) then) =
      __$$RoomStayFacilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? facilityCode,
      @HiveField(1) int? facilityGroupCode,
      @HiveField(2) int? number});
}

/// @nodoc
class __$$RoomStayFacilityImplCopyWithImpl<$Res>
    extends _$RoomStayFacilityCopyWithImpl<$Res, _$RoomStayFacilityImpl>
    implements _$$RoomStayFacilityImplCopyWith<$Res> {
  __$$RoomStayFacilityImplCopyWithImpl(_$RoomStayFacilityImpl _value,
      $Res Function(_$RoomStayFacilityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? facilityCode = freezed,
    Object? facilityGroupCode = freezed,
    Object? number = freezed,
  }) {
    return _then(_$RoomStayFacilityImpl(
      facilityCode: freezed == facilityCode
          ? _value.facilityCode
          : facilityCode // ignore: cast_nullable_to_non_nullable
              as int?,
      facilityGroupCode: freezed == facilityGroupCode
          ? _value.facilityGroupCode
          : facilityGroupCode // ignore: cast_nullable_to_non_nullable
              as int?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomStayFacilityImpl implements _RoomStayFacility {
  _$RoomStayFacilityImpl(
      {@HiveField(0) this.facilityCode,
      @HiveField(1) this.facilityGroupCode,
      @HiveField(2) this.number});

  factory _$RoomStayFacilityImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomStayFacilityImplFromJson(json);

  @override
  @HiveField(0)
  final int? facilityCode;
  @override
  @HiveField(1)
  final int? facilityGroupCode;
  @override
  @HiveField(2)
  final int? number;

  @override
  String toString() {
    return 'RoomStayFacility(facilityCode: $facilityCode, facilityGroupCode: $facilityGroupCode, number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomStayFacilityImpl &&
            (identical(other.facilityCode, facilityCode) ||
                other.facilityCode == facilityCode) &&
            (identical(other.facilityGroupCode, facilityGroupCode) ||
                other.facilityGroupCode == facilityGroupCode) &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, facilityCode, facilityGroupCode, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomStayFacilityImplCopyWith<_$RoomStayFacilityImpl> get copyWith =>
      __$$RoomStayFacilityImplCopyWithImpl<_$RoomStayFacilityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomStayFacilityImplToJson(
      this,
    );
  }
}

abstract class _RoomStayFacility implements RoomStayFacility {
  factory _RoomStayFacility(
      {@HiveField(0) final int? facilityCode,
      @HiveField(1) final int? facilityGroupCode,
      @HiveField(2) final int? number}) = _$RoomStayFacilityImpl;

  factory _RoomStayFacility.fromJson(Map<String, dynamic> json) =
      _$RoomStayFacilityImpl.fromJson;

  @override
  @HiveField(0)
  int? get facilityCode;
  @override
  @HiveField(1)
  int? get facilityGroupCode;
  @override
  @HiveField(2)
  int? get number;
  @override
  @JsonKey(ignore: true)
  _$$RoomStayFacilityImplCopyWith<_$RoomStayFacilityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
