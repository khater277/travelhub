// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'facility.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Facility _$FacilityFromJson(Map<String, dynamic> json) {
  return _Facility.fromJson(json);
}

/// @nodoc
mixin _$Facility {
  @HiveField(0)
  int? get facilityCode => throw _privateConstructorUsedError;
  @HiveField(1)
  int? get facilityGroupCode => throw _privateConstructorUsedError;
  @HiveField(2)
  int? get order => throw _privateConstructorUsedError;
  @HiveField(3)
  bool? get indYesOrNo => throw _privateConstructorUsedError;
  @HiveField(4)
  int? get number => throw _privateConstructorUsedError;
  @HiveField(5)
  bool? get voucher => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FacilityCopyWith<Facility> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacilityCopyWith<$Res> {
  factory $FacilityCopyWith(Facility value, $Res Function(Facility) then) =
      _$FacilityCopyWithImpl<$Res, Facility>;
  @useResult
  $Res call(
      {@HiveField(0) int? facilityCode,
      @HiveField(1) int? facilityGroupCode,
      @HiveField(2) int? order,
      @HiveField(3) bool? indYesOrNo,
      @HiveField(4) int? number,
      @HiveField(5) bool? voucher});
}

/// @nodoc
class _$FacilityCopyWithImpl<$Res, $Val extends Facility>
    implements $FacilityCopyWith<$Res> {
  _$FacilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? facilityCode = freezed,
    Object? facilityGroupCode = freezed,
    Object? order = freezed,
    Object? indYesOrNo = freezed,
    Object? number = freezed,
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
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      indYesOrNo: freezed == indYesOrNo
          ? _value.indYesOrNo
          : indYesOrNo // ignore: cast_nullable_to_non_nullable
              as bool?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      voucher: freezed == voucher
          ? _value.voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FacilityImplCopyWith<$Res>
    implements $FacilityCopyWith<$Res> {
  factory _$$FacilityImplCopyWith(
          _$FacilityImpl value, $Res Function(_$FacilityImpl) then) =
      __$$FacilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? facilityCode,
      @HiveField(1) int? facilityGroupCode,
      @HiveField(2) int? order,
      @HiveField(3) bool? indYesOrNo,
      @HiveField(4) int? number,
      @HiveField(5) bool? voucher});
}

/// @nodoc
class __$$FacilityImplCopyWithImpl<$Res>
    extends _$FacilityCopyWithImpl<$Res, _$FacilityImpl>
    implements _$$FacilityImplCopyWith<$Res> {
  __$$FacilityImplCopyWithImpl(
      _$FacilityImpl _value, $Res Function(_$FacilityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? facilityCode = freezed,
    Object? facilityGroupCode = freezed,
    Object? order = freezed,
    Object? indYesOrNo = freezed,
    Object? number = freezed,
    Object? voucher = freezed,
  }) {
    return _then(_$FacilityImpl(
      facilityCode: freezed == facilityCode
          ? _value.facilityCode
          : facilityCode // ignore: cast_nullable_to_non_nullable
              as int?,
      facilityGroupCode: freezed == facilityGroupCode
          ? _value.facilityGroupCode
          : facilityGroupCode // ignore: cast_nullable_to_non_nullable
              as int?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      indYesOrNo: freezed == indYesOrNo
          ? _value.indYesOrNo
          : indYesOrNo // ignore: cast_nullable_to_non_nullable
              as bool?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      voucher: freezed == voucher
          ? _value.voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FacilityImpl implements _Facility {
  _$FacilityImpl(
      {@HiveField(0) this.facilityCode,
      @HiveField(1) this.facilityGroupCode,
      @HiveField(2) this.order,
      @HiveField(3) this.indYesOrNo,
      @HiveField(4) this.number,
      @HiveField(5) this.voucher});

  factory _$FacilityImpl.fromJson(Map<String, dynamic> json) =>
      _$$FacilityImplFromJson(json);

  @override
  @HiveField(0)
  final int? facilityCode;
  @override
  @HiveField(1)
  final int? facilityGroupCode;
  @override
  @HiveField(2)
  final int? order;
  @override
  @HiveField(3)
  final bool? indYesOrNo;
  @override
  @HiveField(4)
  final int? number;
  @override
  @HiveField(5)
  final bool? voucher;

  @override
  String toString() {
    return 'Facility(facilityCode: $facilityCode, facilityGroupCode: $facilityGroupCode, order: $order, indYesOrNo: $indYesOrNo, number: $number, voucher: $voucher)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FacilityImpl &&
            (identical(other.facilityCode, facilityCode) ||
                other.facilityCode == facilityCode) &&
            (identical(other.facilityGroupCode, facilityGroupCode) ||
                other.facilityGroupCode == facilityGroupCode) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.indYesOrNo, indYesOrNo) ||
                other.indYesOrNo == indYesOrNo) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.voucher, voucher) || other.voucher == voucher));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, facilityCode, facilityGroupCode,
      order, indYesOrNo, number, voucher);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FacilityImplCopyWith<_$FacilityImpl> get copyWith =>
      __$$FacilityImplCopyWithImpl<_$FacilityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FacilityImplToJson(
      this,
    );
  }
}

abstract class _Facility implements Facility {
  factory _Facility(
      {@HiveField(0) final int? facilityCode,
      @HiveField(1) final int? facilityGroupCode,
      @HiveField(2) final int? order,
      @HiveField(3) final bool? indYesOrNo,
      @HiveField(4) final int? number,
      @HiveField(5) final bool? voucher}) = _$FacilityImpl;

  factory _Facility.fromJson(Map<String, dynamic> json) =
      _$FacilityImpl.fromJson;

  @override
  @HiveField(0)
  int? get facilityCode;
  @override
  @HiveField(1)
  int? get facilityGroupCode;
  @override
  @HiveField(2)
  int? get order;
  @override
  @HiveField(3)
  bool? get indYesOrNo;
  @override
  @HiveField(4)
  int? get number;
  @override
  @HiveField(5)
  bool? get voucher;
  @override
  @JsonKey(ignore: true)
  _$$FacilityImplCopyWith<_$FacilityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
