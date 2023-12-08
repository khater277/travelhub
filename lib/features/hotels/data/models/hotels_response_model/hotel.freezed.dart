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

Hotel _$HotelFromJson(Map<String, dynamic> json) {
  return _Hotel.fromJson(json);
}

/// @nodoc
mixin _$Hotel {
  @HiveField(0)
  int? get code => throw _privateConstructorUsedError;
  @HiveField(1)
  Name? get name => throw _privateConstructorUsedError;
  @HiveField(2)
  Description? get description => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get categoryCode => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get countryCode => throw _privateConstructorUsedError;
  @HiveField(5)
  Coordinates? get coordinates => throw _privateConstructorUsedError;
  @HiveField(6)
  Address? get address => throw _privateConstructorUsedError;
  @HiveField(7)
  City? get city => throw _privateConstructorUsedError;
  @HiveField(8)
  String? get email => throw _privateConstructorUsedError;
  @HiveField(9)
  List<Phone>? get phones => throw _privateConstructorUsedError;
  @HiveField(10)
  List<Facility>? get facilities => throw _privateConstructorUsedError;
  @HiveField(11)
  List<Image>? get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelCopyWith<Hotel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelCopyWith<$Res> {
  factory $HotelCopyWith(Hotel value, $Res Function(Hotel) then) =
      _$HotelCopyWithImpl<$Res, Hotel>;
  @useResult
  $Res call(
      {@HiveField(0) int? code,
      @HiveField(1) Name? name,
      @HiveField(2) Description? description,
      @HiveField(3) String? categoryCode,
      @HiveField(4) String? countryCode,
      @HiveField(5) Coordinates? coordinates,
      @HiveField(6) Address? address,
      @HiveField(7) City? city,
      @HiveField(8) String? email,
      @HiveField(9) List<Phone>? phones,
      @HiveField(10) List<Facility>? facilities,
      @HiveField(11) List<Image>? images});

  $NameCopyWith<$Res>? get name;
  $DescriptionCopyWith<$Res>? get description;
  $CoordinatesCopyWith<$Res>? get coordinates;
  $AddressCopyWith<$Res>? get address;
  $CityCopyWith<$Res>? get city;
}

/// @nodoc
class _$HotelCopyWithImpl<$Res, $Val extends Hotel>
    implements $HotelCopyWith<$Res> {
  _$HotelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? categoryCode = freezed,
    Object? countryCode = freezed,
    Object? coordinates = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? email = freezed,
    Object? phones = freezed,
    Object? facilities = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Description?,
      categoryCode: freezed == categoryCode
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinates?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phones: freezed == phones
          ? _value.phones
          : phones // ignore: cast_nullable_to_non_nullable
              as List<Phone>?,
      facilities: freezed == facilities
          ? _value.facilities
          : facilities // ignore: cast_nullable_to_non_nullable
              as List<Facility>?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NameCopyWith<$Res>? get name {
    if (_value.name == null) {
      return null;
    }

    return $NameCopyWith<$Res>(_value.name!, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DescriptionCopyWith<$Res>? get description {
    if (_value.description == null) {
      return null;
    }

    return $DescriptionCopyWith<$Res>(_value.description!, (value) {
      return _then(_value.copyWith(description: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordinatesCopyWith<$Res>? get coordinates {
    if (_value.coordinates == null) {
      return null;
    }

    return $CoordinatesCopyWith<$Res>(_value.coordinates!, (value) {
      return _then(_value.copyWith(coordinates: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res>? get city {
    if (_value.city == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_value.city!, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HotelImplCopyWith<$Res> implements $HotelCopyWith<$Res> {
  factory _$$HotelImplCopyWith(
          _$HotelImpl value, $Res Function(_$HotelImpl) then) =
      __$$HotelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? code,
      @HiveField(1) Name? name,
      @HiveField(2) Description? description,
      @HiveField(3) String? categoryCode,
      @HiveField(4) String? countryCode,
      @HiveField(5) Coordinates? coordinates,
      @HiveField(6) Address? address,
      @HiveField(7) City? city,
      @HiveField(8) String? email,
      @HiveField(9) List<Phone>? phones,
      @HiveField(10) List<Facility>? facilities,
      @HiveField(11) List<Image>? images});

  @override
  $NameCopyWith<$Res>? get name;
  @override
  $DescriptionCopyWith<$Res>? get description;
  @override
  $CoordinatesCopyWith<$Res>? get coordinates;
  @override
  $AddressCopyWith<$Res>? get address;
  @override
  $CityCopyWith<$Res>? get city;
}

/// @nodoc
class __$$HotelImplCopyWithImpl<$Res>
    extends _$HotelCopyWithImpl<$Res, _$HotelImpl>
    implements _$$HotelImplCopyWith<$Res> {
  __$$HotelImplCopyWithImpl(
      _$HotelImpl _value, $Res Function(_$HotelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? categoryCode = freezed,
    Object? countryCode = freezed,
    Object? coordinates = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? email = freezed,
    Object? phones = freezed,
    Object? facilities = freezed,
    Object? images = freezed,
  }) {
    return _then(_$HotelImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Description?,
      categoryCode: freezed == categoryCode
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinates?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phones: freezed == phones
          ? _value._phones
          : phones // ignore: cast_nullable_to_non_nullable
              as List<Phone>?,
      facilities: freezed == facilities
          ? _value._facilities
          : facilities // ignore: cast_nullable_to_non_nullable
              as List<Facility>?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HotelImpl implements _Hotel {
  _$HotelImpl(
      {@HiveField(0) this.code,
      @HiveField(1) this.name,
      @HiveField(2) this.description,
      @HiveField(3) this.categoryCode,
      @HiveField(4) this.countryCode,
      @HiveField(5) this.coordinates,
      @HiveField(6) this.address,
      @HiveField(7) this.city,
      @HiveField(8) this.email,
      @HiveField(9) final List<Phone>? phones,
      @HiveField(10) final List<Facility>? facilities,
      @HiveField(11) final List<Image>? images})
      : _phones = phones,
        _facilities = facilities,
        _images = images;

  factory _$HotelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelImplFromJson(json);

  @override
  @HiveField(0)
  final int? code;
  @override
  @HiveField(1)
  final Name? name;
  @override
  @HiveField(2)
  final Description? description;
  @override
  @HiveField(3)
  final String? categoryCode;
  @override
  @HiveField(4)
  final String? countryCode;
  @override
  @HiveField(5)
  final Coordinates? coordinates;
  @override
  @HiveField(6)
  final Address? address;
  @override
  @HiveField(7)
  final City? city;
  @override
  @HiveField(8)
  final String? email;
  final List<Phone>? _phones;
  @override
  @HiveField(9)
  List<Phone>? get phones {
    final value = _phones;
    if (value == null) return null;
    if (_phones is EqualUnmodifiableListView) return _phones;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Facility>? _facilities;
  @override
  @HiveField(10)
  List<Facility>? get facilities {
    final value = _facilities;
    if (value == null) return null;
    if (_facilities is EqualUnmodifiableListView) return _facilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Image>? _images;
  @override
  @HiveField(11)
  List<Image>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Hotel(code: $code, name: $name, description: $description, categoryCode: $categoryCode, countryCode: $countryCode, coordinates: $coordinates, address: $address, city: $city, email: $email, phones: $phones, facilities: $facilities, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.categoryCode, categoryCode) ||
                other.categoryCode == categoryCode) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality().equals(other._phones, _phones) &&
            const DeepCollectionEquality()
                .equals(other._facilities, _facilities) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      name,
      description,
      categoryCode,
      countryCode,
      coordinates,
      address,
      city,
      email,
      const DeepCollectionEquality().hash(_phones),
      const DeepCollectionEquality().hash(_facilities),
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelImplCopyWith<_$HotelImpl> get copyWith =>
      __$$HotelImplCopyWithImpl<_$HotelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelImplToJson(
      this,
    );
  }
}

abstract class _Hotel implements Hotel {
  factory _Hotel(
      {@HiveField(0) final int? code,
      @HiveField(1) final Name? name,
      @HiveField(2) final Description? description,
      @HiveField(3) final String? categoryCode,
      @HiveField(4) final String? countryCode,
      @HiveField(5) final Coordinates? coordinates,
      @HiveField(6) final Address? address,
      @HiveField(7) final City? city,
      @HiveField(8) final String? email,
      @HiveField(9) final List<Phone>? phones,
      @HiveField(10) final List<Facility>? facilities,
      @HiveField(11) final List<Image>? images}) = _$HotelImpl;

  factory _Hotel.fromJson(Map<String, dynamic> json) = _$HotelImpl.fromJson;

  @override
  @HiveField(0)
  int? get code;
  @override
  @HiveField(1)
  Name? get name;
  @override
  @HiveField(2)
  Description? get description;
  @override
  @HiveField(3)
  String? get categoryCode;
  @override
  @HiveField(4)
  String? get countryCode;
  @override
  @HiveField(5)
  Coordinates? get coordinates;
  @override
  @HiveField(6)
  Address? get address;
  @override
  @HiveField(7)
  City? get city;
  @override
  @HiveField(8)
  String? get email;
  @override
  @HiveField(9)
  List<Phone>? get phones;
  @override
  @HiveField(10)
  List<Facility>? get facilities;
  @override
  @HiveField(11)
  List<Image>? get images;
  @override
  @JsonKey(ignore: true)
  _$$HotelImplCopyWith<_$HotelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
