// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_availability_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CheckAvailabilityResponse _$CheckAvailabilityResponseFromJson(
    Map<String, dynamic> json) {
  return _CheckAvailabilityResponse.fromJson(json);
}

/// @nodoc
mixin _$CheckAvailabilityResponse {
  @HiveField(0)
  AuditData? get auditData => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotels')
  @HiveField(1)
  AvailableHotels? get availableHotels => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckAvailabilityResponseCopyWith<CheckAvailabilityResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckAvailabilityResponseCopyWith<$Res> {
  factory $CheckAvailabilityResponseCopyWith(CheckAvailabilityResponse value,
          $Res Function(CheckAvailabilityResponse) then) =
      _$CheckAvailabilityResponseCopyWithImpl<$Res, CheckAvailabilityResponse>;
  @useResult
  $Res call(
      {@HiveField(0) AuditData? auditData,
      @JsonKey(name: 'hotels') @HiveField(1) AvailableHotels? availableHotels});

  $AuditDataCopyWith<$Res>? get auditData;
  $AvailableHotelsCopyWith<$Res>? get availableHotels;
}

/// @nodoc
class _$CheckAvailabilityResponseCopyWithImpl<$Res,
        $Val extends CheckAvailabilityResponse>
    implements $CheckAvailabilityResponseCopyWith<$Res> {
  _$CheckAvailabilityResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auditData = freezed,
    Object? availableHotels = freezed,
  }) {
    return _then(_value.copyWith(
      auditData: freezed == auditData
          ? _value.auditData
          : auditData // ignore: cast_nullable_to_non_nullable
              as AuditData?,
      availableHotels: freezed == availableHotels
          ? _value.availableHotels
          : availableHotels // ignore: cast_nullable_to_non_nullable
              as AvailableHotels?,
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
  $AvailableHotelsCopyWith<$Res>? get availableHotels {
    if (_value.availableHotels == null) {
      return null;
    }

    return $AvailableHotelsCopyWith<$Res>(_value.availableHotels!, (value) {
      return _then(_value.copyWith(availableHotels: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CheckAvailabilityResponseImplCopyWith<$Res>
    implements $CheckAvailabilityResponseCopyWith<$Res> {
  factory _$$CheckAvailabilityResponseImplCopyWith(
          _$CheckAvailabilityResponseImpl value,
          $Res Function(_$CheckAvailabilityResponseImpl) then) =
      __$$CheckAvailabilityResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) AuditData? auditData,
      @JsonKey(name: 'hotels') @HiveField(1) AvailableHotels? availableHotels});

  @override
  $AuditDataCopyWith<$Res>? get auditData;
  @override
  $AvailableHotelsCopyWith<$Res>? get availableHotels;
}

/// @nodoc
class __$$CheckAvailabilityResponseImplCopyWithImpl<$Res>
    extends _$CheckAvailabilityResponseCopyWithImpl<$Res,
        _$CheckAvailabilityResponseImpl>
    implements _$$CheckAvailabilityResponseImplCopyWith<$Res> {
  __$$CheckAvailabilityResponseImplCopyWithImpl(
      _$CheckAvailabilityResponseImpl _value,
      $Res Function(_$CheckAvailabilityResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auditData = freezed,
    Object? availableHotels = freezed,
  }) {
    return _then(_$CheckAvailabilityResponseImpl(
      auditData: freezed == auditData
          ? _value.auditData
          : auditData // ignore: cast_nullable_to_non_nullable
              as AuditData?,
      availableHotels: freezed == availableHotels
          ? _value.availableHotels
          : availableHotels // ignore: cast_nullable_to_non_nullable
              as AvailableHotels?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckAvailabilityResponseImpl implements _CheckAvailabilityResponse {
  _$CheckAvailabilityResponseImpl(
      {@HiveField(0) this.auditData,
      @JsonKey(name: 'hotels') @HiveField(1) this.availableHotels});

  factory _$CheckAvailabilityResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckAvailabilityResponseImplFromJson(json);

  @override
  @HiveField(0)
  final AuditData? auditData;
  @override
  @JsonKey(name: 'hotels')
  @HiveField(1)
  final AvailableHotels? availableHotels;

  @override
  String toString() {
    return 'CheckAvailabilityResponse(auditData: $auditData, availableHotels: $availableHotels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckAvailabilityResponseImpl &&
            (identical(other.auditData, auditData) ||
                other.auditData == auditData) &&
            (identical(other.availableHotels, availableHotels) ||
                other.availableHotels == availableHotels));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, auditData, availableHotels);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckAvailabilityResponseImplCopyWith<_$CheckAvailabilityResponseImpl>
      get copyWith => __$$CheckAvailabilityResponseImplCopyWithImpl<
          _$CheckAvailabilityResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckAvailabilityResponseImplToJson(
      this,
    );
  }
}

abstract class _CheckAvailabilityResponse implements CheckAvailabilityResponse {
  factory _CheckAvailabilityResponse(
          {@HiveField(0) final AuditData? auditData,
          @JsonKey(name: 'hotels')
          @HiveField(1)
          final AvailableHotels? availableHotels}) =
      _$CheckAvailabilityResponseImpl;

  factory _CheckAvailabilityResponse.fromJson(Map<String, dynamic> json) =
      _$CheckAvailabilityResponseImpl.fromJson;

  @override
  @HiveField(0)
  AuditData? get auditData;
  @override
  @JsonKey(name: 'hotels')
  @HiveField(1)
  AvailableHotels? get availableHotels;
  @override
  @JsonKey(ignore: true)
  _$$CheckAvailabilityResponseImplCopyWith<_$CheckAvailabilityResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
