// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'facility_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FacilityInfo _$FacilityInfoFromJson(Map<String, dynamic> json) {
  return _FacilityInfo.fromJson(json);
}

/// @nodoc
mixin _$FacilityInfo {
  @HiveField(0)
  int? get code => throw _privateConstructorUsedError;
  @HiveField(1)
  int? get facilityGroupCode => throw _privateConstructorUsedError;
  @HiveField(2)
  int? get facilityTypologyCode => throw _privateConstructorUsedError;
  @HiveField(3)
  FacilityDescription? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FacilityInfoCopyWith<FacilityInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacilityInfoCopyWith<$Res> {
  factory $FacilityInfoCopyWith(
          FacilityInfo value, $Res Function(FacilityInfo) then) =
      _$FacilityInfoCopyWithImpl<$Res, FacilityInfo>;
  @useResult
  $Res call(
      {@HiveField(0) int? code,
      @HiveField(1) int? facilityGroupCode,
      @HiveField(2) int? facilityTypologyCode,
      @HiveField(3) FacilityDescription? description});

  $FacilityDescriptionCopyWith<$Res>? get description;
}

/// @nodoc
class _$FacilityInfoCopyWithImpl<$Res, $Val extends FacilityInfo>
    implements $FacilityInfoCopyWith<$Res> {
  _$FacilityInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? facilityGroupCode = freezed,
    Object? facilityTypologyCode = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      facilityGroupCode: freezed == facilityGroupCode
          ? _value.facilityGroupCode
          : facilityGroupCode // ignore: cast_nullable_to_non_nullable
              as int?,
      facilityTypologyCode: freezed == facilityTypologyCode
          ? _value.facilityTypologyCode
          : facilityTypologyCode // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as FacilityDescription?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FacilityDescriptionCopyWith<$Res>? get description {
    if (_value.description == null) {
      return null;
    }

    return $FacilityDescriptionCopyWith<$Res>(_value.description!, (value) {
      return _then(_value.copyWith(description: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FacilityInfoImplCopyWith<$Res>
    implements $FacilityInfoCopyWith<$Res> {
  factory _$$FacilityInfoImplCopyWith(
          _$FacilityInfoImpl value, $Res Function(_$FacilityInfoImpl) then) =
      __$$FacilityInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? code,
      @HiveField(1) int? facilityGroupCode,
      @HiveField(2) int? facilityTypologyCode,
      @HiveField(3) FacilityDescription? description});

  @override
  $FacilityDescriptionCopyWith<$Res>? get description;
}

/// @nodoc
class __$$FacilityInfoImplCopyWithImpl<$Res>
    extends _$FacilityInfoCopyWithImpl<$Res, _$FacilityInfoImpl>
    implements _$$FacilityInfoImplCopyWith<$Res> {
  __$$FacilityInfoImplCopyWithImpl(
      _$FacilityInfoImpl _value, $Res Function(_$FacilityInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? facilityGroupCode = freezed,
    Object? facilityTypologyCode = freezed,
    Object? description = freezed,
  }) {
    return _then(_$FacilityInfoImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      facilityGroupCode: freezed == facilityGroupCode
          ? _value.facilityGroupCode
          : facilityGroupCode // ignore: cast_nullable_to_non_nullable
              as int?,
      facilityTypologyCode: freezed == facilityTypologyCode
          ? _value.facilityTypologyCode
          : facilityTypologyCode // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as FacilityDescription?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FacilityInfoImpl implements _FacilityInfo {
  _$FacilityInfoImpl(
      {@HiveField(0) this.code,
      @HiveField(1) this.facilityGroupCode,
      @HiveField(2) this.facilityTypologyCode,
      @HiveField(3) this.description});

  factory _$FacilityInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FacilityInfoImplFromJson(json);

  @override
  @HiveField(0)
  final int? code;
  @override
  @HiveField(1)
  final int? facilityGroupCode;
  @override
  @HiveField(2)
  final int? facilityTypologyCode;
  @override
  @HiveField(3)
  final FacilityDescription? description;

  @override
  String toString() {
    return 'FacilityInfo(code: $code, facilityGroupCode: $facilityGroupCode, facilityTypologyCode: $facilityTypologyCode, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FacilityInfoImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.facilityGroupCode, facilityGroupCode) ||
                other.facilityGroupCode == facilityGroupCode) &&
            (identical(other.facilityTypologyCode, facilityTypologyCode) ||
                other.facilityTypologyCode == facilityTypologyCode) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, facilityGroupCode, facilityTypologyCode, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FacilityInfoImplCopyWith<_$FacilityInfoImpl> get copyWith =>
      __$$FacilityInfoImplCopyWithImpl<_$FacilityInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FacilityInfoImplToJson(
      this,
    );
  }
}

abstract class _FacilityInfo implements FacilityInfo {
  factory _FacilityInfo(
          {@HiveField(0) final int? code,
          @HiveField(1) final int? facilityGroupCode,
          @HiveField(2) final int? facilityTypologyCode,
          @HiveField(3) final FacilityDescription? description}) =
      _$FacilityInfoImpl;

  factory _FacilityInfo.fromJson(Map<String, dynamic> json) =
      _$FacilityInfoImpl.fromJson;

  @override
  @HiveField(0)
  int? get code;
  @override
  @HiveField(1)
  int? get facilityGroupCode;
  @override
  @HiveField(2)
  int? get facilityTypologyCode;
  @override
  @HiveField(3)
  FacilityDescription? get description;
  @override
  @JsonKey(ignore: true)
  _$$FacilityInfoImplCopyWith<_$FacilityInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
