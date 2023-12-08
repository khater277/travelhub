// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_booking_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateBookingResponse _$CreateBookingResponseFromJson(
    Map<String, dynamic> json) {
  return _CreateBookingResponse.fromJson(json);
}

/// @nodoc
mixin _$CreateBookingResponse {
  @HiveField(0)
  AuditData? get auditData => throw _privateConstructorUsedError;
  @HiveField(1)
  Booking? get booking => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateBookingResponseCopyWith<CreateBookingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateBookingResponseCopyWith<$Res> {
  factory $CreateBookingResponseCopyWith(CreateBookingResponse value,
          $Res Function(CreateBookingResponse) then) =
      _$CreateBookingResponseCopyWithImpl<$Res, CreateBookingResponse>;
  @useResult
  $Res call(
      {@HiveField(0) AuditData? auditData, @HiveField(1) Booking? booking});

  $AuditDataCopyWith<$Res>? get auditData;
  $BookingCopyWith<$Res>? get booking;
}

/// @nodoc
class _$CreateBookingResponseCopyWithImpl<$Res,
        $Val extends CreateBookingResponse>
    implements $CreateBookingResponseCopyWith<$Res> {
  _$CreateBookingResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auditData = freezed,
    Object? booking = freezed,
  }) {
    return _then(_value.copyWith(
      auditData: freezed == auditData
          ? _value.auditData
          : auditData // ignore: cast_nullable_to_non_nullable
              as AuditData?,
      booking: freezed == booking
          ? _value.booking
          : booking // ignore: cast_nullable_to_non_nullable
              as Booking?,
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
  $BookingCopyWith<$Res>? get booking {
    if (_value.booking == null) {
      return null;
    }

    return $BookingCopyWith<$Res>(_value.booking!, (value) {
      return _then(_value.copyWith(booking: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateBookingResponseImplCopyWith<$Res>
    implements $CreateBookingResponseCopyWith<$Res> {
  factory _$$CreateBookingResponseImplCopyWith(
          _$CreateBookingResponseImpl value,
          $Res Function(_$CreateBookingResponseImpl) then) =
      __$$CreateBookingResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) AuditData? auditData, @HiveField(1) Booking? booking});

  @override
  $AuditDataCopyWith<$Res>? get auditData;
  @override
  $BookingCopyWith<$Res>? get booking;
}

/// @nodoc
class __$$CreateBookingResponseImplCopyWithImpl<$Res>
    extends _$CreateBookingResponseCopyWithImpl<$Res,
        _$CreateBookingResponseImpl>
    implements _$$CreateBookingResponseImplCopyWith<$Res> {
  __$$CreateBookingResponseImplCopyWithImpl(_$CreateBookingResponseImpl _value,
      $Res Function(_$CreateBookingResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auditData = freezed,
    Object? booking = freezed,
  }) {
    return _then(_$CreateBookingResponseImpl(
      auditData: freezed == auditData
          ? _value.auditData
          : auditData // ignore: cast_nullable_to_non_nullable
              as AuditData?,
      booking: freezed == booking
          ? _value.booking
          : booking // ignore: cast_nullable_to_non_nullable
              as Booking?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateBookingResponseImpl implements _CreateBookingResponse {
  _$CreateBookingResponseImpl(
      {@HiveField(0) this.auditData, @HiveField(1) this.booking});

  factory _$CreateBookingResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateBookingResponseImplFromJson(json);

  @override
  @HiveField(0)
  final AuditData? auditData;
  @override
  @HiveField(1)
  final Booking? booking;

  @override
  String toString() {
    return 'CreateBookingResponse(auditData: $auditData, booking: $booking)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBookingResponseImpl &&
            (identical(other.auditData, auditData) ||
                other.auditData == auditData) &&
            (identical(other.booking, booking) || other.booking == booking));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, auditData, booking);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateBookingResponseImplCopyWith<_$CreateBookingResponseImpl>
      get copyWith => __$$CreateBookingResponseImplCopyWithImpl<
          _$CreateBookingResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateBookingResponseImplToJson(
      this,
    );
  }
}

abstract class _CreateBookingResponse implements CreateBookingResponse {
  factory _CreateBookingResponse(
      {@HiveField(0) final AuditData? auditData,
      @HiveField(1) final Booking? booking}) = _$CreateBookingResponseImpl;

  factory _CreateBookingResponse.fromJson(Map<String, dynamic> json) =
      _$CreateBookingResponseImpl.fromJson;

  @override
  @HiveField(0)
  AuditData? get auditData;
  @override
  @HiveField(1)
  Booking? get booking;
  @override
  @JsonKey(ignore: true)
  _$$CreateBookingResponseImplCopyWith<_$CreateBookingResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
