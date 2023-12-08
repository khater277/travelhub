// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RateHotel _$RateHotelFromJson(Map<String, dynamic> json) {
  return _RateHotel.fromJson(json);
}

/// @nodoc
mixin _$RateHotel {
  @HiveField(0)
  String? get checkOut => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get checkIn => throw _privateConstructorUsedError;
  @HiveField(2)
  int? get code => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get categoryCode => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get categoryName => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get destinationCode => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get destinationName => throw _privateConstructorUsedError;
  @HiveField(8)
  int? get zoneCode => throw _privateConstructorUsedError;
  @HiveField(9)
  String? get zoneName => throw _privateConstructorUsedError;
  @HiveField(10)
  String? get latitude => throw _privateConstructorUsedError;
  @HiveField(11)
  String? get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'rooms')
  @HiveField(12)
  List<RateRoom>? get rateRooms => throw _privateConstructorUsedError;
  @HiveField(13)
  String? get totalNet => throw _privateConstructorUsedError;
  @HiveField(14)
  String? get currency => throw _privateConstructorUsedError;
  @HiveField(15)
  bool? get paymentDataRequired => throw _privateConstructorUsedError;
  @HiveField(16)
  ModificationPolicies? get modificationPolicies =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RateHotelCopyWith<RateHotel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateHotelCopyWith<$Res> {
  factory $RateHotelCopyWith(RateHotel value, $Res Function(RateHotel) then) =
      _$RateHotelCopyWithImpl<$Res, RateHotel>;
  @useResult
  $Res call(
      {@HiveField(0) String? checkOut,
      @HiveField(1) String? checkIn,
      @HiveField(2) int? code,
      @HiveField(3) String? name,
      @HiveField(4) String? categoryCode,
      @HiveField(5) String? categoryName,
      @HiveField(6) String? destinationCode,
      @HiveField(7) String? destinationName,
      @HiveField(8) int? zoneCode,
      @HiveField(9) String? zoneName,
      @HiveField(10) String? latitude,
      @HiveField(11) String? longitude,
      @JsonKey(name: 'rooms') @HiveField(12) List<RateRoom>? rateRooms,
      @HiveField(13) String? totalNet,
      @HiveField(14) String? currency,
      @HiveField(15) bool? paymentDataRequired,
      @HiveField(16) ModificationPolicies? modificationPolicies});

  $ModificationPoliciesCopyWith<$Res>? get modificationPolicies;
}

/// @nodoc
class _$RateHotelCopyWithImpl<$Res, $Val extends RateHotel>
    implements $RateHotelCopyWith<$Res> {
  _$RateHotelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkOut = freezed,
    Object? checkIn = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? categoryCode = freezed,
    Object? categoryName = freezed,
    Object? destinationCode = freezed,
    Object? destinationName = freezed,
    Object? zoneCode = freezed,
    Object? zoneName = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? rateRooms = freezed,
    Object? totalNet = freezed,
    Object? currency = freezed,
    Object? paymentDataRequired = freezed,
    Object? modificationPolicies = freezed,
  }) {
    return _then(_value.copyWith(
      checkOut: freezed == checkOut
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as String?,
      checkIn: freezed == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryCode: freezed == categoryCode
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationCode: freezed == destinationCode
          ? _value.destinationCode
          : destinationCode // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationName: freezed == destinationName
          ? _value.destinationName
          : destinationName // ignore: cast_nullable_to_non_nullable
              as String?,
      zoneCode: freezed == zoneCode
          ? _value.zoneCode
          : zoneCode // ignore: cast_nullable_to_non_nullable
              as int?,
      zoneName: freezed == zoneName
          ? _value.zoneName
          : zoneName // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      rateRooms: freezed == rateRooms
          ? _value.rateRooms
          : rateRooms // ignore: cast_nullable_to_non_nullable
              as List<RateRoom>?,
      totalNet: freezed == totalNet
          ? _value.totalNet
          : totalNet // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentDataRequired: freezed == paymentDataRequired
          ? _value.paymentDataRequired
          : paymentDataRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
      modificationPolicies: freezed == modificationPolicies
          ? _value.modificationPolicies
          : modificationPolicies // ignore: cast_nullable_to_non_nullable
              as ModificationPolicies?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ModificationPoliciesCopyWith<$Res>? get modificationPolicies {
    if (_value.modificationPolicies == null) {
      return null;
    }

    return $ModificationPoliciesCopyWith<$Res>(_value.modificationPolicies!,
        (value) {
      return _then(_value.copyWith(modificationPolicies: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RateHotelImplCopyWith<$Res>
    implements $RateHotelCopyWith<$Res> {
  factory _$$RateHotelImplCopyWith(
          _$RateHotelImpl value, $Res Function(_$RateHotelImpl) then) =
      __$$RateHotelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? checkOut,
      @HiveField(1) String? checkIn,
      @HiveField(2) int? code,
      @HiveField(3) String? name,
      @HiveField(4) String? categoryCode,
      @HiveField(5) String? categoryName,
      @HiveField(6) String? destinationCode,
      @HiveField(7) String? destinationName,
      @HiveField(8) int? zoneCode,
      @HiveField(9) String? zoneName,
      @HiveField(10) String? latitude,
      @HiveField(11) String? longitude,
      @JsonKey(name: 'rooms') @HiveField(12) List<RateRoom>? rateRooms,
      @HiveField(13) String? totalNet,
      @HiveField(14) String? currency,
      @HiveField(15) bool? paymentDataRequired,
      @HiveField(16) ModificationPolicies? modificationPolicies});

  @override
  $ModificationPoliciesCopyWith<$Res>? get modificationPolicies;
}

/// @nodoc
class __$$RateHotelImplCopyWithImpl<$Res>
    extends _$RateHotelCopyWithImpl<$Res, _$RateHotelImpl>
    implements _$$RateHotelImplCopyWith<$Res> {
  __$$RateHotelImplCopyWithImpl(
      _$RateHotelImpl _value, $Res Function(_$RateHotelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkOut = freezed,
    Object? checkIn = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? categoryCode = freezed,
    Object? categoryName = freezed,
    Object? destinationCode = freezed,
    Object? destinationName = freezed,
    Object? zoneCode = freezed,
    Object? zoneName = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? rateRooms = freezed,
    Object? totalNet = freezed,
    Object? currency = freezed,
    Object? paymentDataRequired = freezed,
    Object? modificationPolicies = freezed,
  }) {
    return _then(_$RateHotelImpl(
      checkOut: freezed == checkOut
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as String?,
      checkIn: freezed == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryCode: freezed == categoryCode
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationCode: freezed == destinationCode
          ? _value.destinationCode
          : destinationCode // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationName: freezed == destinationName
          ? _value.destinationName
          : destinationName // ignore: cast_nullable_to_non_nullable
              as String?,
      zoneCode: freezed == zoneCode
          ? _value.zoneCode
          : zoneCode // ignore: cast_nullable_to_non_nullable
              as int?,
      zoneName: freezed == zoneName
          ? _value.zoneName
          : zoneName // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      rateRooms: freezed == rateRooms
          ? _value._rateRooms
          : rateRooms // ignore: cast_nullable_to_non_nullable
              as List<RateRoom>?,
      totalNet: freezed == totalNet
          ? _value.totalNet
          : totalNet // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentDataRequired: freezed == paymentDataRequired
          ? _value.paymentDataRequired
          : paymentDataRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
      modificationPolicies: freezed == modificationPolicies
          ? _value.modificationPolicies
          : modificationPolicies // ignore: cast_nullable_to_non_nullable
              as ModificationPolicies?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RateHotelImpl implements _RateHotel {
  _$RateHotelImpl(
      {@HiveField(0) this.checkOut,
      @HiveField(1) this.checkIn,
      @HiveField(2) this.code,
      @HiveField(3) this.name,
      @HiveField(4) this.categoryCode,
      @HiveField(5) this.categoryName,
      @HiveField(6) this.destinationCode,
      @HiveField(7) this.destinationName,
      @HiveField(8) this.zoneCode,
      @HiveField(9) this.zoneName,
      @HiveField(10) this.latitude,
      @HiveField(11) this.longitude,
      @JsonKey(name: 'rooms') @HiveField(12) final List<RateRoom>? rateRooms,
      @HiveField(13) this.totalNet,
      @HiveField(14) this.currency,
      @HiveField(15) this.paymentDataRequired,
      @HiveField(16) this.modificationPolicies})
      : _rateRooms = rateRooms;

  factory _$RateHotelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RateHotelImplFromJson(json);

  @override
  @HiveField(0)
  final String? checkOut;
  @override
  @HiveField(1)
  final String? checkIn;
  @override
  @HiveField(2)
  final int? code;
  @override
  @HiveField(3)
  final String? name;
  @override
  @HiveField(4)
  final String? categoryCode;
  @override
  @HiveField(5)
  final String? categoryName;
  @override
  @HiveField(6)
  final String? destinationCode;
  @override
  @HiveField(7)
  final String? destinationName;
  @override
  @HiveField(8)
  final int? zoneCode;
  @override
  @HiveField(9)
  final String? zoneName;
  @override
  @HiveField(10)
  final String? latitude;
  @override
  @HiveField(11)
  final String? longitude;
  final List<RateRoom>? _rateRooms;
  @override
  @JsonKey(name: 'rooms')
  @HiveField(12)
  List<RateRoom>? get rateRooms {
    final value = _rateRooms;
    if (value == null) return null;
    if (_rateRooms is EqualUnmodifiableListView) return _rateRooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(13)
  final String? totalNet;
  @override
  @HiveField(14)
  final String? currency;
  @override
  @HiveField(15)
  final bool? paymentDataRequired;
  @override
  @HiveField(16)
  final ModificationPolicies? modificationPolicies;

  @override
  String toString() {
    return 'RateHotel(checkOut: $checkOut, checkIn: $checkIn, code: $code, name: $name, categoryCode: $categoryCode, categoryName: $categoryName, destinationCode: $destinationCode, destinationName: $destinationName, zoneCode: $zoneCode, zoneName: $zoneName, latitude: $latitude, longitude: $longitude, rateRooms: $rateRooms, totalNet: $totalNet, currency: $currency, paymentDataRequired: $paymentDataRequired, modificationPolicies: $modificationPolicies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RateHotelImpl &&
            (identical(other.checkOut, checkOut) ||
                other.checkOut == checkOut) &&
            (identical(other.checkIn, checkIn) || other.checkIn == checkIn) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.categoryCode, categoryCode) ||
                other.categoryCode == categoryCode) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.destinationCode, destinationCode) ||
                other.destinationCode == destinationCode) &&
            (identical(other.destinationName, destinationName) ||
                other.destinationName == destinationName) &&
            (identical(other.zoneCode, zoneCode) ||
                other.zoneCode == zoneCode) &&
            (identical(other.zoneName, zoneName) ||
                other.zoneName == zoneName) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            const DeepCollectionEquality()
                .equals(other._rateRooms, _rateRooms) &&
            (identical(other.totalNet, totalNet) ||
                other.totalNet == totalNet) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.paymentDataRequired, paymentDataRequired) ||
                other.paymentDataRequired == paymentDataRequired) &&
            (identical(other.modificationPolicies, modificationPolicies) ||
                other.modificationPolicies == modificationPolicies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      checkOut,
      checkIn,
      code,
      name,
      categoryCode,
      categoryName,
      destinationCode,
      destinationName,
      zoneCode,
      zoneName,
      latitude,
      longitude,
      const DeepCollectionEquality().hash(_rateRooms),
      totalNet,
      currency,
      paymentDataRequired,
      modificationPolicies);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RateHotelImplCopyWith<_$RateHotelImpl> get copyWith =>
      __$$RateHotelImplCopyWithImpl<_$RateHotelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RateHotelImplToJson(
      this,
    );
  }
}

abstract class _RateHotel implements RateHotel {
  factory _RateHotel(
      {@HiveField(0) final String? checkOut,
      @HiveField(1) final String? checkIn,
      @HiveField(2) final int? code,
      @HiveField(3) final String? name,
      @HiveField(4) final String? categoryCode,
      @HiveField(5) final String? categoryName,
      @HiveField(6) final String? destinationCode,
      @HiveField(7) final String? destinationName,
      @HiveField(8) final int? zoneCode,
      @HiveField(9) final String? zoneName,
      @HiveField(10) final String? latitude,
      @HiveField(11) final String? longitude,
      @JsonKey(name: 'rooms') @HiveField(12) final List<RateRoom>? rateRooms,
      @HiveField(13) final String? totalNet,
      @HiveField(14) final String? currency,
      @HiveField(15) final bool? paymentDataRequired,
      @HiveField(16)
      final ModificationPolicies? modificationPolicies}) = _$RateHotelImpl;

  factory _RateHotel.fromJson(Map<String, dynamic> json) =
      _$RateHotelImpl.fromJson;

  @override
  @HiveField(0)
  String? get checkOut;
  @override
  @HiveField(1)
  String? get checkIn;
  @override
  @HiveField(2)
  int? get code;
  @override
  @HiveField(3)
  String? get name;
  @override
  @HiveField(4)
  String? get categoryCode;
  @override
  @HiveField(5)
  String? get categoryName;
  @override
  @HiveField(6)
  String? get destinationCode;
  @override
  @HiveField(7)
  String? get destinationName;
  @override
  @HiveField(8)
  int? get zoneCode;
  @override
  @HiveField(9)
  String? get zoneName;
  @override
  @HiveField(10)
  String? get latitude;
  @override
  @HiveField(11)
  String? get longitude;
  @override
  @JsonKey(name: 'rooms')
  @HiveField(12)
  List<RateRoom>? get rateRooms;
  @override
  @HiveField(13)
  String? get totalNet;
  @override
  @HiveField(14)
  String? get currency;
  @override
  @HiveField(15)
  bool? get paymentDataRequired;
  @override
  @HiveField(16)
  ModificationPolicies? get modificationPolicies;
  @override
  @JsonKey(ignore: true)
  _$$RateHotelImplCopyWith<_$RateHotelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
