// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_availability_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CheckAvailabilityBody _$CheckAvailabilityBodyFromJson(
    Map<String, dynamic> json) {
  return _CheckAvailabilityBody.fromJson(json);
}

/// @nodoc
mixin _$CheckAvailabilityBody {
  Stay? get stay => throw _privateConstructorUsedError;
  List<Occupancy>? get occupancies => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotels')
  Hotels? get availabilityBodyHotels => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckAvailabilityBodyCopyWith<CheckAvailabilityBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckAvailabilityBodyCopyWith<$Res> {
  factory $CheckAvailabilityBodyCopyWith(CheckAvailabilityBody value,
          $Res Function(CheckAvailabilityBody) then) =
      _$CheckAvailabilityBodyCopyWithImpl<$Res, CheckAvailabilityBody>;
  @useResult
  $Res call(
      {Stay? stay,
      List<Occupancy>? occupancies,
      @JsonKey(name: 'hotels') Hotels? availabilityBodyHotels});

  $StayCopyWith<$Res>? get stay;
  $HotelsCopyWith<$Res>? get availabilityBodyHotels;
}

/// @nodoc
class _$CheckAvailabilityBodyCopyWithImpl<$Res,
        $Val extends CheckAvailabilityBody>
    implements $CheckAvailabilityBodyCopyWith<$Res> {
  _$CheckAvailabilityBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stay = freezed,
    Object? occupancies = freezed,
    Object? availabilityBodyHotels = freezed,
  }) {
    return _then(_value.copyWith(
      stay: freezed == stay
          ? _value.stay
          : stay // ignore: cast_nullable_to_non_nullable
              as Stay?,
      occupancies: freezed == occupancies
          ? _value.occupancies
          : occupancies // ignore: cast_nullable_to_non_nullable
              as List<Occupancy>?,
      availabilityBodyHotels: freezed == availabilityBodyHotels
          ? _value.availabilityBodyHotels
          : availabilityBodyHotels // ignore: cast_nullable_to_non_nullable
              as Hotels?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StayCopyWith<$Res>? get stay {
    if (_value.stay == null) {
      return null;
    }

    return $StayCopyWith<$Res>(_value.stay!, (value) {
      return _then(_value.copyWith(stay: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HotelsCopyWith<$Res>? get availabilityBodyHotels {
    if (_value.availabilityBodyHotels == null) {
      return null;
    }

    return $HotelsCopyWith<$Res>(_value.availabilityBodyHotels!, (value) {
      return _then(_value.copyWith(availabilityBodyHotels: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CheckAvailabilityBodyImplCopyWith<$Res>
    implements $CheckAvailabilityBodyCopyWith<$Res> {
  factory _$$CheckAvailabilityBodyImplCopyWith(
          _$CheckAvailabilityBodyImpl value,
          $Res Function(_$CheckAvailabilityBodyImpl) then) =
      __$$CheckAvailabilityBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Stay? stay,
      List<Occupancy>? occupancies,
      @JsonKey(name: 'hotels') Hotels? availabilityBodyHotels});

  @override
  $StayCopyWith<$Res>? get stay;
  @override
  $HotelsCopyWith<$Res>? get availabilityBodyHotels;
}

/// @nodoc
class __$$CheckAvailabilityBodyImplCopyWithImpl<$Res>
    extends _$CheckAvailabilityBodyCopyWithImpl<$Res,
        _$CheckAvailabilityBodyImpl>
    implements _$$CheckAvailabilityBodyImplCopyWith<$Res> {
  __$$CheckAvailabilityBodyImplCopyWithImpl(_$CheckAvailabilityBodyImpl _value,
      $Res Function(_$CheckAvailabilityBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stay = freezed,
    Object? occupancies = freezed,
    Object? availabilityBodyHotels = freezed,
  }) {
    return _then(_$CheckAvailabilityBodyImpl(
      stay: freezed == stay
          ? _value.stay
          : stay // ignore: cast_nullable_to_non_nullable
              as Stay?,
      occupancies: freezed == occupancies
          ? _value._occupancies
          : occupancies // ignore: cast_nullable_to_non_nullable
              as List<Occupancy>?,
      availabilityBodyHotels: freezed == availabilityBodyHotels
          ? _value.availabilityBodyHotels
          : availabilityBodyHotels // ignore: cast_nullable_to_non_nullable
              as Hotels?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckAvailabilityBodyImpl implements _CheckAvailabilityBody {
  _$CheckAvailabilityBodyImpl(
      {this.stay,
      final List<Occupancy>? occupancies,
      @JsonKey(name: 'hotels') this.availabilityBodyHotels})
      : _occupancies = occupancies;

  factory _$CheckAvailabilityBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckAvailabilityBodyImplFromJson(json);

  @override
  final Stay? stay;
  final List<Occupancy>? _occupancies;
  @override
  List<Occupancy>? get occupancies {
    final value = _occupancies;
    if (value == null) return null;
    if (_occupancies is EqualUnmodifiableListView) return _occupancies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'hotels')
  final Hotels? availabilityBodyHotels;

  @override
  String toString() {
    return 'CheckAvailabilityBody(stay: $stay, occupancies: $occupancies, availabilityBodyHotels: $availabilityBodyHotels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckAvailabilityBodyImpl &&
            (identical(other.stay, stay) || other.stay == stay) &&
            const DeepCollectionEquality()
                .equals(other._occupancies, _occupancies) &&
            (identical(other.availabilityBodyHotels, availabilityBodyHotels) ||
                other.availabilityBodyHotels == availabilityBodyHotels));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      stay,
      const DeepCollectionEquality().hash(_occupancies),
      availabilityBodyHotels);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckAvailabilityBodyImplCopyWith<_$CheckAvailabilityBodyImpl>
      get copyWith => __$$CheckAvailabilityBodyImplCopyWithImpl<
          _$CheckAvailabilityBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckAvailabilityBodyImplToJson(
      this,
    );
  }
}

abstract class _CheckAvailabilityBody implements CheckAvailabilityBody {
  factory _CheckAvailabilityBody(
          {final Stay? stay,
          final List<Occupancy>? occupancies,
          @JsonKey(name: 'hotels') final Hotels? availabilityBodyHotels}) =
      _$CheckAvailabilityBodyImpl;

  factory _CheckAvailabilityBody.fromJson(Map<String, dynamic> json) =
      _$CheckAvailabilityBodyImpl.fromJson;

  @override
  Stay? get stay;
  @override
  List<Occupancy>? get occupancies;
  @override
  @JsonKey(name: 'hotels')
  Hotels? get availabilityBodyHotels;
  @override
  @JsonKey(ignore: true)
  _$$CheckAvailabilityBodyImplCopyWith<_$CheckAvailabilityBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
