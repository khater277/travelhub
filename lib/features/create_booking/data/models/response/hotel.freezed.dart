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

AvailableHotel _$AvailableHotelFromJson(Map<String, dynamic> json) {
  return _AvailableHotel.fromJson(json);
}

/// @nodoc
mixin _$AvailableHotel {
  @HiveField(0)
  int? get code => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get categoryCode => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get categoryName => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get destinationCode => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get destinationName => throw _privateConstructorUsedError;
  @HiveField(6)
  int? get zoneCode => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get zoneName => throw _privateConstructorUsedError;
  @HiveField(8)
  String? get latitude => throw _privateConstructorUsedError;
  @HiveField(9)
  String? get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'rooms')
  @HiveField(10)
  List<AvailableRoom>? get availableRooms => throw _privateConstructorUsedError;
  @HiveField(11)
  String? get minRate => throw _privateConstructorUsedError;
  @HiveField(12)
  String? get maxRate => throw _privateConstructorUsedError;
  @HiveField(13)
  String? get currency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailableHotelCopyWith<AvailableHotel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableHotelCopyWith<$Res> {
  factory $AvailableHotelCopyWith(
          AvailableHotel value, $Res Function(AvailableHotel) then) =
      _$AvailableHotelCopyWithImpl<$Res, AvailableHotel>;
  @useResult
  $Res call(
      {@HiveField(0) int? code,
      @HiveField(1) String? name,
      @HiveField(2) String? categoryCode,
      @HiveField(3) String? categoryName,
      @HiveField(4) String? destinationCode,
      @HiveField(5) String? destinationName,
      @HiveField(6) int? zoneCode,
      @HiveField(7) String? zoneName,
      @HiveField(8) String? latitude,
      @HiveField(9) String? longitude,
      @JsonKey(name: 'rooms')
      @HiveField(10)
      List<AvailableRoom>? availableRooms,
      @HiveField(11) String? minRate,
      @HiveField(12) String? maxRate,
      @HiveField(13) String? currency});
}

/// @nodoc
class _$AvailableHotelCopyWithImpl<$Res, $Val extends AvailableHotel>
    implements $AvailableHotelCopyWith<$Res> {
  _$AvailableHotelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
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
    Object? availableRooms = freezed,
    Object? minRate = freezed,
    Object? maxRate = freezed,
    Object? currency = freezed,
  }) {
    return _then(_value.copyWith(
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
      availableRooms: freezed == availableRooms
          ? _value.availableRooms
          : availableRooms // ignore: cast_nullable_to_non_nullable
              as List<AvailableRoom>?,
      minRate: freezed == minRate
          ? _value.minRate
          : minRate // ignore: cast_nullable_to_non_nullable
              as String?,
      maxRate: freezed == maxRate
          ? _value.maxRate
          : maxRate // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvailableHotelImplCopyWith<$Res>
    implements $AvailableHotelCopyWith<$Res> {
  factory _$$AvailableHotelImplCopyWith(_$AvailableHotelImpl value,
          $Res Function(_$AvailableHotelImpl) then) =
      __$$AvailableHotelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? code,
      @HiveField(1) String? name,
      @HiveField(2) String? categoryCode,
      @HiveField(3) String? categoryName,
      @HiveField(4) String? destinationCode,
      @HiveField(5) String? destinationName,
      @HiveField(6) int? zoneCode,
      @HiveField(7) String? zoneName,
      @HiveField(8) String? latitude,
      @HiveField(9) String? longitude,
      @JsonKey(name: 'rooms')
      @HiveField(10)
      List<AvailableRoom>? availableRooms,
      @HiveField(11) String? minRate,
      @HiveField(12) String? maxRate,
      @HiveField(13) String? currency});
}

/// @nodoc
class __$$AvailableHotelImplCopyWithImpl<$Res>
    extends _$AvailableHotelCopyWithImpl<$Res, _$AvailableHotelImpl>
    implements _$$AvailableHotelImplCopyWith<$Res> {
  __$$AvailableHotelImplCopyWithImpl(
      _$AvailableHotelImpl _value, $Res Function(_$AvailableHotelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
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
    Object? availableRooms = freezed,
    Object? minRate = freezed,
    Object? maxRate = freezed,
    Object? currency = freezed,
  }) {
    return _then(_$AvailableHotelImpl(
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
      availableRooms: freezed == availableRooms
          ? _value._availableRooms
          : availableRooms // ignore: cast_nullable_to_non_nullable
              as List<AvailableRoom>?,
      minRate: freezed == minRate
          ? _value.minRate
          : minRate // ignore: cast_nullable_to_non_nullable
              as String?,
      maxRate: freezed == maxRate
          ? _value.maxRate
          : maxRate // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailableHotelImpl implements _AvailableHotel {
  _$AvailableHotelImpl(
      {@HiveField(0) this.code,
      @HiveField(1) this.name,
      @HiveField(2) this.categoryCode,
      @HiveField(3) this.categoryName,
      @HiveField(4) this.destinationCode,
      @HiveField(5) this.destinationName,
      @HiveField(6) this.zoneCode,
      @HiveField(7) this.zoneName,
      @HiveField(8) this.latitude,
      @HiveField(9) this.longitude,
      @JsonKey(name: 'rooms')
      @HiveField(10)
      final List<AvailableRoom>? availableRooms,
      @HiveField(11) this.minRate,
      @HiveField(12) this.maxRate,
      @HiveField(13) this.currency})
      : _availableRooms = availableRooms;

  factory _$AvailableHotelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailableHotelImplFromJson(json);

  @override
  @HiveField(0)
  final int? code;
  @override
  @HiveField(1)
  final String? name;
  @override
  @HiveField(2)
  final String? categoryCode;
  @override
  @HiveField(3)
  final String? categoryName;
  @override
  @HiveField(4)
  final String? destinationCode;
  @override
  @HiveField(5)
  final String? destinationName;
  @override
  @HiveField(6)
  final int? zoneCode;
  @override
  @HiveField(7)
  final String? zoneName;
  @override
  @HiveField(8)
  final String? latitude;
  @override
  @HiveField(9)
  final String? longitude;
  final List<AvailableRoom>? _availableRooms;
  @override
  @JsonKey(name: 'rooms')
  @HiveField(10)
  List<AvailableRoom>? get availableRooms {
    final value = _availableRooms;
    if (value == null) return null;
    if (_availableRooms is EqualUnmodifiableListView) return _availableRooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(11)
  final String? minRate;
  @override
  @HiveField(12)
  final String? maxRate;
  @override
  @HiveField(13)
  final String? currency;

  @override
  String toString() {
    return 'AvailableHotel(code: $code, name: $name, categoryCode: $categoryCode, categoryName: $categoryName, destinationCode: $destinationCode, destinationName: $destinationName, zoneCode: $zoneCode, zoneName: $zoneName, latitude: $latitude, longitude: $longitude, availableRooms: $availableRooms, minRate: $minRate, maxRate: $maxRate, currency: $currency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailableHotelImpl &&
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
                .equals(other._availableRooms, _availableRooms) &&
            (identical(other.minRate, minRate) || other.minRate == minRate) &&
            (identical(other.maxRate, maxRate) || other.maxRate == maxRate) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
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
      const DeepCollectionEquality().hash(_availableRooms),
      minRate,
      maxRate,
      currency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailableHotelImplCopyWith<_$AvailableHotelImpl> get copyWith =>
      __$$AvailableHotelImplCopyWithImpl<_$AvailableHotelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailableHotelImplToJson(
      this,
    );
  }
}

abstract class _AvailableHotel implements AvailableHotel {
  factory _AvailableHotel(
      {@HiveField(0) final int? code,
      @HiveField(1) final String? name,
      @HiveField(2) final String? categoryCode,
      @HiveField(3) final String? categoryName,
      @HiveField(4) final String? destinationCode,
      @HiveField(5) final String? destinationName,
      @HiveField(6) final int? zoneCode,
      @HiveField(7) final String? zoneName,
      @HiveField(8) final String? latitude,
      @HiveField(9) final String? longitude,
      @JsonKey(name: 'rooms')
      @HiveField(10)
      final List<AvailableRoom>? availableRooms,
      @HiveField(11) final String? minRate,
      @HiveField(12) final String? maxRate,
      @HiveField(13) final String? currency}) = _$AvailableHotelImpl;

  factory _AvailableHotel.fromJson(Map<String, dynamic> json) =
      _$AvailableHotelImpl.fromJson;

  @override
  @HiveField(0)
  int? get code;
  @override
  @HiveField(1)
  String? get name;
  @override
  @HiveField(2)
  String? get categoryCode;
  @override
  @HiveField(3)
  String? get categoryName;
  @override
  @HiveField(4)
  String? get destinationCode;
  @override
  @HiveField(5)
  String? get destinationName;
  @override
  @HiveField(6)
  int? get zoneCode;
  @override
  @HiveField(7)
  String? get zoneName;
  @override
  @HiveField(8)
  String? get latitude;
  @override
  @HiveField(9)
  String? get longitude;
  @override
  @JsonKey(name: 'rooms')
  @HiveField(10)
  List<AvailableRoom>? get availableRooms;
  @override
  @HiveField(11)
  String? get minRate;
  @override
  @HiveField(12)
  String? get maxRate;
  @override
  @HiveField(13)
  String? get currency;
  @override
  @JsonKey(ignore: true)
  _$$AvailableHotelImplCopyWith<_$AvailableHotelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
