// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_rate_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CheckRateResponse _$CheckRateResponseFromJson(Map<String, dynamic> json) {
  return _CheckRateResponse.fromJson(json);
}

/// @nodoc
mixin _$CheckRateResponse {
  @HiveField(0)
  AuditData? get auditData => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotel')
  @HiveField(1)
  RateHotel? get rateHotel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckRateResponseCopyWith<CheckRateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckRateResponseCopyWith<$Res> {
  factory $CheckRateResponseCopyWith(
          CheckRateResponse value, $Res Function(CheckRateResponse) then) =
      _$CheckRateResponseCopyWithImpl<$Res, CheckRateResponse>;
  @useResult
  $Res call(
      {@HiveField(0) AuditData? auditData,
      @JsonKey(name: 'hotel') @HiveField(1) RateHotel? rateHotel});

  $AuditDataCopyWith<$Res>? get auditData;
  $RateHotelCopyWith<$Res>? get rateHotel;
}

/// @nodoc
class _$CheckRateResponseCopyWithImpl<$Res, $Val extends CheckRateResponse>
    implements $CheckRateResponseCopyWith<$Res> {
  _$CheckRateResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auditData = freezed,
    Object? rateHotel = freezed,
  }) {
    return _then(_value.copyWith(
      auditData: freezed == auditData
          ? _value.auditData
          : auditData // ignore: cast_nullable_to_non_nullable
              as AuditData?,
      rateHotel: freezed == rateHotel
          ? _value.rateHotel
          : rateHotel // ignore: cast_nullable_to_non_nullable
              as RateHotel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuditDataCopyWith<$Res>? get auditData {
    if (_value.auditData == null) {
      return null;
    }

    return $AuditDataCopyWith<$Res>(_value.auditData!, (value) {
      return _then(_value.copyWith(auditData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RateHotelCopyWith<$Res>? get rateHotel {
    if (_value.rateHotel == null) {
      return null;
    }

    return $RateHotelCopyWith<$Res>(_value.rateHotel!, (value) {
      return _then(_value.copyWith(rateHotel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CheckRateResponseImplCopyWith<$Res>
    implements $CheckRateResponseCopyWith<$Res> {
  factory _$$CheckRateResponseImplCopyWith(_$CheckRateResponseImpl value,
          $Res Function(_$CheckRateResponseImpl) then) =
      __$$CheckRateResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) AuditData? auditData,
      @JsonKey(name: 'hotel') @HiveField(1) RateHotel? rateHotel});

  @override
  $AuditDataCopyWith<$Res>? get auditData;
  @override
  $RateHotelCopyWith<$Res>? get rateHotel;
}

/// @nodoc
class __$$CheckRateResponseImplCopyWithImpl<$Res>
    extends _$CheckRateResponseCopyWithImpl<$Res, _$CheckRateResponseImpl>
    implements _$$CheckRateResponseImplCopyWith<$Res> {
  __$$CheckRateResponseImplCopyWithImpl(_$CheckRateResponseImpl _value,
      $Res Function(_$CheckRateResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auditData = freezed,
    Object? rateHotel = freezed,
  }) {
    return _then(_$CheckRateResponseImpl(
      auditData: freezed == auditData
          ? _value.auditData
          : auditData // ignore: cast_nullable_to_non_nullable
              as AuditData?,
      rateHotel: freezed == rateHotel
          ? _value.rateHotel
          : rateHotel // ignore: cast_nullable_to_non_nullable
              as RateHotel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckRateResponseImpl implements _CheckRateResponse {
  _$CheckRateResponseImpl(
      {@HiveField(0) this.auditData,
      @JsonKey(name: 'hotel') @HiveField(1) this.rateHotel});

  factory _$CheckRateResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckRateResponseImplFromJson(json);

  @override
  @HiveField(0)
  final AuditData? auditData;
  @override
  @JsonKey(name: 'hotel')
  @HiveField(1)
  final RateHotel? rateHotel;

  @override
  String toString() {
    return 'CheckRateResponse(auditData: $auditData, rateHotel: $rateHotel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckRateResponseImpl &&
            (identical(other.auditData, auditData) ||
                other.auditData == auditData) &&
            (identical(other.rateHotel, rateHotel) ||
                other.rateHotel == rateHotel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, auditData, rateHotel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckRateResponseImplCopyWith<_$CheckRateResponseImpl> get copyWith =>
      __$$CheckRateResponseImplCopyWithImpl<_$CheckRateResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckRateResponseImplToJson(
      this,
    );
  }
}

abstract class _CheckRateResponse implements CheckRateResponse {
  factory _CheckRateResponse(
          {@HiveField(0) final AuditData? auditData,
          @JsonKey(name: 'hotel') @HiveField(1) final RateHotel? rateHotel}) =
      _$CheckRateResponseImpl;

  factory _CheckRateResponse.fromJson(Map<String, dynamic> json) =
      _$CheckRateResponseImpl.fromJson;

  @override
  @HiveField(0)
  AuditData? get auditData;
  @override
  @JsonKey(name: 'hotel')
  @HiveField(1)
  RateHotel? get rateHotel;
  @override
  @JsonKey(ignore: true)
  _$$CheckRateResponseImplCopyWith<_$CheckRateResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
